int leftEarLocationX = 225;
int rightEarLocationX= 275;

int earHeight = 20;
int earLength = 20;

int mouthHeight = 10;
int mouthLength = 30;

boolean move = true;

void setup(){
  size(500,500);
  frameRate(30);
}

void draw(){
	background(150);
	face();
	earsOut();
	mouth();
	body();
	floor();
	error();
	boxSurroundingGuy();
}

void face(){
	//head
	fill(0,128,0);
	ellipse(250, 250, 60, 60);
	//eyes
	fill(64,64,64);
	ellipse(240, 245, 8, 8);
	ellipse(260, 245, 8, 8);
	
}

void earsOut(){
	fill(0,0,0);
	strokeWeight(1);
	ellipse(leftEarLocationX, 240, earLength, earHeight);
	ellipse(rightEarLocationX, 240, earLength, earHeight);
	//to make it move for a certain length and then move back
	if (move){
		leftEarLocationX -= 1;
		rightEarLocationX += 1;
		earHeight += 1;
		earLength += 1;
		if (leftEarLocationX <= 215){
			move = false;
		}
	}
	else{
		leftEarLocationX += 1;
		rightEarLocationX -= 1;
		earHeight -= 1;
		earLength -= 1;
		if (leftEarLocationX >= 225){
			move = true;
		}
	}
}

void mouth(){
	fill(200,0,0);
	strokeWeight(1);
	ellipse(250, 260, mouthLength, mouthHeight);
	if (move){
		mouthLength += 1;
		mouthHeight += 1;
	}
	else {
		mouthLength -= 1;
		mouthHeight -= 1;
	}
}

void body(){
	//main body
	fill(0,0,0);
	strokeWeight(2);
	line(250, 280, 250, 400);
	//arms
	line(250,310,mouseX,mouseY);
	line(250,310,(500-mouseX),(500-mouseY));
}

void floor(){
	fill(0,0,0);
	rect(0, 460, 500, 40);
}

void error(){
	if (mouseY<=200 || mouseX<=180 || mouseX>=320){
		if (move){
			fill(100,0,0);
			textSize(30);
			text("Error!!!!!!", 210, 50);
		}
		else{

		}
	}
	else{

	}
}

void boxSurroundingGuy(){
	noFill();
	rect(180, 200, 140, 260);
}