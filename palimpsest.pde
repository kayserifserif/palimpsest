String[] fontList;
PFont f;
color c = color(0, 0, 0, 10);

void setup() {
  size(400, 400);
  fontList = PFont.list();
  for(int i = 0; i < fontList.length/10; i++) {
    f = createFont(fontList[i], 65);
    textFont(f);
    textSize(96);
    textAlign(CENTER, CENTER);
    fill(c);
    text("A", width/2, height/2);
  }
  //printArray(fontList);
}