package com.adsdk.sdk;

import android.content.Context;
import android.content.res.Resources;

public final class Log
{
  public static boolean LOGGING_ENABLED = false;
  
  public static void d(String paramString)
  {
    d("ADSDK", paramString);
  }
  
  public static void d(String paramString1, String paramString2)
  {
    if (isLoggingEnabled()) {
      android.util.Log.d(paramString1, paramString2, null);
    }
  }
  
  public static void d(String paramString1, String paramString2, Throwable paramThrowable)
  {
    if (isLoggingEnabled()) {
      android.util.Log.d(paramString1, paramString2, paramThrowable);
    }
  }
  
  public static void d(String paramString, Throwable paramThrowable)
  {
    if (isLoggingEnabled()) {
      android.util.Log.d("ADSDK", paramString, paramThrowable);
    }
  }
  
  public static void e(String paramString)
  {
    e("ADSDK", paramString);
  }
  
  public static void e(String paramString1, String paramString2)
  {
    if (isLoggingEnabled()) {
      android.util.Log.w(paramString1, paramString2, null);
    }
  }
  
  public static void e(String paramString1, String paramString2, Throwable paramThrowable)
  {
    if (isLoggingEnabled()) {
      android.util.Log.w(paramString1, paramString2, paramThrowable);
    }
  }
  
  public static void e(String paramString, Throwable paramThrowable)
  {
    if (isLoggingEnabled()) {
      android.util.Log.w("ADSDK", paramString, paramThrowable);
    }
  }
  
  public static void i(String paramString)
  {
    i("ADSDK", paramString);
  }
  
  public static void i(String paramString1, String paramString2)
  {
    if (isLoggingEnabled()) {
      android.util.Log.i(paramString1, paramString2, null);
    }
  }
  
  public static void i(String paramString1, String paramString2, Throwable paramThrowable)
  {
    if (isLoggingEnabled()) {
      android.util.Log.i(paramString1, paramString2, paramThrowable);
    }
  }
  
  public static void i(String paramString, Throwable paramThrowable)
  {
    if (isLoggingEnabled()) {
      android.util.Log.i("ADSDK", paramString, paramThrowable);
    }
  }
  
  private static boolean isLoggingEnabled()
  {
    return LOGGING_ENABLED;
  }
  
  public static boolean isLoggingEnabled(Context paramContext)
  {
    int i = paramContext.getResources().getIdentifier("adsdk_debug_enabled", "string", paramContext.getPackageName());
    return (i != 0) && (paramContext.getResources().getString(i).equalsIgnoreCase("true"));
  }
  
  public static void v(String paramString)
  {
    v("ADSDK", paramString);
  }
  
  public static void v(String paramString1, String paramString2)
  {
    if (isLoggingEnabled()) {
      android.util.Log.v(paramString1, paramString2, null);
    }
  }
  
  public static void v(String paramString1, String paramString2, Throwable paramThrowable)
  {
    if (isLoggingEnabled()) {
      android.util.Log.v(paramString1, paramString2, paramThrowable);
    }
  }
  
  public static void v(String paramString, Throwable paramThrowable)
  {
    if (isLoggingEnabled()) {
      android.util.Log.v("ADSDK", paramString, paramThrowable);
    }
  }
  
  public static void w(String paramString)
  {
    w("ADSDK", paramString);
  }
  
  public static void w(String paramString1, String paramString2)
  {
    if (isLoggingEnabled()) {
      android.util.Log.w(paramString1, paramString2, null);
    }
  }
  
  public static void w(String paramString1, String paramString2, Throwable paramThrowable)
  {
    if (isLoggingEnabled()) {
      android.util.Log.w(paramString1, paramString2, paramThrowable);
    }
  }
  
  public static void w(String paramString, Throwable paramThrowable)
  {
    if (isLoggingEnabled()) {
      android.util.Log.w("ADSDK", paramString, paramThrowable);
    }
  }
}

/* Location:
 * Qualified Name:     com.adsdk.sdk.Log
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */