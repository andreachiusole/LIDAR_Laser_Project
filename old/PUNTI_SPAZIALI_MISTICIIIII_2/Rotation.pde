//+----------------------------------------------------------------+
//| functions to rotate the elements in the 3D ambient             |
//+----------------------------------------------------------------+

void translateRotation(){
  translate(width/2, height/2, depth);
  rotateX(xRot);
  rotateY(yRot);
  background(0);
}

void mouseDragged(){
  xRot -= (mouseY - pmouseY) * 0.005;
  yRot += (mouseX - pmouseX) * 0.005;
}

void keyPressed(){
  if(keyCode == UP) xRot += 0.5;
  if(keyCode == DOWN) xRot -= 0.5;
  if(keyCode == LEFT) yRot -= 0.5;
  if(keyCode == RIGHT) yRot += 0.5;
  if(key == '+') depth += 10;
  if(key == '-') depth -= 10;
}

void mouseWheel(MouseEvent event) {
  
  float e = event.getCount();
  depth += 5*e;
}