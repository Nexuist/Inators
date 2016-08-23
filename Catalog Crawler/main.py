#!/usr/bin/python
# -*- coding: utf-8 -*-
from bs4 import BeautifulSoup
import urllib2

items = []
i = 0

while 1:
    try:
        info = urllib2.urlopen(
            'http://m.roblox.com/catalog/catalogSearch?startrow=' + str(i))
        soup = BeautifulSoup(info)
        soup.prettify()
        for item in soup.find_all("li"):
            # Go through the individual items
            # And get their info
            # Link
            link = item.a["href"]
            # Image
            if item.a.find("img"):
                image = item.find("img")['src']
            else:
                image = "???"
            # Name
            title = item.h3.string
            # Description
            if item.a.find('p', {'class': 'catalog-list-description'}):
                desc = item.a.find(
                    'p', {'class': 'catalog-list-description'}).string
            else:
                desc = "???"

            # Put it all in a dictionary
            item = {
                "link": link,
                "image": image,
                "name": title,
                "desc": desc,
            }
            # And put it in the array
            items.append(item)
        i = i + 15
    except urllib2.HTTPError:
        print("The next page could not be retrieved.")
        break

print items
