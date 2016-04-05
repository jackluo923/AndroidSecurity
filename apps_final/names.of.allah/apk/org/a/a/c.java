package org.a.a;

import org.a.a.a.b;

public final class c
{
  public d a;
  public boolean b;
  public boolean c;
  public boolean d;
  public byte e;
  public String f;
  public b[] g = new b[3];
  public b h = null;
  public a i = null;
  
  public c()
  {
    int j = 0;
    while (j < g.length)
    {
      g[j] = null;
      j += 1;
    }
    a();
  }
  
  public final void a()
  {
    int k = 0;
    b = false;
    c = true;
    f = null;
    d = false;
    a = d.a;
    e = 0;
    int j = k;
    if (h != null)
    {
      h.d();
      j = k;
    }
    while (j < g.length)
    {
      if (g[j] != null) {
        g[j].d();
      }
      j += 1;
    }
  }
}

/* Location:
 * Qualified Name:     org.a.a.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */