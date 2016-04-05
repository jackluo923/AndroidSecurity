package com.inmobi.commons.internal;

import android.annotation.TargetApi;
import android.content.Context;
import android.webkit.WebSettings;

@TargetApi(17)
class InternalSDKUtil$b
{
  static String a(Context paramContext)
  {
    return WebSettings.getDefaultUserAgent(paramContext);
  }
}

/* Location:
 * Qualified Name:     com.inmobi.commons.internal.InternalSDKUtil.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */