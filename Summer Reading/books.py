#!/usr/bin/python
# -*- coding: utf-8 -*-

import requests, json

def pagesForBook(nameAndAuthor):
	payload = {"q": nameAndAuthor[0] + "\+inauthor:" + nameAndAuthor[1]}
 	results = requests.get("https://www.googleapis.com/books/v1/volumes", params = payload).json()
	try:
		pages = results["items"][0]["volumeInfo"]["pageCount"]
	except:
		pages = "Unknown"
	return pages

rawPaste = requests.get("http://pastebin.com/raw.php?i=HHX6fpwv").text.split("\n")
bookStrings = []
for bookInfo in rawPaste:
	firstLine = bookInfo.split(".")[0].rstrip()
	if firstLine:
		bookStrings.append(firstLine)
nameAndAuthors = []
for bookString in bookStrings:
	bookString = bookString.split("by")
	nameAndAuthors.append([bookString[0].split(")")[1].replace("A NOVEL", "").strip(), bookString[1].strip()])
for nameAndAuthor in nameAndAuthors:
	print [nameAndAuthor[0], nameAndAuthor[1], pagesForBook(nameAndAuthor)]
