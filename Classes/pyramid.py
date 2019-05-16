class pyramid:
    import math
    l = input('Enter in a length:')
    w = input('Enter in a width:')
    h = input('Enter in a height:')
    L = int(l)
    W = int(w)
    H= int(h)
    print('volume: ', (L*W*H)/3)
    print('surface area: ', L*W+L*math.sqrt(((W*W)/4)+H*H)+W*math.sqrt(((L*L)/4)+H*H))
