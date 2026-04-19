/*
Flor de Maria Ballinas Arias
Comision 4
tp1
abril 2026
*/

PImage myImage;

void setup(){
  size(800,400);
  myImage = loadImage("labelleferronniere.png");
}

void draw(){
  background(31, 41, 54);
  image(myImage, 0, 0, 400, 400);
  
  noStroke();
  
  //Dress
  fill(221, 90, 54);
  quad(670, 294, 744, 400, 495, 400, 565, 316);
  
  //Neck
  fill(242, 233, 217);
  quad(643, 224, 566, 284, 566, 330, 648, 278);
  
  //Neckline
  fill(242, 233, 217);
  beginShape();
  curveVertex(518, 382);
  curveVertex(571, 320);
  curveVertex(639, 272);
  curveVertex(690, 324);
  curveVertex(660, 325);
  curveVertex(622, 348);
  curveVertex(576, 396);
  curveVertex(518, 382);
  curveVertex(571, 320);
  curveVertex(639, 272);
  endShape();
  
  //Necklaces
  noFill();
  stroke(0);
  strokeWeight(4);
  line(565, 318, 535, 400);
  line(648, 275, 543, 400);
  arc(590, 314, 50, 24, 0, 2.9);
  
  //Hair
  fill(90, 74, 77);
  noStroke();
  ellipse(588, 138, 120, 120);
  fill(255);
  ellipse(579, 142, 126, 120);
  fill(90, 74, 77);
  ellipse(579, 174, 149, 182);
  noFill();
  stroke(255);
  strokeWeight(1);
  arc(550, 134, 15, 86, 0.5, 4.51);
  
  //Hair tail
  fill(90, 74, 77);
  noStroke();
  triangle(641, 220, 674, 299, 649, 277);
  
  //Face
  fill(242, 233, 217);
  ellipse(555, 180, 84, 95);
  fill(242, 233, 217);
  ellipse(565, 211, 100, 95);
  ellipse(577, 228, 106, 103);
  ellipse(568, 265, 49, 38);
  
  //Hair
  fill(90, 74, 77);
  triangle(582, 140, 603, 197, 628, 138);
  triangle(543, 135, 580, 141, 569, 111);
  ellipse(627, 184, 50, 116);
  
  // Ornament on the forehead
  fill(230, 182, 111);
  stroke(0);
  strokeWeight(1);
  line(507, 154, 649, 144);
  ellipse(544, 152, 12, 8);
  
  // Shade
  fill(200, 179, 155);
  stroke(200, 179, 155);
  strokeWeight(5);
  strokeJoin(ROUND);
  triangle(573, 178, 562, 182.5, 558, 196);
  noFill();
  strokeWeight(1);
  arc(568, 263.5, 54, 40, 0, 2.11);
  
  //Eyes
  fill(255);
  stroke(90, 74, 77);
  strokeWeight(1);
  ellipse(530, 193, 24, 9);
  ellipse(581, 189, 26, 9);
  
  fill(39, 78, 76);
  stroke(0);
  ellipse(532, 193, 9, 9);
  ellipse(583, 189, 9, 9);
  
  fill(0);
  ellipse(532, 193, 4, 4);
  ellipse(583, 189, 4, 4);
  
  //Eyebrows
  strokeWeight(1.5);
  noFill();
  stroke(90, 74, 77);
  arc(525, 188, 32, 14, 4, 6);
  arc(578, 183, 37, 14, 3.2, 5.8);
  
  //Nose
  stroke(200, 179, 155);
  arc(550, 230, 12, 8, 0, 3.2);
  arc(562, 226, 8, 12, 0, 1.5);
  line(557.5, 190, 554, 214);
   
  //Mouth
  stroke(247, 171, 126);
  strokeWeight(3);
  arc(559, 249, 28, 5, 2.8, 6);
  strokeWeight(1);
  stroke(0, 70);
  arc(559, 250.5, 24, 4, 0, 3);
  strokeWeight(3);
  stroke(247, 171, 126);
  arc(559, 251.5, 26, 12, 0, 3);

}
