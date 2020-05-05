//Game Objects
ArrayList<GameObject> objects;
Player myPlayer;

//color pallette
color black  = #000000;
color white  = #FFFFFF;
color purple = #490A3D;
color pink   = #F7B6CE;
color orange = #F7C489;
color tan = #F0DE9D;
color green  = #93D892;
color blue = #B7E3FF;

//mode framework variables
final int INTRO    = 0;
final int GAME     = 1;
final int PAUSE    = 2;
final int GAMEOVER = 3;
int mode = INTRO;

//key variables;
boolean wkey, akey, skey, dkey, spacekey;


//#################################### SETUP ###############################################

void setup() {
  //graphics
  size(800, 800);
  noStroke();
  
  textAlign(CENTER);
  
  //initialize key variables
  wkey = akey = skey = dkey = spacekey = false;
  
  //Game Object initialization
  objects = new ArrayList<GameObject>();
  myPlayer = new Player();
  objects.add(myPlayer);
}

//##################################### DRAW ################################################

void draw() {
  println(objects.size());
  if      (mode == INTRO)    intro();
  else if (mode == GAME)     game();
  else if (mode == PAUSE)    pause();
  else if (mode == GAMEOVER) gameOver();
  else println("Mode error! You need to add a new mode to your mode framework in the draw function! -- Mr. Pelletier");
}
