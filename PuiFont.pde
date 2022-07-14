public class PuiFont {
  
  int size;
  int fColor;
  PuiV2 alignment;
      
  public PuiFont(int size, int fColor, PuiV2 alignment) {
    this.size = size;
    this.fColor = fColor;
    this.alignment = alignment;
  }
  
  public PuiFont() {
    this(20, 0xff000000, new PuiV2(LEFT, TOP));
  }
  
}
