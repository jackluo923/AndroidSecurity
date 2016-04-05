package com.google.android.gms.internal;

import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;

public class dp
  implements Runnable
{
  private final int ks;
  private final int kt;
  protected final ey lL;
  private final Handler pI;
  private final long pJ;
  private long pK;
  private ez.a pL;
  protected boolean pM;
  protected boolean pN;
  
  public dp(ez.a parama, ey paramey, int paramInt1, int paramInt2)
  {
    this(parama, paramey, paramInt1, paramInt2, 200L, 50L);
  }
  
  public dp(ez.a parama, ey paramey, int paramInt1, int paramInt2, long paramLong1, long paramLong2)
  {
    pJ = paramLong1;
    pK = paramLong2;
    pI = new Handler(Looper.getMainLooper());
    lL = paramey;
    pL = parama;
    pM = false;
    pN = false;
    kt = paramInt2;
    ks = paramInt1;
  }
  
  public void a(dv paramdv, fd paramfd)
  {
    lL.setWebViewClient(paramfd);
    ey localey = lL;
    if (TextUtils.isEmpty(oy)) {}
    for (paramfd = null;; paramfd = ep.v(oy))
    {
      localey.loadDataWithBaseURL(paramfd, qb, "text/html", "UTF-8", null);
      return;
    }
  }
  
  public void b(dv paramdv)
  {
    a(paramdv, new fd(this, lL, qk));
  }
  
  public void bj()
  {
    pI.postDelayed(this, pJ);
  }
  
  public void bk()
  {
    try
    {
      pM = true;
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public boolean bl()
  {
    try
    {
      boolean bool = pM;
      return bool;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public boolean bm()
  {
    return pN;
  }
  
  public void run()
  {
    if ((lL == null) || (bl()))
    {
      pL.a(lL);
      return;
    }
    new dp.a(this, lL).execute(new Void[0]);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.dp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */