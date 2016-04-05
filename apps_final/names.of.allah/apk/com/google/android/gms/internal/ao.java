package com.google.android.gms.internal;

import com.google.android.gms.ads.doubleclick.AppEventListener;

public final class ao
  extends at.a
{
  private final AppEventListener mf;
  
  public ao(AppEventListener paramAppEventListener)
  {
    mf = paramAppEventListener;
  }
  
  public final void onAppEvent(String paramString1, String paramString2)
  {
    mf.onAppEvent(paramString1, paramString2);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ao
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */