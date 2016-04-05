package com.google.android.gms.tagmanager;

import android.os.Build.VERSION;

class bm
{
  public bl lM()
  {
    if (le() < 8) {
      return new av();
    }
    return new aw();
  }
  
  int le()
  {
    return Build.VERSION.SDK_INT;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.bm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */