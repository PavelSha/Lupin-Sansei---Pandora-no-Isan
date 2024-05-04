"""
Python 3.7.4
"""

import re
from PIL import Image

FOLDER_PATH = "C:\\Lupin Sansei - Pandora no Isan\\snaps\\"
START = 160 #176

def cut():
    for x in range(0, 17):
        value = hex(START + x)
        image = Image.open(FOLDER_PATH + "game-" + str(START + x) + ".png")
        newImage = image.crop((15, 55, 33, 73))

        strValue = str(value)[2:]
        newImage.save(FOLDER_PATH + strValue + '.bmp', 'BMP', compression=1)

def cut2():
    image = Image.open(FOLDER_PATH + "ef.png")
    # newImage = image.crop((6, 160, 34, 184))
    newImage = image.convert("RGBA")
    datas = newImage.getdata()
    newData = []
    for d in datas:
        if d[0] == 247 and d[1] == 121 and d[2] == 255:
            newData.append((247, 121, 255, 0))
        else:
            newData.append(d)
    newImage.putdata(newData)
    newImage.save(FOLDER_PATH + 'ef-cut.png', 'PNG')

cut2()
