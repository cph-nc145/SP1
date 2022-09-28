
void setup(){
  size(1000,900);
  String Startmsg = "Balls everywhere!!";
  String IntroM = "Use your mousewheel to create black balls";
  float BAmount = random(50, 100);
  //The for loop draws a random number of balls that is determined by the BAmount variable.
  for(int i = 0; i < BAmount; i++){
  DrawBall();
  }
  System.out.println(Startmsg);
  System.out.println(IntroM);
}


void draw(){
}

//This function gets random data from the random() command and puts it in a variable, 
//that is then used to create a completely new ball everytime this function runs.
void DrawBall(){
 float Xpos = random(0, 900);
 float Ypos = random(0, 900);
 float Bheight = random(50,100);
 float Bwidth = random(50,100);
 float R = random(250);
 float G = random(250);
 float B = random(250);
 
 fill(R,G,B);
 ellipse(Xpos, Ypos, Bheight, Bwidth);
 
 //This conditional creates a black box that censors a ball that is olive colored, because i dont like olives.
 if(R > 127 && G > 127 && B < 60){
   fill(0);
   rect(Xpos - 50,Ypos - 40,Bwidth + 50,Bheight + 50);
 }
}


//This just draws black balls with your mousewheel so you too can hide things you dont like
void mouseWheel(){
 int MouseBall = 30;
 stroke(0);
 fill(0);
 ellipseMode(CENTER);
 ellipse(mouseX, mouseY, MouseBall, MouseBall);
}
