public class PuiText extends PuiComponent {
  
  PuiFont font;
  String text;
  
  public PuiText(PuiV2 position, String text) {
    super(null, position);
    this.text = text;
    font = new PuiFont();
  }
  
  public PuiText(int x, int y, String text) {
    this(new PuiV2(x, y), text);
  }

  protected void render(int x, int y) {
    x += position.x;
    y += position.y;
    println(font.size);
    fill(font.fColor);
    textSize(font.size);
    textAlign(font.alignment.x, font.alignment.y);
    text(text, x, y);
  }
  
}
