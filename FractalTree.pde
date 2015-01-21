private double fractionLength = .8; 
private int smallestBranch = 10; 
private double branchAngle = .4;  
public void setup() 
{   
	size(640,520);    
	noLoop(); 
} 
public void draw() 
{   
	background(0);   
	stroke(81,156,237);   
	line(320,520,320,380);
	line(200,520,200,420);
	line(440,520,440,420);
	line(280,520,280,420);
	line(360,520,360,420);
	drawBranches(320,380,100,3*Math.PI/2);
	drawBranches(200,420,60,13*Math.PI/10);
	drawBranches(440,420,60,17*Math.PI/10);
	drawBranches(280,420,30,13*Math.PI/10);
	drawBranches(360,420,30,17*Math.PI/10);
} 
public void drawBranches(int x,int y, double branchLength, double angle) 
{   
	double angle1 = angle + branchAngle;
	double angle2 = angle - branchAngle;
	branchLength = branchLength * fractionLength;
	int endX1 = (int)(branchLength*Math.cos(angle1) + x);
	int endY1 = (int)(branchLength*Math.sin(angle1) + y);
	int endX2 = (int)(branchLength*Math.cos(angle2) + x);
	int endY2 = (int)(branchLength*Math.sin(angle2) + y);
	line(x,y,endX1,endY1);
	line(x,y,endX2,endY2);
	if(branchLength > smallestBranch)
	{
		drawBranches(endX1,endY1,branchLength,angle1);
		drawBranches(endX2,endY2,branchLength,angle2);
	}
} 
