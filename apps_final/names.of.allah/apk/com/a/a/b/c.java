package com.a.a.b;

import android.graphics.Bitmap;
import android.view.View;
import android.widget.ImageView;
import com.a.a.b.a.g;
import com.a.a.b.c.a;
import java.lang.ref.Reference;

final class c
  implements Runnable
{
  boolean a;
  private final Bitmap b;
  private final String c;
  private final Reference<ImageView> d;
  private final String e;
  private final a f;
  private final com.a.a.b.a.d g;
  private final i h;
  private final g i;
  
  public c(Bitmap paramBitmap, k paramk, i parami, g paramg)
  {
    b = paramBitmap;
    c = a;
    d = c;
    e = b;
    f = e.m;
    g = f;
    h = parami;
    i = paramg;
  }
  
  public final void run()
  {
    Object localObject1 = (ImageView)d.get();
    if (localObject1 == null)
    {
      if (a) {
        com.a.a.c.d.a("ImageView was collected by GC. Task is cancelled. [%s]", new Object[] { e });
      }
      localObject1 = g;
      localObject1 = c;
      return;
    }
    Object localObject2 = h.a((ImageView)localObject1);
    if (!e.equals(localObject2)) {}
    for (int j = 1; j != 0; j = 0)
    {
      if (a) {
        com.a.a.c.d.a("ImageView is reused for another image. Task is cancelled. [%s]", new Object[] { e });
      }
      localObject1 = g;
      localObject1 = c;
      return;
    }
    if (a) {
      com.a.a.c.d.a("Display image in ImageView (loaded from %1$s) [%2$s]", new Object[] { i, e });
    }
    localObject2 = f;
    Bitmap localBitmap = b;
    g localg = i;
    localObject2 = ((a)localObject2).a(localBitmap, (ImageView)localObject1);
    g.a(c, (View)localObject1, (Bitmap)localObject2);
    h.b((ImageView)localObject1);
  }
}

/* Location:
 * Qualified Name:     com.a.a.b.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */