import random
box1=[0,0,0]#１が当たりのアドレス、２がプレイヤーの選択、３がゲーム側からの開示
box2=[0,0,0]
box3=[0,0,0]
first=0
second=0
takes=input("takes:")
for i in range(int(takes)):
    #あたりを混入
    right=random.randrange(0,3)
    box1[right]=1
    #プレイヤーの選択
    playerchoise=random.randrange(0,3)
    box2[playerchoise]=1
    #１つ開示当たりでなく選ばれていない
    gamechoise=random.randrange(0,3)
    while box1[gamechoise]==1 or box2[gamechoise]==1:
        gamechoise=random.randrange(0,3)
    box3[gamechoise]=1

    #そのままの場合
    if box1[playerchoise]==1:
        first+=1
        print(str(box1))
        print(str(box2))
        print(str(box3))
        print("当たりと選択が一致している")
    
    #自分の選択以外＋開示されていない物を選択した場合あたりを選んでいたら外れ
    while box2[playerchoise]==1 or box3[playerchoise]==1:
        playerchoise=random.randrange(0,3)

    box2=[0,0,0]
    box2[playerchoise]=1

    if box1[playerchoise]==1:
        print(str(box1))
        print(str(box2))
        print(str(box3))
        print("変更すると答えがあった")
        second+=1

#    print(str(box1)+"あたり")
#    print(str(box2)+"プレイヤーの選択")
#    print(str(box3)+"開示")
   
    print("//////////////////")

    box1=[0,0,0]
    box2=[0,0,0]
    box3=[0,0,0]
    
print(str(first)+"/"+takes)
print(str(second)+"/"+takes)
print("結果変えたほうが当たる確率は"+str(second/first)+"倍高くなる")
    
    
    
        
    
