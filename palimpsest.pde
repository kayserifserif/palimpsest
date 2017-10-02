String[] fontList;
PFont f;
color c = color(0, 0, 0, 2);
char character;

void setup() {
  size(400, 400);
  background(255);
  println("Loading font list...");
  fontList = PFont.list();
  character = 'A';
  for(int i = 0; i < fontList.length; i++) {
    println(round(100*float(i)/float(fontList.length)) + "%");
    f = createFont(fontList[i], int(character));
    textFont(f);
    textSize(96);
    textAlign(CENTER, CENTER);
    fill(c);
    text(character, width/2, height/2);
  }
}