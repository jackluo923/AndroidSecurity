package com.google.android.gms.internal;

public class kt$e
{
  public static int bA(String paramString)
  {
    if (paramString.equals("person")) {
      return 0;
    }
    if (paramString.equals("page")) {
      return 1;
    }
    throw new IllegalArgumentException("Unknown objectType string: " + paramString);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.kt.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */