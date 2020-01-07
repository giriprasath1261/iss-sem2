#!/usr/bin/env python3
import requests
from bs4 import BeautifulSoup
from lxml import html
data=requests.get("https://www.smbc-comics.com/​")
soup=BeautifulSoup(data.text, 'html.parser')
print(soup.find("img",{"id":"cc-comic"})['src'])