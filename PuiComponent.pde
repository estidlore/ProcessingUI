import java.util.*;
public abstract class PuiComponent {
  
  boolean visible;
  PuiV2 size, position;
  PuiContainer parent;
  
  public PuiComponent(PuiV2 size, PuiV2 position) {
    this.size = size;
    this.position = position;
    visible = true;
  }
  
  public PuiComponent(int w, int h, int x, int y) {
    this(new PuiV2(w, h), new PuiV2(x, y));
  }
  
  public void render() {
    render(0, 0);
  }
  
  protected abstract void render(int x, int y);
  
}
