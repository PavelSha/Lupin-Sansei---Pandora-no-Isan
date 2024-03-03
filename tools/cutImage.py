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

cut()
