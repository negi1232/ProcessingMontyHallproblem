import java.util.Random;
int scene;
int choice;
int lastchoice;
int yorn;
int open;
String[] groval_box;
static float yeswin,nowin,yeslose,nolose;

void setup() {

  background(255);
  scene=0;
  size(500,800); frameRate(240);
  textFont(createFont( "Arial" , 30 ));
  fill(0);
  text( "Do you want to select a book box?" ,  5 , 35 ); 
  noFill();
  fill(255, 255, 255);
  quad(30, 50, 30, 100,170,100, 170, 50);
  fill(0);
  text( "BOX1" ,  60 , 85 );
  fill(255, 255, 255);
  quad(180, 50, 180, 100,320,100, 320, 50);
  fill(0);
  text( "BOX2" ,  210 , 85 );
  fill(255, 255, 255);
  quad(330, 50, 330, 100,470,100, 470, 50);
  fill(0);
  text( "BOX3" ,  360 , 85 );
  groval_box=createbox();
  //latedrow();
  System.out.println("yes win late");
  if (yeswin*yeslose!=0){
  System.out.println(yeswin/(yeswin+yeslose));
  }
  else{
  System.out.println(0);
  }
  
  System.out.println("no win late");
  if (nowin*nolose!=0){
    System.out.println(nowin/(nowin+nolose));
  }
  else{
    System.out.println(0);
  }
  System.out.println(groval_box[0]+groval_box[1]+groval_box[2]);
  loopfanc();
}

void loopfanc(){
  System.out.println("start: def : loopfanc");

}

void draw() {
}

void mouseClicked(){
  
  
  if (mouseButton == LEFT){
    if (scene==0){
      if( mouseX > 30 && mouseX < 170 &&mouseY > 50 && mouseY < 100 ){
        text( "select BOX1" ,  0 , 150 );
        
        
        choice=0;
        fill(255, 0, 0);
        quad(30, 160, 30, 210,170,210, 170, 160);
        fill(0);
        text( "BOX1" ,  60 , 195 );
        noFill();
        quad(180, 160, 180, 210,320,210, 320, 160);
        fill(0);
        text( "BOX2" ,  210 , 195 );
        noFill();
        quad(330, 160, 330, 210,470,210, 470, 160);
        fill(0);
        text( "BOX3" ,  360 , 195 );
        
        scene=1;
        lastchoice=0;
      }
      if( mouseX > 180 && mouseX < 320 &&mouseY > 50 && mouseY < 100 ){
        text( "select BOX2" ,  0 , 150 );
        
        
        choice=1;
        noFill();
        quad(30, 160, 30, 210,170,210, 170, 160);
        fill(0);
        text( "BOX1" ,  60 , 195 );
        fill(255, 0, 0);
        quad(180, 160, 180, 210,320,210, 320, 160);
        fill(0);
        text( "BOX2" ,  210 , 195 );
        noFill();
        quad(330, 160, 330, 210,470,210, 470, 160);
        fill(0);
        text( "BOX3" ,  360 , 195 );
        lastchoice=1;
        
        
        scene=1;
      }
      if( mouseX > 330 && mouseX < 470 &&mouseY > 50 && mouseY < 100 ){
        text( "select BOX3" ,  0 , 150 );
        
        choice=2;
        noFill();
        quad(30, 160, 30, 210,170,210, 170, 160);
        fill(0);
        text( "BOX1" ,  60 , 195 );
        noFill();
        quad(180, 160, 180, 210,320,210, 320, 160);
        fill(0);
        text( "BOX2" ,  210 , 195 );
        fill(255, 0, 0);
        quad(330, 160, 330, 210,470,210, 470, 160);
        fill(0);
        text( "BOX3" ,  360 , 195 );
        lastchoice=2;
        scene=1;
      }
      if(scene==1){
        openbox();
      }
    }
    
    if(scene==2){
      System.out.println("scene==2");
      fill(0, 128, 0);
      if( mouseX > 180 && mouseX < 320 &&mouseY > 320 && mouseY < 430 ){
        System.out.println("yes");
        quad(180, 380, 180, 430,320,430, 320, 380);
        fill(0);
        text( "YES" ,  220 , 415 );
        checktheanswer(1);
        yorn=1;
      }
    
      else if( mouseX > 330 && mouseX < 470 &&mouseY > 380 && mouseY < 430 ){
        System.out.println("no");
        quad(330, 380, 330, 430,470,430, 470, 380);
        fill(0);
        text( "NO" ,  375 , 415 );
        checktheanswer(0);
        yorn=0;
      }
    }
    
    if(scene==3){
      if( mouseX > 330 && mouseX < 470 &&mouseY >690 && mouseY < 740 ){
        System.out.println("RESET");
        setup();
        
      }
    }
    
  }
}

