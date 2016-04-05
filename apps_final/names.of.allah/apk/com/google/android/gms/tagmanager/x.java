package com.google.android.gms.tagmanager;

import android.util.Log;

class x
  implements bi
{
  private int tK = 5;
  
  public void A(String paramString)
  {
    if (tK <= 6) {
      Log.e("GoogleTagManager", paramString);
    }
  }
  
  public void B(String paramString)
  {
    if (tK <= 4) {
      Log.i("GoogleTagManager", paramString);
    }
  }
  
  public void C(String paramString)
  {
    if (tK <= 2) {
      Log.v("GoogleTagManager", paramString);
    }
  }
  
  public void D(String paramString)
  {
    if (tK <= 5) {
      Log.w("GoogleTagManager", paramString);
    }
  }
  
  public void b(String paramString, Throwable paramThrowable)
  {
    if (tK <= 6) {
      Log.e("GoogleTagManager", paramString, paramThrowable);
    }
  }
  
  public void c(String paramString, Throwable paramThrowable)
  {
    if (tK <= 5) {
      Log.w("GoogleTagManager", paramString, paramThrowable);
    }
  }
  
  public void setLogLevel(int paramInt)
  {
    tK = paramInt;
  }
  
  public void z(String paramString)
  {
    if (tK <= 3) {
      Log.d("GoogleTagManager", paramString);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.x
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */