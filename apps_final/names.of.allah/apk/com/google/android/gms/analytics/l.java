package com.google.android.gms.analytics;

import android.util.Log;

class l
  implements Logger
{
  private int tK = 1;
  
  private String L(String paramString)
  {
    return Thread.currentThread().toString() + ": " + paramString;
  }
  
  public void error(Exception paramException)
  {
    if (tK <= 3) {
      Log.e("GAV4", null, paramException);
    }
  }
  
  public void error(String paramString)
  {
    if (tK <= 3) {
      Log.e("GAV4", L(paramString));
    }
  }
  
  public int getLogLevel()
  {
    return tK;
  }
  
  public void info(String paramString)
  {
    if (tK <= 1) {
      Log.i("GAV4", L(paramString));
    }
  }
  
  public void setLogLevel(int paramInt)
  {
    tK = paramInt;
  }
  
  public void verbose(String paramString)
  {
    if (tK <= 0) {
      Log.v("GAV4", L(paramString));
    }
  }
  
  public void warn(String paramString)
  {
    if (tK <= 2) {
      Log.w("GAV4", L(paramString));
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.l
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */