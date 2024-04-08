import random

def stat():
    mylist=['green', 'green']

    for i in range(18):
        mylist.append('red')
        mylist.append('black')

    win=False
    bet=2
    lose=0

    choice='red'
    i=0

    while(win == False):
        landedOn = random.choice(mylist)
        i+=1
        if landedOn == choice:
            win=True
            print("win: ", bet*2)
            print("lose: ", lose)
            print("total: ", (bet*2)-lose)
            return

        lose += bet
        bet = bet * 2

stat()
  