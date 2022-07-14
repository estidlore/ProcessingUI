public static class PuiV2 {
  
  int x, y;
  
  public PuiV2(int x, int y) {
    this.x = x;
    this.y = y;
  }
  
  public PuiV2 copy() {
    return new PuiV2(x, y);
  }
  
  public static PuiV2 sum(PuiV2... points) {
    PuiV2 res = new PuiV2(0, 0);
    for (PuiV2 point : points) {
      res.x += point.x;
      res.y += point.y;
    }
    return res;
  }
  
}
