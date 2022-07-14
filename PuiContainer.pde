public class PuiContainer extends PuiComponent {
  
  int bgColor;
  PuiBorder border;
  private Set<PuiComponent> children;
  
  public PuiContainer(PuiV2 size, PuiV2 position) {
    super(size, position);
    children = new HashSet<PuiComponent>();
  }
  
  public PuiContainer(int w, int h, int x, int y) {
    this(new PuiV2(w, h), new PuiV2(x, y));
  }
  
  protected void render(int x, int y) {
    x += position.x;
    y += position.y;
    fill(bgColor);
    if (border == null) {
      noStroke();
    } else {
      strokeJoin(border.joinStyle);
      strokeWeight(border.w);
      stroke(border.fillColor);
    }
    rect(x, y, size.x, size.y);
    for (PuiComponent child : children) {
      if (child.visible) {
        child.render(x, y);
      }
    }
  }
  
  public void addChild(PuiComponent child) {
    if (child.parent != null) {
      child.parent.removeChild(child);
    }
    children.add(child);
    child.parent = this;
  }
  
  public void removeChild(PuiComponent child) {
    children.remove(child);
    child.parent = null;
  }
  
}
