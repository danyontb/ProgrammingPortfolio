class Box:
    import math
    l= input('length:')
    w= input('width:')
    h= input('height:')
    L= int(l)
    W= int(w)
    H= int(h)
    print('volume of box:', L*W*H)
    print('surface area:', 2*(L*W)+2*(W*H)+2*(H*L))
