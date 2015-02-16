import ddf.minim.*;

AudioPlayer player;
Minim minim;

void setup(){
  size(500,500, P2D);
  background(220,220,220);
  
  minim = new Minim(this);
  
   player = minim.loadFile("/Users/alexfrench/Desktop/proc/05 Never Mess With Sunday.mp3", 2048);
    player.play();
}

  float BPM = 120;
  float calc2 = BPM / 4;
  float calc3 = calc2 / 2;

  float x = 0;
  float y = 0;
  float z = 2 * PI;
  float c = .006956525;
  float z2 = 0;
  float z3 = PI/100;
  float r = 59;
  float r2 = 0;
  
  
  
void draw(){
  x = x + c;
  y = y + c;
  fill(220,10);
  rect(-5,-5,width + 5,height + 5);
  for(int i = 0; i < player.left.size()-1; i++)
    {
    line(i, height/2 + player.left.get(i)*50, i+1, height/2 + player.left.get(i+1)*50);
   // line(i, 150 + player.right.get(i)*50, i+1, 150 + player.right.get(i+1)*50);
    
    }
  
 /* if (x > z){
       background(201,200,200);
       z = z + 2 * PI;
  }*/
  
//Colored!
  if (x > z2){
    z2 = z2 + PI/calc3;
    r2 = random(0,150);
    stroke(r2,r2,r2);
    //r = random(100, 250);
  }
  
  //if (x > z3){
   // z3 = z3 + PI/calc3;
   // stroke(0,0,0);
   // r = 100;
  //}
  
}

void keyPressed(){
  if (key == 's'){
    saveFrame("####.png");
  }
}

void stop()
{
  player.close();
  minim.stop();
  
  super.stop();
}
