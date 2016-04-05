package com.google.android.gms.games.internal.constants;

public final class PlatformType
{
  public static String cm(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      throw new IllegalArgumentException("Unknown platform type: " + paramInt);
    case 0: 
      return "ANDROID";
    case 1: 
      return "IOS";
    }
    return "WEB_APP";
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.internal.constants.PlatformType
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */