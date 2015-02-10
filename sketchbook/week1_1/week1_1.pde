float x=0.0;
void setup(){
  size(400,300,P2D);
  frameRate(100);
}
void draw(){
  background(255,204,0);
  ellipse(x,height/2,40,40);
  x+=2;
  if(x>width+40){
    x=-40.0;
  }
}
boolean isMoving = true;
void mousePressed(){
  if(isMoving){
    noLoop();
    isMoving=false;
  }
  else{
    loop();
    isMoving=true;
  }
}

