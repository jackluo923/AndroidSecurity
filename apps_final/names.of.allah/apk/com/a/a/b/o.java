package com.a.a.b;

import android.graphics.Bitmap;
import android.os.Handler;
import com.a.a.b.e.a;

final class o
  implements Runnable
{
  private final i a;
  private final Bitmap b;
  private final k c;
  private final Handler d;
  
  public o(i parami, Bitmap paramBitmap, k paramk, Handler paramHandler)
  {
    a = parami;
    b = paramBitmap;
    c = paramk;
    d = paramHandler;
  }
  
  public final void run()
  {
    if (a.a.u) {
      com.a.a.c.d.a("PostProcess image before displaying [%s]", new Object[] { c.b });
    }
    Object localObject = c.e.l;
    Bitmap localBitmap = b;
    localObject = ((a)localObject).a();
    d.post(new c((Bitmap)localObject, c, a, com.a.a.b.a.g.c));
  }
}

/* Location:
 * Qualified Name:     com.a.a.b.o
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */