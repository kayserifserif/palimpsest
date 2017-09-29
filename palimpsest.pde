String[] fontList;
PFont f;
color c = color(0, 0, 0, 5);
char alph;

void setup() {
  size(400, 400);
  println("Loading font list...");
  fontList = PFont.list();
  alph = 'A';
  for(int i = 0; i < fontList.length; i++) {
    println(round(100*float(i)/float(fontList.length)) + "%");
    f = createFont(fontList[i], int(alph));
    textFont(f);
    textSize(96);
    textAlign(CENTER, CENTER);
    fill(c);
    text(alph, width/2, height/2);
  }
}