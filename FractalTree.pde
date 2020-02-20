private double fractionLength = .8; 
private int smallestBranch = 10; 
private double branchAngle = .2;  
public void setup() 
{   
	size(800,800);    
	noLoop(); 
} 
public void draw() 
{   
	background(0);   
	stroke(0,255,0);   
	line(400,800,320,380);   
	drawBranches(400,480,100,3*Math.PI/2);  //will add later 
} 
public void drawBranches(int x,int y, double branchLength, double angle) 
{   
	double angle1;
	double angle2;
	angle1 = angle + branchAngle;
	angle2 = angle - branchAngle;
	double bum = branchLength * fractionLength;
	int endX1 = (int)(branchLength*Math.cos(angle1) + x);
	int endY1 = (int)(branchLength*Math.sin(angle1) + y);
	int endX2 = (int)(branchLength*Math.cos(angle1) + x);
	int endY2 = (int)(branchLength*Math.sin(angle1) + y);
	line(x, y, endX1, endY1);
	line(x,y, endX2,endY2);  
	if(branchLength>smallestBranch){
		drawBranches(endX1,endY1, bum, angle1);
		drawBranches(endX2,endY2, bum,angle2);
	}

} 