void checktheanswer(int last){
  System.out.println(groval_box[0]+groval_box[1]+groval_box[2]);
  if (last==0){//change no
    if (groval_box[choice]=="BINGO"){
      System.out.println("youwin");
      fill(0);
      text( "youwin" ,  360 , 415+240 );
      nowin+=1;
    }
    else{
      System.out.println("youlose");
      text( "youlose" ,  360 , 415+240 );
      nolose+=1;
    }
  }
  else{
    if (groval_box[choice]=="off"){
      System.out.println("youwin");
      text( "youwin" ,  360 , 415+240 );
      yeswin+=1;
    }
    else{
      System.out.println("youlose");
      text( "youlose" ,  360 , 415+240 );
      yeslose+=1;
    }
    //ans
    

    
    
  }
  scene=3;
  
  noFill();
  quad(330, 690, 330, 740,470,740, 470, 690);
  fill(0);
  text( "RESET" ,  350 , 725);
  
  text( "Final choice" ,  0 ,475 );
  
  /////////////////////////
  noFill();
  if (open==0){fill(0 , 0 , 255);}
  if (yorn==0 && lastchoice==0 && open != 0){fill(255,255,0);}// no change
  else if (yorn==1 && lastchoice!=0 && open != 0){fill(255,255,0);} //yes
  
  quad(30, 525-35, 30, 525+15,170,525+15, 170, 525-35);
  fill(0);
  text( groval_box[0] ,  60 , 525 );
  //////////////////////
  noFill();
  if (open==1){fill(0 , 0 , 255);}
  if (yorn==0 && lastchoice==1 && open != 1){fill(255,255,0);}//change
  if (yorn==1 && lastchoice!=1 && open != 1){fill(255,255,0);} 
  quad(180, 525-35, 180, 525+15,320,525+15, 320, 525-35);
  fill(0);
  text( groval_box[1] ,  210 , 525);
  
  ////////////////////
  noFill();
  if (open==2){fill(0 , 0 , 255);}
  if (yorn==0 && lastchoice==2 && open != 2){fill(255,255,0);}//change
  if (yorn==1 && lastchoice!=2 && open != 2){fill(255,255,0);} 

  quad(330, 525-35, 330, 525+15,470,525+15, 470,  525-35);
  fill(0);
  text( groval_box[2] ,  360 , 525);
  ////////////////
}
void openbox(){
  Random random = new Random();
  System.out.println("step2");

  int i=0,flag=0;
  while(flag==0){
    i=random.nextInt(3);
    if (groval_box[i]=="off" && choice!=i){
      flag=1;
    }
  }
  open=i;
  System.out.println(groval_box[i]+i);
  if(i==0){
    text( "open BOX1" ,  0 ,260 );
    fill(0 , 0 , 255);
    quad(30, 270, 30, 320,170,320, 170, 270);
    fill(0);
    text( "BOX1(off)" ,  35 , 305 );
    noFill();
    quad(180, 270, 180, 320,320,320, 320, 270);
    fill(0);
    text( "BOX2" ,  210 , 305 );
    noFill();
    quad(330, 270, 330, 320,470,320, 470, 270);
    fill(0);
    text( "BOX3" ,  360 , 305 );
  }
  
   if(i==1){
    text( "open BOX2" ,  0 ,260 );
    noFill();
    quad(30, 270, 30, 320,170,320, 170, 270);
    fill(0);
    text( "BOX1(off)" ,  35 , 305 );
    
    fill(0 , 0 , 255);
    quad(180, 270, 180, 320,320,320, 320, 270);
    fill(0);
    text( "BOX2" ,  210 , 305 );
    noFill();
    quad(330, 270, 330, 320,470,320, 470, 270);
    fill(0);
    text( "BOX3" ,  360 , 305 );
  }
  
     if(i==2){
    text( "open BOX3" ,  0 ,260 );
    noFill();
    quad(30, 270, 30, 320,170,320, 170, 270);
    fill(0);
    text( "BOX1(off)" ,  35 , 305 );
    noFill();
    quad(180, 270, 180, 320,320,320, 320, 270);
    fill(0);
    text( "BOX2" ,  210 , 305 );
    fill(0 , 0 , 255);
    quad(330, 270, 330, 320,470,320, 470, 270);
    fill(0);
    text( "BOX3" ,  360 , 305 );
  }
  scene=2;
  text( "change ?" ,  0 ,370 );
    noFill();
    quad(180, 380, 180, 430,320,430, 320, 380);
    fill(0);
    text( "YES" ,  220 , 415 );
    noFill();
    quad(330, 380, 330, 430,470,430, 470, 380);
    fill(0);
    text( "NO" ,  375 , 415 );
  
  
  
}

static String[] createbox(){
  String[] box = { "off", "off", "off" };
       Random random = new Random();
       int i = random.nextInt(3);
       box[i] = "BINGO";
       return box;
}
