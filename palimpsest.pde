String[] fontList;
PFont font;
int[] characters;
color transparent = color(0, 0, 0, 2);
char character;

void setup() {
  size(800, 800);
  println("Loading font list...");
  fontList = PFont.list();
  defineRanges();
  for (int c = 0; c < characters.length; c++) {
    background(255);
    character = char(characters[c]);
    for (int f = 0; f < fontList.length; f++) {
      //println(round(100*float(i)/float(fontList.length)) + "%");
      createPalimpsest(f, c);
    }
  }
}

void defineRanges() {
  characters = new int[10 + 26 + 26];
  int initial = 48;
  for (int i = 0; i < 10; i++) {
    characters[i] = initial + i;
  }
  initial = 65;
  for (int i = 0; i < 26; i++) {
    characters[10 + i] = initial + i;
  }
  initial = 97;
  for (int i = 0; i < 26; i++) {
    characters[10 + 26 + i] = initial + i;
  }
  printArray(characters);
}

void createPalimpsest(int f, int c) {
  font = createFont(fontList[f], int(character));
  textFont(font);
  textSize(360);
  textAlign(CENTER, CENTER);
  fill(transparent);
  text(character, width/2, height/2);
  if (c < 10) {
    save("img/" + str(char(characters[c])) + ".png");
  }
  else if (c < 36) {
    save("img/upper-" + str(char(characters[c])) + ".png");
  }
  else {
    save("img/lower-" + str(char(characters[c])) + ".png");
  }
}