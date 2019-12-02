void setup()
{
  size(1080,720);
}
float a;
void draw()
{
  background(0);
  a = (mouseX/(width*1.0)) * 45f;
  stroke(255);
  line(width/2,height,width/2,height-200);
  translate(width/2,height-200);
  branch(200);
  //branch2(200);
}

void branch(float m)
{
  m*=0.66;
  
  if(m>1)
  {
    //left
    pushMatrix();
    rotate(radians(-a));
    line(0,0,0,-m);
    translate(0,-m);
    branch(m);
    popMatrix();
    //right
    pushMatrix();
    rotate(radians(a));
    line(0,0,0,-m);
    translate(0,-m);
    branch(m);
    popMatrix();
  }
  
  
  
}
void branch2(float m)
{
  m*=0.66;
  
  if(m>1)
  {
    //left
    pushMatrix();
    rotate(radians(-a));
    line(0,0,0,-m);
    translate(0,-m);
    branch(m);
    popMatrix();
    //right
    pushMatrix();
    rotate(radians(a));
    line(0,0,0,-m);
    translate(0,-m);
    branch(m);
    popMatrix();
  }
  
  
  
}
