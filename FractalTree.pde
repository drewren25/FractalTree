private double fractionLength = .8; 
private int smallestBranch = 10; 
private double branchAngle = (double)(Math.random()*.6)+.1;  
public void setup(){   
  size(700, 700);    
  noLoop(); 
} 
public void draw(){   
  background(0, 130, 250); //sky
  fill(0, 130, 250);
  rect(20, 20, 45, 45);
  
  stroke(255, 255, 0); //sun
  fill(255, 255, 0);
    rect(290, 310, 120, 320);
    
    noStroke();  //clouds
    fill(255);
    rect(30, 30, 100, 70);
    rect(470, 80, 120, 40);
    rect(200, 200, 111, 63);
    stroke(0, 130, 250);
    fill(0, 130, 250);
  rect(20, 20, 45, 45);
  rect(540, 90, 50, 90);
    
  fill((int)(Math.random()*100)+140, (int)(Math.random()*100)+140, 0); //ground
  noStroke();
  rect(0, 400, 700, 600);
  
  stroke((int)(Math.random()*255),(int)(Math.random()*255), (int)(Math.random()*255)); //tree  
  line(350,550,350,460);  //trunk
  drawBranches(350,460,100,3*Math.PI/2);  //branches
} 
public void drawBranches(int x,int y, double branchLength, double angle){
double angle1; 
double angle2;
int endx1;
int endy1;
int endx;
int endy;

angle1 = angle + branchAngle;
angle2 = angle - branchAngle;

branchLength = branchLength * fractionLength;  

endx1 = (int)(branchLength*Math.cos(angle1) +x);
endy1 = (int)(branchLength*Math.sin(angle1) + y);
endx = (int)(branchLength*Math.cos(angle2) + x); 
endy = (int)(branchLength*Math.sin(angle2) + y);

line(x, y, endx1, endy1);
line(x, y, endx, endy);

if(branchLength > smallestBranch){
    drawBranches(endx1, endy1, branchLength, angle1);
    drawBranches(endx, endy, branchLength, angle2);
  }
} 