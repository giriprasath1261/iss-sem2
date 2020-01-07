import sqlite3
db = sqlite3.connect('bookdatabase.db')
qry="create table book(title char(20) primary key,author char(20));"
try:
    cur=db.cursor()
    cur.execute(qry)
    print("success")
except:
    print("error")
    db.rollback()
db.close()
