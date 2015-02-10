float[] px = {15,5,80,50};
float[] py = {40,0,0,55};
void setup(){
  size(400,400,P2D);
}
void draw(){
  background(255,204,0);
  for(int i=0;i<4;i++){
    rect(px[i],py[i],10,10);
  }
  noFill();
  beginShape();
  //vertex(15,40);
  //bezierVertex(5,0,80,0,50,55);
  vertex(px[0],py[0]);
  bezierVertex(px[1],py[1],px[2],py[2],px[3],py[3]);
  vertex(30,45);
  vertex(25,75);
  bezierVertex(50,70,75,90,80,70);
  endShape();
}
void mouseDragged(){
  for(int i=0;i<4;i++){
    if(dist(mouseX,mouseY,px[i],py[i])<20){
      px[i]+=mouseX-pmouseX;
      py[i]+=mouseY-pmouseY;
    }
  }
}

