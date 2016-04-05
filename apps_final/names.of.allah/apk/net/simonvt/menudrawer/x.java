package net.simonvt.menudrawer;

import android.util.SparseArray;

public enum x
{
  private static final SparseArray<x> h;
  final int g;
  
  static
  {
    int j = 0;
    a = new x("LEFT", 0, 0);
    b = new x("TOP", 1, 1);
    c = new x("RIGHT", 2, 2);
    d = new x("BOTTOM", 3, 3);
    e = new x("START", 4, 4);
    f = new x("END", 5, 5);
    i = new x[] { a, b, c, d, e, f };
    h = new SparseArray();
    x[] arrayOfx = values();
    int k = arrayOfx.length;
    while (j < k)
    {
      x localx = arrayOfx[j];
      h.put(g, localx);
      j += 1;
    }
  }
  
  private x(int paramInt)
  {
    g = paramInt;
  }
  
  public static x a(int paramInt)
  {
    return (x)h.get(paramInt);
  }
}

/* Location:
 * Qualified Name:     net.simonvt.menudrawer.x
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */