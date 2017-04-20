size(550, 700);

fill(66, 144, 45);
quad(140, 210, 210, 210, 210, 420, 140, 420);//Left arm

fill(66, 144, 45);
quad(350, 210, 420, 210, 420, 420, 350, 420);//Right arm

fill(0, 0, 255);
quad(210, 210, 350, 210, 350, 420, 210, 420);//Torso

fill(128, 128, 128);
quad(210, 420, 350, 420, 350, 630, 210, 630);//Legs

fill(66, 144, 45);
quad(210, 70, 350, 70, 350, 210, 210, 210);//Head

line(280, 630, 280, 490);//Leg separation

fill(201, 28, 138);
quad(245, 170, 315, 170, 315, 190, 245, 190);//Mouth

strokeWeight(10);
fill(255, 255, 255);
ellipse(245, 140, 20, 20);//Eye
ellipse(315, 140, 20, 20); //Eye
fill(255, 5, 5);
strokeWeight(10);
beginShape();
vertex(210, 210);
vertex(245, 245);
vertex(315, 280);
vertex(315, 315);
vertex(350, 385);//Gash
endShape();