package com.google.android.gms.internal;

import android.text.TextUtils;

public abstract class gh
{
  protected final go BA;
  private final String BB;
  private gq BC;
  
  protected gh(String paramString1, String paramString2, String paramString3)
  {
    gj.ak(paramString1);
    BB = paramString1;
    BA = new go(paramString2);
    if (!TextUtils.isEmpty(paramString3)) {
      BA.ap(paramString3);
    }
  }
  
  public void a(long paramLong, int paramInt) {}
  
  public final void a(gq paramgq)
  {
    BC = paramgq;
    if (BC == null) {
      dZ();
    }
  }
  
  protected final void a(String paramString1, long paramLong, String paramString2)
  {
    BA.a("Sending text message: %s to: %s", new Object[] { paramString1, paramString2 });
    BC.a(BB, paramString1, paramLong, paramString2);
  }
  
  public void ai(String paramString) {}
  
  protected final long dY()
  {
    return BC.dW();
  }
  
  public void dZ() {}
  
  public final String getNamespace()
  {
    return BB;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.gh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */