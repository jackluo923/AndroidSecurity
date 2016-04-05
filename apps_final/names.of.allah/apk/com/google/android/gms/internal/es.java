package com.google.android.gms.internal;

import android.content.Context;
import android.webkit.WebSettings;

public final class es
{
  public static void a(Context paramContext, WebSettings paramWebSettings)
  {
    er.a(paramContext, paramWebSettings);
    paramWebSettings.setMediaPlaybackRequiresUserGesture(false);
  }
  
  public static String getDefaultUserAgent(Context paramContext)
  {
    return WebSettings.getDefaultUserAgent(paramContext);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.es
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */