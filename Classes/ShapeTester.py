import math
print('Choose a shape and insert dimensions')
print('I will calculate its volume and surface area')
shape = input('choose a box, pyrpamid, or sphere: ')
if(shape=='box'):
    from Box import *
if(shape=='sphere'):
    from sphere import *
if(shape=='pyramid'):
    from pyramid import *
