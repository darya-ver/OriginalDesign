int leftEarLocationX = 225;
int rightEarLocationX= 275;

void setup(){
  size(500,500);
}

void draw(){
	background(125);
	face();
	ears();
}

void face(){
	fill(0,128,0);
	ellipse(250, 250, 50, 50);
	fill(64,64,64);
	ellipse(240, 245, 5, 5);
	ellipse(260, 245, 5, 5);
	
}

void ears(){
	fill(0,0,0);
	ellipse(leftEarLocationX, 240, 10, 20);
	ellipse(rightEarLocationX, 240, 10, 20);
	leftEarLocationX -= 1;
	// if (leftEarLocationX <= 230) {
	// 	leftEarLocationX += 1;
	// }
	// else {
	// 	leftEarLocationX -= 1;
	// }
}