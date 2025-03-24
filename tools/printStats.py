"""
Python 3.7.4
"""

import re

ASM_FOLDER_PATH = "C:\\Lupin Sansei - Pandora no Isan\\src\\"
ASM_FF_FILE = "bank_FF.asm"
ASM_00_1_FILE = "bank_00_1.asm"
ASM_00_2_FILE = "bank_00_2.asm"
ASM_01_1_FILE = "bank_01_1.asm"
ASM_01_2_FILE = "bank_01_2.asm"
ASM_02_1_FILE = "bank_02_1.asm"
ASM_02_2_FILE = "bank_02_2.asm"
ASM_03_1_FILE = "bank_03_1.asm"
ASM_03_2_FILE = "bank_03_2.asm"
ASM_04_1_FILE = "bank_04_1.asm"
ASM_04_2_FILE = "bank_04_2.asm"
ASM_05_1_FILE = "bank_05_1.asm"
ASM_05_2_FILE = "bank_05_1.asm"
ASM_06_1_FILE = "bank_06_1.asm"
ASM_06_2_FILE = "bank_06_2.asm"
allCounter = 0
codeCounter = 0
codeCommentedCounter = 0
codeUncommentedCounter = 0
dataCounter = 0
unknownCounter = 0

def resolveOneStat(asmNameFile, useLog=False, logCounter=10):
    global allCounter
    global codeCounter
    global codeCommentedCounter
    global codeUncommentedCounter
    global dataCounter
    global unknownCounter
    asmFile = open(ASM_FOLDER_PATH + asmNameFile, encoding="utf-8")
    try:
        for line in asmFile:
            if re.search("^.\\s.\\s.\\s.\\s.\\s.\\s", line):
                allCounter += 1
                if re.search("^C\\s.\\s.\\s.\\s.\\s.\\s", line):
                    codeCounter += 1
                    parts = line.split(';')
                    if len(parts) > 1:
                        codeCommentedCounter += 1
                    else:
                        codeUncommentedCounter += 1
                        if useLog and logCounter > 0:
                            logCounter -= 1
                            print("Line: " + line)
                elif re.search("^.\\sD\\s.\\s.\\s.\\s.\\s", line):
                    dataCounter += 1
                else:
                    unknownCounter += 1
#            else:
#                print("Unknown line: " + line)
    finally:
        asmFile.close()

def resolveStats():
    global allCounter
    global codeCounter
    global codeCommentedCounter
    global codeUncommentedCounter
    global dataCounter
    global unknownCounter

    resolveOneStat(ASM_FF_FILE)
    resolveOneStat(ASM_00_1_FILE)
    resolveOneStat(ASM_00_2_FILE)
    resolveOneStat(ASM_01_1_FILE)
    resolveOneStat(ASM_01_2_FILE)
    resolveOneStat(ASM_02_1_FILE)
    resolveOneStat(ASM_02_2_FILE)
    resolveOneStat(ASM_03_1_FILE)
    resolveOneStat(ASM_03_2_FILE)
    resolveOneStat(ASM_04_1_FILE)
    resolveOneStat(ASM_04_2_FILE)
    resolveOneStat(ASM_05_1_FILE)
    resolveOneStat(ASM_05_2_FILE)
    resolveOneStat(ASM_06_1_FILE)
    resolveOneStat(ASM_06_2_FILE)

    print("Code has logged : {:.2f}%".format(100.0 * float(codeCounter) / float(allCounter)))
    print("Data has logged : {:.2f}%".format(100.0 * float(dataCounter) / float(allCounter)))
    print("Unknown bytes   : {:.2f}%".format(100.0 * float(unknownCounter) / float(allCounter)))
    print("Code commented  : {:.2f}%".format(100.0 * float(codeCommentedCounter) / float(codeCounter)))

resolveStats()
