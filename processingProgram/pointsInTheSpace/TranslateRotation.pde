//+----------------------------------------------------------------+
//| functions to rotate the elements in the 3D ambient             |
//+----------------------------------------------------------------+

void translateRotation(){
	private:
		float xRot=0.0, yRot=0.0, depth=100.0;
		
		translate(width/2, height/2, depth);
		rotateX(xRot);
		rotateY(yRot);
		background(0);

	public:
		void setxRot(float x){
			xRot += x;
		}

		void setyRot(float y){
			yRot += y;
		}

		void setDepth(float z){
			depth += z;
		}
}

void mouseDragged(){
	//this function is called once every time the mouse moves while a mouse button is pressed
	setxRot((mouseY - pmouseY) * 0.005 * -1); //this value is negative because otherwise the rotation on the x axis would be inverted
	setyRot((mouseX - pmouseX) * 0.005);
}

void keyPressed(){
	if(keyCode == UP) setxRot(0.5);
	if(keyCode == DOWN) setxRot(-0.5);
	if(keyCode == LEFT) setyRot(-0.5);
	if(keyCode == RIGHT) setyRot(0.5);
	if(key == '+') setDepth(10);
	if(key == '-') setDepth(-10);
}

void mouseWheel(MouseEvent event) {
	
	float e = event.getCount();
	setDepth(5*e);
}