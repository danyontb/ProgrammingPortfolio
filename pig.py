p= 'ay' 
str1 = input('Type your name')
word = str1.lower()
if(word.startswith('a'), word.startswith('e'), word.startswith('i'), word.startswith('o'),word.startswith('u')):
  first=word[0]
  new_word = word[0:] + p
  print('your new name is: ' + new_word)
else:
    first=word[0]
    print(word.split(first))
    new_word= word[0:] + first + p
    print('your new name is:' + new_word)
