String[] fontList;
PFont f;
color c = color(0, 0, 0, 5);
char alph;

void setup() {
  size(400, 400);
  fontList = PFont.list();
  alph = 'A';
  for(int i = 0; i < fontList.length; i++) {
    f = createFont(fontList[i], int(alph));
    textFont(f);
    textSize(96);
    textAlign(CENTER, CENTER);
    fill(c);
    text(alph, width/2, height/2);
  }
}