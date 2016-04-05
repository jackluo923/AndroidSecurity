package com.google.android.gms.tagmanager;

import java.util.Arrays;

final class DataLayer$a
{
  public final String JI;
  public final Object afe;
  
  DataLayer$a(String paramString, Object paramObject)
  {
    JI = paramString;
    afe = paramObject;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof a)) {}
    do
    {
      return false;
      paramObject = (a)paramObject;
    } while ((!JI.equals(JI)) || (!afe.equals(afe)));
    return true;
  }
  
  public final int hashCode()
  {
    return Arrays.hashCode(new Integer[] { Integer.valueOf(JI.hashCode()), Integer.valueOf(afe.hashCode()) });
  }
  
  public final String toString()
  {
    return "Key: " + JI + " value: " + afe.toString();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.DataLayer.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */