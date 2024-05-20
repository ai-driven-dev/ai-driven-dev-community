# Web Scraper to Save HTML / Markdown Content

This project is a web scraper built with `Scrapy` and `html2text`.

It is designed to crawl a specified domain, save the HTML content of the pages, and optionally convert the HTML content to Markdown.

- [Installation](#installation)
- [Usage Example](#usage-example)

## Installation

Follow these steps to install the project:

```bash
cd scripts/scraper
python3 -m venv venv
source venv/bin/activate
pip install -r requirements.txt
```

## Usage Example

To run the scraper, use the following command:

```bash
scrapy crawl html_spider -a domain=nuqs.47ng.com -a path=docs -a useMarkdown=True
```

This command will crawl the `nuqs.47ng.com/docs` domain and save the HTML content of the pages in the `websites` directory.

If the `useMarkdown` flag is set to `True`, the HTML content will be converted to Markdown.
