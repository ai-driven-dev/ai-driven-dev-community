import html2text
import os
import scrapy
from urllib.parse import urlparse, urljoin
from scrapy.http import Request, Response
from scrapy.spiders import Rule
from scrapy.linkextractors import LinkExtractor

class HtmlSpiderSpider(scrapy.Spider):
    name = "html_spider"
    handle_httpstatus_list = [301, 302]

    def __init__(self, domain=None, path=None, useMarkdown=False, *args, **kwargs):
        super(HtmlSpiderSpider, self).__init__(*args, **kwargs)
        self.allowed_domains = [domain]
        self.start_urls = [f"https://{domain}"]
        self.rules = (
            Rule(LinkExtractor(allow_domains=[domain]), callback='parse_item'),
        )
        self.path = path
        self.useMarkdown = useMarkdown

    def process_response(self, request, response, spider):
        if response.status in self.handle_httpstatus_list:
            location = response.headers.get('location')
            if location:
                location = urljoin(request.url, location)
                domain = urlparse(location).netloc
                if domain not in self.allowed_domains:
                    return Response(url=request.url, status=200, body='')
        return response

    @staticmethod
    def html_to_markdown(html_content):
        # Convert HTML to Markdown
        markdown_converter = html2text.HTML2Text()
        markdown_converter.ignore_links = False  # Set to True to ignore converting links
        markdown_converter.ignore_images = True  # Set to True to ignore images in the conversion
        markdown = markdown_converter.handle(html_content)
        
        return markdown
    
    def parse(self, response):
        # Save the response as HTML file if it's not empty and not a PDF
        if response.body.strip() and not response.url.endswith('.pdf'):
            parsed_uri = urlparse(response.url)
            domain = '{uri.netloc}'.format(uri=parsed_uri)
            originalPath = '{uri.path}'.format(uri=parsed_uri)
            path = originalPath
            if originalPath == '':
                path = 'index.html'
            else:
                path = path.strip('/') + '/index.html'
            
            # Check if the path starts with the specified path
            if self.path is None or path.startswith(self.path):
                filename = f'websites/{domain}/{path}'
                self.log(f'Processing {response.url} to {filename}')
                
                # Ensure the directory exists
                os.makedirs(os.path.dirname(filename), exist_ok=True)
                
                with open(filename, 'wb') as f:
                    f.write(response.body)
                    self.log(f'Saved file {filename}')

                if self.useMarkdown:
                    # Convert the HTML content to Markdown
                    markdown_content = self.html_to_markdown(response.text)
                    with open(f'websites/{domain}/{originalPath}.md', 'a') as f:
                        f.write(markdown_content + '\n')

        # Follow all links that are HTML pages and not PDFs
        for href in response.css('a::attr(href)').getall():
            # Convert relative URLs to absolute URLs
            absolute_url = urljoin(response.url, href)
            href_parsed_uri = urlparse(absolute_url)
            href_domain = '{uri.netloc}'.format(uri=href_parsed_uri)
            if href_domain in self.allowed_domains and not absolute_url.endswith('.pdf'):
                # self.log(f'Found URL: {absolute_url}')  # Log found URLs
                yield scrapy.Request(absolute_url, callback=self.parse)