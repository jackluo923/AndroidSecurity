package com.google.android.gms.internal;

import android.os.Build.VERSION;

public final class iq
{
  private static boolean aF(int paramInt)
  {
    return Build.VERSION.SDK_INT >= paramInt;
  }
  
  public static boolean fX()
  {
    return aF(11);
  }
  
  public static boolean fY()
  {
    return aF(12);
  }
  
  public static boolean fZ()
  {
    return aF(13);
  }
  
  public static boolean ga()
  {
    return aF(14);
  }
  
  public static boolean gb()
  {
    return aF(16);
  }
  
  public static boolean gc()
  {
    return aF(17);
  }
  
  public static boolean gd()
  {
    return aF(19);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.iq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */