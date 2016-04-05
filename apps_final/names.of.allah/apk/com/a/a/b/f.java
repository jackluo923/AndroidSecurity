package com.a.a.b;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.ViewGroup.LayoutParams;
import android.widget.ImageView;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.atomic.AtomicBoolean;

public class f
{
  public static final String a = f.class.getSimpleName();
  private static volatile f f;
  private g b;
  private i c;
  private final com.a.a.b.a.d d = new com.a.a.b.a.l();
  private final com.a.a.b.c.a e = new com.a.a.b.c.c();
  
  public static f a()
  {
    if (f == null) {}
    try
    {
      if (f == null) {
        f = new f();
      }
      return f;
    }
    finally {}
  }
  
  private void e()
  {
    if (b == null) {
      throw new IllegalStateException("ImageLoader must be init with configuration before using");
    }
  }
  
  public final void a(g paramg)
  {
    if (paramg == null) {
      try
      {
        throw new IllegalArgumentException("ImageLoader configuration can not be initialized with null");
      }
      finally {}
    }
    if (b == null)
    {
      if (u) {
        com.a.a.c.d.a("Initialize ImageLoader with configuration", new Object[0]);
      }
      c = new i(paramg);
      b = paramg;
    }
    for (;;)
    {
      return;
      com.a.a.c.d.c("Try to initialize ImageLoader which had already been initialized before. To re-init ImageLoader with new configuration call ImageLoader.destroy() at first.", new Object[0]);
    }
  }
  
  public final void a(String paramString, ImageView paramImageView, d paramd)
  {
    a(paramString, paramImageView, paramd, null);
  }
  
  public final void a(String paramString, ImageView paramImageView, d paramd, com.a.a.b.a.d paramd1)
  {
    int i = 1;
    e();
    if (paramImageView == null) {
      throw new IllegalArgumentException("Wrong arguments were passed to displayImage() method (ImageView reference must not be null)");
    }
    if (paramd1 == null) {
      paramd1 = d;
    }
    for (;;)
    {
      if (paramd == null) {
        paramd = b.t;
      }
      for (;;)
      {
        if (TextUtils.isEmpty(paramString))
        {
          c.b(paramImageView);
          paramd1.a();
          if (b != 0)
          {
            if (i == 0) {
              break label103;
            }
            paramImageView.setImageResource(b);
          }
          for (;;)
          {
            paramd1.a(paramString, paramImageView, null);
            return;
            i = 0;
            break;
            label103:
            paramImageView.setImageDrawable(null);
          }
        }
        int k = b.b;
        int m = b.c;
        Object localObject1 = paramImageView.getContext().getResources().getDisplayMetrics();
        Object localObject2 = paramImageView.getLayoutParams();
        int j;
        if ((localObject2 != null) && (width == -2))
        {
          j = 0;
          i = j;
          if (j <= 0)
          {
            i = j;
            if (localObject2 != null) {
              i = width;
            }
          }
          j = i;
          if (i <= 0) {
            j = com.a.a.c.a.a(paramImageView, "mMaxWidth");
          }
          if (j > 0) {
            break label695;
          }
        }
        label246:
        label666:
        label681:
        label695:
        for (i = k;; i = j)
        {
          if (i <= 0) {}
          for (k = widthPixels;; k = i)
          {
            if ((localObject2 != null) && (height == -2))
            {
              j = 0;
              i = j;
              if (j <= 0)
              {
                i = j;
                if (localObject2 != null) {
                  i = height;
                }
              }
              j = i;
              if (i <= 0) {
                j = com.a.a.c.a.a(paramImageView, "mMaxHeight");
              }
              if (j > 0) {
                break label681;
              }
            }
            for (i = m;; i = j)
            {
              j = i;
              if (i <= 0) {
                j = heightPixels;
              }
              localObject2 = new com.a.a.b.a.f(k, j);
              String str = paramString + "_" + a + "x" + b;
              c.e.put(Integer.valueOf(paramImageView.hashCode()), str);
              paramd1.a();
              localObject1 = (Bitmap)b.p.a(str);
              if ((localObject1 != null) && (!((Bitmap)localObject1).isRecycled()))
              {
                if (b.u) {
                  com.a.a.c.d.a("Load image from memory cache [%s]", new Object[] { str });
                }
                if (paramd.a())
                {
                  paramString = new k(paramString, paramImageView, (com.a.a.b.a.f)localObject2, str, paramd, paramd1, c.a(paramString));
                  paramString = new o(c, (Bitmap)localObject1, paramString, paramd.b());
                  paramImageView = c;
                  paramImageView.a();
                  c.execute(paramString);
                  return;
                  j = paramImageView.getWidth();
                  break;
                  j = paramImageView.getHeight();
                  break label246;
                }
                paramd = m;
                localObject2 = com.a.a.b.a.g.c;
                paramd.a((Bitmap)localObject1, paramImageView);
                paramd1.a(paramString, paramImageView, (Bitmap)localObject1);
                return;
              }
              if (a != 0)
              {
                i = 1;
                if (i == 0) {
                  break label666;
                }
                paramImageView.setImageResource(a);
              }
              for (;;)
              {
                paramString = new k(paramString, paramImageView, (com.a.a.b.a.f)localObject2, str, paramd, paramd1, c.a(paramString));
                paramString = new l(c, paramString, paramd.b());
                paramImageView = c;
                d.execute(new j(paramImageView, paramString));
                return;
                i = 0;
                break;
                if (d) {
                  paramImageView.setImageDrawable(null);
                }
              }
            }
          }
        }
      }
    }
  }
  
  public final void b()
  {
    e();
    b.p.b();
  }
  
  public final void c()
  {
    c.f.set(true);
  }
  
  public final void d()
  {
    i locali = c;
    synchronized (f)
    {
      f.set(false);
      f.notifyAll();
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.a.a.b.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */