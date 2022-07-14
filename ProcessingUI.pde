PuiContainer container;
PuiContainer container2;
PuiText text;

void setup() {
  size(400, 400);
  container = new PuiContainer(100, 100, 10, 10);
  container2 = new PuiContainer(50, 50, 10, 10);
  container.bgColor = 0xff00ff00;
  container2.bgColor = 0xffff0000;
  container.addChild(container2);
  text = new PuiText(10, 10, "Hola");
  container2.addChild(text);
}

void draw() {
  container.render();
}
