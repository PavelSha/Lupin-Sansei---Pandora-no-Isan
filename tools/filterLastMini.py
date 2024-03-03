"""
Python 3.7.4
"""

import re

FOLDER_PATH = "C:\\Lupin Sansei - Pandora no Isan\\debug\\"
IN_FILE = "last.log"
OUT_FILE = "last-mini.log"
NL_FF_SKIP_FILE = "game.nes.7.skip.nl"
NL_06_2_SKIP_FILE = "game.nes.6.2.nl"

def getSkipList(nameFile):
    skip = []
    skipFile = open(FOLDER_PATH + nameFile, encoding="utf-8")
    try:
        for line in skipFile:
            parts = line.split('#')
            str1 = parts[0]
            instruction = str1.replace("$", "")
            if len(instruction) == 0:
                continue
            skip.append(instruction)
    finally:
        skipFile.close()
    print("Skip " + nameFile + " has a length: " + str(len(skip)))
    return skip

def filter():
    skipFF = getSkipList(NL_FF_SKIP_FILE)
    #skip06_2 = getSkipList(NL_06_2_SKIP_FILE)

    inFile = open(FOLDER_PATH + IN_FILE, encoding="utf-8")
    outFile = open(FOLDER_PATH + OUT_FILE, "w", encoding="utf-8")
    try:
        lineCounter = 0
        wasComment = False
        for line in inFile:
            if wasComment:
                wasComment = False
                continue
            if re.search("^bra_", line):
                continue
            if re.search("^loc_", line):
                continue
            if re.search("^sub_", line):
                continue
            if re.search("^vec_", line):
                continue
            if re.search("^\(.*\)\s", line):
                continue
            if re.search("^\$06:", line):
                continue
            if re.search("^\$02:", line):
                continue
            if re.search("^;", line):
                wasComment = True
                continue
            else:
                wasComment = False

            # Skip lists
            skip = False
            for v in skipFF:
                if re.search("^\$07:" + v, line):
                    skip = True
                    break
            if skip:
                continue
            # for v in skip06_2:
            #     if re.search("^\$06:" + v, line):
            #         skip = True
            #         break
            # if skip:
            #     continue
            outFile.write(line)
            lineCounter += 1
            if lineCounter > 100:
                #print("The next 100 lines was executed ...")
                lineCounter = 0

    finally:
        inFile.close()
        outFile.close()

filter()
