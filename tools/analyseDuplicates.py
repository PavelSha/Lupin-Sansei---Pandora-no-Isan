"""
Python 3.7.4
"""

import re

FOLDER_PATH = "C:\\Lupin Sansei - Pandora no Isan\\debug\\"
TARGET_FILE = "last-mini.log"
LIMIT = 10

def analyse():
    dictionary = {}
    targetFile = open(FOLDER_PATH + TARGET_FILE, encoding="utf-8")
    try:
        for line in targetFile:
            if re.search("^\$0\d:....:", line):
                parts = line.split(':')
                key = parts[0] + ":" + parts[1]
                if key in dictionary:
                    dictionary[key] = dictionary.get(key) + 1
                else:
                    dictionary[key] = 1
        l = 0
        d = dict(sorted(dictionary.items(), key=lambda item: item[1], reverse=True))
        for k, v in d.items():
            if v > 1:
                if l >= LIMIT:
                    break
                print("For " + k + ", count - " + str(v))
                l += 1
    finally:
        targetFile.close()

analyse()
