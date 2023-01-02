import os
from my_classes import DB
from functions import LanguageJSON

DBFile = os.path.join(os.getenv("AppData"), "WikiSearch", "WikiSearch.db")
if not os.path.exists(DBFile):
	Data = DB(DBFile)
	Data.CreateTable("HistoryTable", ("Title", "Date", "Time", "Article language name"))
	Data.CreateTable("FavouritesTable", ("Title", "Name", "Article language name", "url"))
	Data.CreateTable("SavedArticlesTable", ("Title", "Name", "language", "content", "html", "url", "links", "references", "Tables"))
else:
	Data = DB(DBFile)

NumberArticle = 0

name, code = LanguageJSON()
