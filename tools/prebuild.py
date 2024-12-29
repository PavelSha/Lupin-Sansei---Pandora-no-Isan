"""
Python 3.7.4
"""

import re
import sys

ASSETS_LIST_FILE_NAME = "assets.txt"

n = len(sys.argv)
if n < 2:
    raise Exception("Invalid number of arguments")

originalPathFile = sys.argv[1]
outPath = sys.argv[2]

assetsListFile = open(outPath + ASSETS_LIST_FILE_NAME, encoding="utf-8")
try:
     for line in assetsListFile:
         parts = line.split(' ')
         if len(parts) < 3:
             raise ValueError("The line is missing three words separated by spaces")
         assetsName = parts[0]
         aPosition = int(parts[1])
         aLen = int(parts[2])
         with open(originalPathFile, "rb") as f:
             f.seek(aPosition)
             chunk = f.read(aLen)
             with open(outPath + assetsName, "wb") as f2:
                 f2.write(chunk)
finally:
    assetsListFile.close()
