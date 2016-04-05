package com.google.android.gms.analytics;

public final class o
{
  private static String b(String paramString, int paramInt)
  {
    if (paramInt <= 0)
    {
      aa.A("index out of range for " + paramString + " (" + paramInt + ")");
      return "";
    }
    return paramString + paramInt;
  }
  
  static String s(int paramInt)
  {
    return b("&cd", paramInt);
  }
  
  static String t(int paramInt)
  {
    return b("&cm", paramInt);
  }
  
  public static String u(int paramInt)
  {
    return b("&pr", paramInt);
  }
  
  public static String v(int paramInt)
  {
    return b("&promo", paramInt);
  }
  
  public static String w(int paramInt)
  {
    return b("pi", paramInt);
  }
  
  public static String x(int paramInt)
  {
    return b("&il", paramInt);
  }
  
  public static String y(int paramInt)
  {
    return b("cd", paramInt);
  }
  
  public static String z(int paramInt)
  {
    return b("cm", paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.o
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */