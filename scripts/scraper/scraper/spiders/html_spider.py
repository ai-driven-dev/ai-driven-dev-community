"""
This file contains the HtmlSpiderSpider class, which is a spider for scraping HTML content from a website and saving it as HTML or Markdown files.
"""

import scrapy
from scrapy.http import Request, Response
from scrapy.linkextractors import LinkExtractor
from scrapy.spiders import Rule
from urllib.parse import urlparse, urljoin
from typing import List, Optional, Generator
import os
import html2text

class HtmlSpiderSpider(scrapy.Spider):
    """
    Spider for scraping HTML content from a website and saving it as HTML or Markdown files.
    """

    name: str = "html_spider"
    handle_httpstatus_list: List[int] = [301, 302]

    def __init__(self, domain: str = None, path: Optional[str] = None, useMarkdown: bool = False, *args, **kwargs):
        """
        Initialize the spider.

        Args:
            domain (str): The domain of the website to scrape.
            path (str): The path within the website to scrape. Only URLs starting with this path will be processed.
            useMarkdown (bool): Whether to convert the scraped HTML content to Markdown.

        """
        super(HtmlSpiderSpider, self).__init__(*args, **kwargs)
        self.allowed_domains: List[str] = [domain]
        self.start_urls: List[str] = [f"https://{domain}"]
        self.rules: Rule = (
            Rule(LinkExtractor(allow_domains=[domain]), callback='parse_item'),
        )
        self.path: Optional[str] = path
        self.useMarkdown: bool = useMarkdown

    def process_response(self, request: Request, response: Response) -> Response:
        """
        Process the response received from a request.

        If the response status is in the handled list and the location's domain is not allowed, 
        returns a new response with status 200 and an empty body. 
        Otherwise, returns the original response.

        Args:
            request (Request): The request object.
            response (Response): The response object.
        """
        if response.status in self.handle_httpstatus_list:
            location = response.headers.get('location')
            if location:
                location = urljoin(request.url, location)
                domain = urlparse(location).netloc
                if domain not in self.allowed_domains:
                    return Response(url=request.url, status=200, body=b'')
        return response

    @staticmethod
    def html_to_markdown(html_content: str) -> str:
        """
        Convert HTML content to Markdown.

        Args:
            html_content (str): The HTML content to convert.

        Returns:
            str: The converted Markdown content.

        """
        # Convert HTML to Markdown
        markdown_converter = html2text.HTML2Text()
        markdown_converter.ignore_links = False  # Set to True to ignore converting links
        markdown_converter.ignore_images = True  # Set to True to ignore images in the conversion
        markdown: str = markdown_converter.handle(html_content)
        
        return markdown
    
    def parse(self, response: Response) -> Generator[Request, None, None]:
        """
        Parse the response received from a request.

        Args:
            response (Response): The response object.

        """
        # Save the response as HTML file if it's not empty and not a PDF
        if response.body.strip() and not response.url.endswith('.pdf'):
            parsed_uri = urlparse(response.url)
            domain: str = '{uri.netloc}'.format(uri=parsed_uri)
            originalPath: str = '{uri.path}'.format(uri=parsed_uri)
            path: str = originalPath
            if originalPath == '':
                path = 'index.html'
            else:
                path = path.strip('/') + '/index.html'
            
            # Check if the path starts with the specified path
            if self.path is None or path.startswith(self.path):
                filename: str = f'websites/{domain}/{path}'
                self.log(f'Processing {response.url} to {filename}')
                
                # Ensure the directory exists
                os.makedirs(os.path.dirname(filename), exist_ok=True)
                
                with open(filename, 'wb') as f:
                    f.write(response.body)
                    self.log(f'Saved file {filename}')

                if self.useMarkdown:
                    # Convert the HTML content to Markdown
                    markdown_content: str = self.html_to_markdown(response.text)
                    with open(f'websites/{domain}/{originalPath}.md', 'a') as f:
                        f.write(markdown_content + '\n')

        # Follow all links that are HTML pages and not PDFs
        for href in response.css('a::attr(href)').getall():
            # Convert relative URLs to absolute URLs
            absolute_url: str = urljoin(response.url, href)
            href_parsed_uri = urlparse(absolute_url)
            href_domain: str = '{uri.netloc}'.format(uri=href_parsed_uri)
            if href_domain in self.allowed_domains and not absolute_url.endswith('.pdf'):
                # self.log(f'Found URL: {absolute_url}')  # Log found URLs
                yield scrapy.Request(absolute_url, callback=self.parse)
