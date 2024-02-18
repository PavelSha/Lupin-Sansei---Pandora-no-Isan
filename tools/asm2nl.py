"""
Python 3.7.4
"""

import re

ASM_FOLDER_PATH = "C:\\Lupin Sansei - Pandora no Isan\\"
NL_FOLDER_PATH  = "C:\\Lupin Sansei - Pandora no Isan\\"
ASM_FILE1 = "bank_FF.asm"
ASM_FILE2 = "constants.inc"
NL_FILE1 = "game.nes.7.nl"
NL_FILE2 = "game.nes.ram.nl"
SKIP_COMMERCIAL_AT = True
LOOP_WITH_COUNTER = False
COUNTER_LIMIT = 65
ONLY_LABEL = False
EXCLUDE_LIST = [ '0005', '0011', '0012', '001A', '0039', '003A' ]

def getBankNl(asmNameFile, nlNameFile):
    dictionary = {}
    asmFile = open(ASM_FOLDER_PATH + asmNameFile, encoding="utf-8")
    try:
        label = None
        comment = None
        counter = 0
        for line in asmFile:
            if LOOP_WITH_COUNTER and counter >= COUNTER_LIMIT:
                break
            if re.search("^.\\s.\\s.\\s.\\s.\\s.\\s0x0........:....:\\s..\\s..\\s..\\s\\s", line):
                if not ONLY_LABEL:
                    parts = line.split(';')
                    if len(parts) > 1:
                        comment = parts[1].strip()
                        if len(comment) == 0:
                            comment = '--NO-COMMENT--'
                line = re.sub("^.\s.\s.\s.\s.\s.\s0x0........:", "", line)
                address = line[0] + line[1] + line[2] + line[3]
                value = int(address, base=16)

                if (label is not None) or (comment is not None):
                    if SKIP_COMMERCIAL_AT and (label is not None) and label[0] == '@':
                        label = re.sub("^\@", "", label)

                    dictionary[str(value)] = {"label": label, "comment": comment}
                    label = None
                    comment = None
            else:
                parts = line.split(':')
                if len(parts) > 1:
                    label = parts[0]
                else:
                    label = None
            counter += 1
    finally:
        asmFile.close()
    if len(dictionary) == 0:
        return None

    nlFile = open(NL_FOLDER_PATH + nlNameFile, "w", encoding="utf-8")
    try:
        counter = len(dictionary)
        for key, value in dictionary.items():
            counter -= 1
            iValue = "{0:X}".format(int(key))
            label = ''
            comment = ''
            if value['label']:
                label = value['label']
            if value['comment']:
                comment = value['comment']
            if counter == 0:
                nlFile.write("$"+iValue+"#"+label+"#"+comment)
            else:
                nlFile.write("$"+iValue+"#"+label+"#"+comment+"\n")
    finally:
        nlFile.close()

def getVariablesNl():
    dictionary = {}
    asmFile = open(ASM_FOLDER_PATH + ASM_FILE2, encoding="utf-8")
    try:
        counter = 0
        for line in asmFile:
            if LOOP_WITH_COUNTER and counter >= COUNTER_LIMIT:
                break
            ramValue = None
            parts = line.split('=')
            if len(parts) > 1:
                ramValue = parts[1].strip()

            if (ramValue is not None) and re.search("^ram_", ramValue):
                ramValue = re.sub("^ram_", "", ramValue)
                address = ramValue[0] + ramValue[1] + ramValue[2] + ramValue[3]
                value = int(address, base=16)
                label = parts[0].strip()
                if len(label) > 0:
                    dictionary[str(value)] = {"label": label}
            counter += 1
    finally:
        asmFile.close()
    if len(dictionary) == 0:
        return None

    nlFile = open(NL_FOLDER_PATH + NL_FILE2, "w", encoding="utf-8")
    try:
        counter = len(dictionary)
        for key, value in dictionary.items():
            counter -= 1
            iValue = "{0:X}".format(int(key))

            if len(iValue) == 1:
                iValue = "000" + iValue
            elif len(iValue) == 2:
                iValue = "00" + iValue
            elif len(iValue) == 3:
                iValue = "0" + iValue
            if iValue in EXCLUDE_LIST:
                continue

            label = value['label']
            if counter == 0:
                nlFile.write("$"+iValue+"#"+label+"#")
            else:
                nlFile.write("$"+iValue+"#"+label+"#\n")
    finally:
        nlFile.close()

def getBankFFNl():
    getBankNl(ASM_FILE1, NL_FILE1)

getBankFFNl()
getVariablesNl()
