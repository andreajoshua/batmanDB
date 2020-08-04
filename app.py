#!/usr/bin/env python
# -*- coding: utf-8 -*-


from collections import defaultdict

import pymysql
from array import array

# !/usr/bin/env python
# -*- coding: utf-8 -*-

# %% Simple selector (MySQL database)
# import mysql.connector needs to be installed pip install mysql-connector
import pymysql
import flask
from flask import Flask
app = Flask(__name__)

cnx = pymysql.connect(host='localhost', user='root', password='rootroot',
                      db='lotrfinal', charset='utf8mb4', cursorclass=pymysql.cursors.DictCursor)

cur = cnx.cursor()
stmt_select = "select * from lotr_character order by character_name"

cur.execute(stmt_select)

for row in cur.fetchall():
    print(row)
cur.close()



species = 'elf'
cursor = cnx.cursor()
query = "SELECT character_name FROM lotr_character WHERE species=%s"
cursor.execute(query, species)
# ... retrieve data ...

for row in cursor.fetchall():
    print(row)
cursor.close()


@app.route("/")

def main():
    return "Welcome!"


if __name__ == "__main__":
    app.run()
