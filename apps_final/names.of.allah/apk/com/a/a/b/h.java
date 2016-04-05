package com.a.a.b;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.os.Build.VERSION;
import com.a.a.b.a.i;
import com.a.a.b.a.k;
import java.util.concurrent.Executor;

public final class h
{
  public static final k a = k.a;
  private boolean A = false;
  private Context b;
  private int c = 0;
  private int d = 0;
  private int e = 0;
  private int f = 0;
  private Bitmap.CompressFormat g = null;
  private int h = 0;
  private com.a.a.b.e.a i = null;
  private Executor j = null;
  private Executor k = null;
  private boolean l = false;
  private boolean m = false;
  private int n = 3;
  private int o = 4;
  private boolean p = false;
  private k q = a;
  private int r = 0;
  private int s = 0;
  private int t = 0;
  private com.a.a.a.b.c<String, Bitmap> u = null;
  private com.a.a.a.a.b v = null;
  private com.a.a.a.a.b.a w = null;
  private com.a.a.b.d.c x = null;
  private com.a.a.b.b.d y;
  private d z = null;
  
  public h(Context paramContext)
  {
    b = paramContext.getApplicationContext();
  }
  
  public final h a()
  {
    if ((j != null) || (k != null)) {
      com.a.a.c.d.c("threadPoolSize(), threadPriority() and tasksProcessingOrder() calls can overlap taskExecutor() and taskExecutorForCachedImages() calls.", new Object[0]);
    }
    o = 3;
    return this;
  }
  
  public final h a(com.a.a.a.a.b paramb)
  {
    if ((s > 0) || (t > 0)) {
      com.a.a.c.d.c("discCache(), discCacheSize() and discCacheFileCount calls overlap each other", new Object[0]);
    }
    if (w != null) {
      com.a.a.c.d.c("discCache() and discCacheFileNameGenerator() calls overlap each other", new Object[0]);
    }
    v = paramb;
    return this;
  }
  
  public final h a(com.a.a.a.b.c<String, Bitmap> paramc)
  {
    if (r != 0) {
      com.a.a.c.d.c("memoryCache() and memoryCacheSize() calls overlap each other", new Object[0]);
    }
    u = paramc;
    return this;
  }
  
  public final h a(k paramk)
  {
    if ((j != null) || (k != null)) {
      com.a.a.c.d.c("threadPoolSize(), threadPriority() and tasksProcessingOrder() calls can overlap taskExecutor() and taskExecutorForCachedImages() calls.", new Object[0]);
    }
    q = paramk;
    return this;
  }
  
  public final h b()
  {
    p = true;
    return this;
  }
  
  public final g c()
  {
    label52:
    com.a.a.a.a.b.a locala;
    int i1;
    int i2;
    if (j == null)
    {
      j = a.a(n, o, q);
      if (k != null) {
        break label288;
      }
      k = a.a(n, o, q);
      if (v == null)
      {
        if (w == null) {
          w = new com.a.a.a.a.b.b();
        }
        localObject = b;
        locala = w;
        i1 = s;
        i2 = t;
        if (i1 <= 0) {
          break label296;
        }
        localObject = new com.a.a.a.a.a.b(com.a.a.c.e.b((Context)localObject), locala, i1);
        label116:
        v = ((com.a.a.a.a.b)localObject);
      }
      if (u == null)
      {
        i2 = r;
        i1 = i2;
        if (i2 == 0) {
          i1 = (int)(Runtime.getRuntime().maxMemory() / 8L);
        }
        if (Build.VERSION.SDK_INT < 9) {
          break label335;
        }
      }
    }
    label288:
    label296:
    label335:
    for (Object localObject = new com.a.a.a.b.a.c(i1);; localObject = new com.a.a.a.b.a.b(i1))
    {
      u = ((com.a.a.a.b.c)localObject);
      if (p) {
        u = new com.a.a.a.b.a.a(u, new i());
      }
      if (x == null) {
        x = new com.a.a.b.d.a(b);
      }
      if (y == null) {
        y = new com.a.a.b.b.a(A);
      }
      if (z == null) {
        z = new e().f();
      }
      return new g(this, (byte)0);
      l = true;
      break;
      m = true;
      break label52;
      if (i2 > 0)
      {
        localObject = new com.a.a.a.a.a.a(com.a.a.c.e.b((Context)localObject), locala, i2);
        break label116;
      }
      localObject = new com.a.a.a.a.a.c(com.a.a.c.e.a((Context)localObject), locala);
      break label116;
    }
  }
}

/* Location:
 * Qualified Name:     com.a.a.b.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */