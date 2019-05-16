print('Welcome to the guessing game! Guess a number between 1 and 100:')
num = 0
import random
t=0
rn = random.randint(0,101)

while(t==0):
    test = input("Enter input:")
    if(int(test)>rn):
      print('you guessed',test,'unfortunately that is too high, try again')
      num = num + 1
    if(int(test)<rn):
      print('you guessed',test,'unfortunately that is too low, try again')
      num = num + 1
    if(int(test) == rn):
      print('you guessed',test,'That is it! You guessed the number in' ,num,'attempts!')
      t=t+1
