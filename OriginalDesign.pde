void setup(){
  size(500,500);
}

void draw(){
	crust();
	tomatoSauce();
}

void crust(){
	fill(209,187,21);
	triangle(112,80,250,450,388,80);
	fill(122,85,4);
	triangle(100,50,250,450,400,50);
	rect(100,30,300,50,7);
}

void tomatoSauce(){
	noFill();
	stroke(255, 0, 0);
	strokeWeight(5);
	triangle(112,80,250,450,388,80);
	noStroke();
}

void redPepper(){
	fill(255,0,0);
	arc(300, 300, 100, 100, 3PI/4, 4PI/4);
}


