#!/usr/bin/env python

from __future__ import print_function
import sqlite3

# db_fname = r'G:/FaceDatabases/AFLW_TUGraz/aflw-db/aflw/data/aflw.sqlite'
db_fname = r'D:/face-databases/AFLW/aflw/data/aflw.sqlite'

print('===> Connect to database: ', db_fname)
conn = sqlite3.connect(db_fname)

print('===> Create a cursor for the connection')
c = conn.cursor()

# # Create table
# c.execute('''CREATE TABLE stocks
#              (date text, trans text, symbol text, qty real, price real)''')

# # Insert a row of data
# c.execute("INSERT INTO stocks VALUES ('2006-01-05','BUY','RHAT',100,35.14)")

# # Save (commit) the changes
# conn.commit()

# # We can also close the connection if we are done with it.
# # Just be sure any changes have been committed or they will be lost.
# conn.close()

print('===> Execute a SQL command')
rlt = c.execute('SELECT * FROM FaceRect LIMIT 3')

print('===> Execute results: ', rlt)

#print('===> Close the connection')
#conn.close()
