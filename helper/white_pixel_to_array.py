# This is just a tiny helper, to convert an image with white pixel to array values
# The file is not necessary for operation and can be deleted in the *.watch file
# and yes, ugly AF but working ;)

from ntpath import join
from PIL import Image
import numpy as np
import matplotlib.pyplot as plt
 
#image path
im = Image.open('C:\\enter\\path\\here.png')

width, height = im.size
rgb_im = im.convert('RGBA')
 
 
# Function to detect white/bright pixel
# The images seems to be white with an transparent alpha channel, so the alpha value is important

def detectwhite(rgb_im,x,y):
    rgb_im = rgb_im
    x = x
    y = y
    r, g, b, a  = rgb_im.getpixel((x, y))
    if  r == 255 and g == 255 and b == 255: 
        return a
    return -1

x= 0
y= 0
vals = []

while x  < width:
    linemax = -1
    linemaxcoordinates = -1
    #detect brightest pixel per coloumn
    while y < height:
        if detectwhite(rgb_im,x,y) >= linemax:
            linemax = detectwhite(rgb_im,x,y)
            linemaxcoordinates=y
        y += 1
    if linemax < 0:
        exit("The number is less than zero.")
    tmp =  height-linemaxcoordinates
    vals.append(tmp);   
    print (' x',x,' y',tmp)
    plt.scatter(x, tmp, s= 1)
    y = 0
    x += 1
    if x >(width/2):
        break
    print (len(vals),'values w',width,' h',height)
concatenatedString = ', '.join(map(str, vals))
print(concatenatedString)
plt.show()
