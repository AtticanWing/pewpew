void intro() {
  //background
  
  if (mouseX>300 && mouseY<500 && mouseX<500 && mouseY>400) {
    background(black);
  } else {
    background(tan);
  }

  textSize(80);
  if (mouseX>300 && mouseY<500 && mouseX<500 && mouseY>400) {
    fill(tan);
  } else {
    fill(black);
  }
  text("PEW PEW", 400, 250);

  if (mouseX>300 && mouseY<500 && mouseX<500 && mouseY>400) {
    fill(tan);
  } else {
    fill(0);
  }
  rect(300, 405, 200, 100);

  if (mouseX>300 && mouseY<500 && mouseX<500 && mouseY>400) {
    fill(black);
  } else {
    fill(tan);
  }
  textSize(50);
  text("START", 400, 475);
  
}

void introClicks() {
  if (mouseX>300 && mouseY<500 && mouseX<500 && mouseY>400) {
    mode = GAME;
  }
  if (mouseX>750 && mouseX<780 && mouseY>500 && mouseY<530) {
   mode = PAUSE;
  }

}
