package com.google.android.gms.internal;

import android.util.Log;

public final class hg
{
  private final String GF;
  
  public hg(String paramString)
  {
    GF = ((String)hn.f(paramString));
  }
  
  public final void a(String paramString1, String paramString2, Throwable paramThrowable)
  {
    if (ap(4)) {
      Log.i(paramString1, paramString2, paramThrowable);
    }
  }
  
  public final boolean ap(int paramInt)
  {
    return Log.isLoggable(GF, paramInt);
  }
  
  public final void b(String paramString1, String paramString2, Throwable paramThrowable)
  {
    if (ap(6)) {
      Log.e(paramString1, paramString2, paramThrowable);
    }
  }
  
  public final void i(String paramString1, String paramString2)
  {
    if (ap(2)) {
      Log.v(paramString1, paramString2);
    }
  }
  
  public final void j(String paramString1, String paramString2)
  {
    if (ap(5)) {
      Log.w(paramString1, paramString2);
    }
  }
  
  public final void k(String paramString1, String paramString2)
  {
    if (ap(6)) {
      Log.e(paramString1, paramString2);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.hg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */