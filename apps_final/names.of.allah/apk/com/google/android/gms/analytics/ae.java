package com.google.android.gms.analytics;

import android.content.Context;
import android.content.res.Resources;
import android.util.DisplayMetrics;

class ae
  implements m
{
  private static Object tn = new Object();
  private static ae wW;
  private final Context mContext;
  
  protected ae(Context paramContext)
  {
    mContext = paramContext;
  }
  
  public static ae dq()
  {
    synchronized (tn)
    {
      ae localae = wW;
      return localae;
    }
  }
  
  public static void r(Context paramContext)
  {
    synchronized (tn)
    {
      if (wW == null) {
        wW = new ae(paramContext);
      }
      return;
    }
  }
  
  public boolean J(String paramString)
  {
    return "&sr".equals(paramString);
  }
  
  protected String dr()
  {
    DisplayMetrics localDisplayMetrics = mContext.getResources().getDisplayMetrics();
    return widthPixels + "x" + heightPixels;
  }
  
  public String getValue(String paramString)
  {
    if (paramString == null) {}
    while (!paramString.equals("&sr")) {
      return null;
    }
    return dr();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.ae
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */