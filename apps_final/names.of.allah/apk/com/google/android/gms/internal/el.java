package com.google.android.gms.internal;

import android.os.Bundle;

public class el
{
  private final Object lq = new Object();
  private final ei rA;
  private final String rD;
  private int rZ;
  private int sa;
  
  el(ei paramei, String paramString)
  {
    rA = paramei;
    rD = paramString;
  }
  
  public el(String paramString)
  {
    this(ei.bC(), paramString);
  }
  
  public void a(int paramInt1, int paramInt2)
  {
    synchronized (lq)
    {
      rZ = paramInt1;
      sa = paramInt2;
      rA.a(rD, this);
      return;
    }
  }
  
  public Bundle toBundle()
  {
    synchronized (lq)
    {
      Bundle localBundle = new Bundle();
      localBundle.putInt("pmnli", rZ);
      localBundle.putInt("pmnll", sa);
      return localBundle;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.el
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */