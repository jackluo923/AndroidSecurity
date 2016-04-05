package com.a.a.b;

import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory.Options;
import android.os.Handler;

public final class e
{
  int a = 0;
  int b = 0;
  int c = 0;
  boolean d = false;
  boolean e = false;
  boolean f = false;
  com.a.a.b.a.e g = com.a.a.b.a.e.b;
  BitmapFactory.Options h = new BitmapFactory.Options();
  int i = 0;
  Object j = null;
  com.a.a.b.e.a k = null;
  com.a.a.b.e.a l = null;
  com.a.a.b.c.a m = new com.a.a.b.c.d();
  Handler n = null;
  
  public e()
  {
    h.inPurgeable = true;
    h.inInputShareable = true;
  }
  
  public final e a()
  {
    a = 2130837748;
    return this;
  }
  
  public final e a(int paramInt)
  {
    b = paramInt;
    return this;
  }
  
  public final e a(Bitmap.Config paramConfig)
  {
    if (paramConfig == null) {
      throw new IllegalArgumentException("bitmapConfig can't be null");
    }
    h.inPreferredConfig = paramConfig;
    return this;
  }
  
  public final e a(com.a.a.b.a.e parame)
  {
    g = parame;
    return this;
  }
  
  public final e a(com.a.a.b.c.a parama)
  {
    if (parama == null) {
      throw new IllegalArgumentException("displayer can't be null");
    }
    m = parama;
    return this;
  }
  
  public final e b()
  {
    d = true;
    return this;
  }
  
  public final e b(int paramInt)
  {
    c = paramInt;
    return this;
  }
  
  public final e c()
  {
    e = true;
    return this;
  }
  
  public final e d()
  {
    f = true;
    return this;
  }
  
  public final e e()
  {
    f = true;
    return this;
  }
  
  public final d f()
  {
    return new d(this, (byte)0);
  }
}

/* Location:
 * Qualified Name:     com.a.a.b.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */