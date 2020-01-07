import sqlite3
db=sqlite3.connect('bookdatabase.db')
title = input("Enter the title of the book to insert: ")
author = input("Enter the author of the book to insert: ")
qry="insert into book(title,author) values('"+title+"','"+author+"')"
# qry= "insert into book(title,author) values('percy jackson','me');"

print(qry)
try:
    cur=db.cursor()
    cur.execute(qry)
    db.commit()
    print("success")
except:
    print("failure")
    db.rollback()
db.close()
