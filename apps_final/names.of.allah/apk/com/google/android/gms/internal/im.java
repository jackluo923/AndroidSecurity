package com.google.android.gms.internal;

public final class im
  implements ik
{
  private static im Hs;
  
  public static ik fW()
  {
    try
    {
      if (Hs == null) {
        Hs = new im();
      }
      im localim = Hs;
      return localim;
    }
    finally {}
  }
  
  public final long currentTimeMillis()
  {
    return System.currentTimeMillis();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.im
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */