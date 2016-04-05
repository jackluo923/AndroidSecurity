package com.mobeta.android.dslv;

import android.os.SystemClock;

class u
  implements Runnable
{
  private float a;
  protected long b;
  boolean c;
  private float e = 0.5F;
  private float f;
  private float g;
  private float h;
  private float i;
  
  public u(DragSortListView paramDragSortListView, int paramInt)
  {
    a = paramInt;
    float f1 = 1.0F / (e * 2.0F * (1.0F - e));
    i = f1;
    f = f1;
    g = (e / ((e - 1.0F) * 2.0F));
    h = (1.0F / (1.0F - e));
  }
  
  public void a() {}
  
  public void a(float paramFloat) {}
  
  public void b() {}
  
  public final void c()
  {
    b = SystemClock.uptimeMillis();
    c = false;
    a();
    d.post(this);
  }
  
  public void run()
  {
    if (c) {
      return;
    }
    float f1 = (float)(SystemClock.uptimeMillis() - b) / a;
    if (f1 >= 1.0F)
    {
      a(1.0F);
      b();
      return;
    }
    if (f1 < e) {
      f1 *= f * f1;
    }
    for (;;)
    {
      a(f1);
      d.post(this);
      return;
      if (f1 < 1.0F - e)
      {
        float f2 = g;
        f1 = f1 * h + f2;
      }
      else
      {
        f1 = 1.0F - (f1 - 1.0F) * (i * (f1 - 1.0F));
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.mobeta.android.dslv.u
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */