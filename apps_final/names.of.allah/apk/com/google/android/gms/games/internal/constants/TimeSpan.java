package com.google.android.gms.games.internal.constants;

public final class TimeSpan
{
  private TimeSpan()
  {
    throw new AssertionError("Uninstantiable");
  }
  
  public static String cm(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      throw new IllegalArgumentException("Unknown time span " + paramInt);
    case 0: 
      return "DAILY";
    case 1: 
      return "WEEKLY";
    }
    return "ALL_TIME";
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.internal.constants.TimeSpan
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */