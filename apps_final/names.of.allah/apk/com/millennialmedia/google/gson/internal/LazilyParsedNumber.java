package com.millennialmedia.google.gson.internal;

import java.math.BigDecimal;
import java.math.BigInteger;

public final class LazilyParsedNumber
  extends Number
{
  private final String value;
  
  public LazilyParsedNumber(String paramString)
  {
    value = paramString;
  }
  
  private Object writeReplace()
  {
    return new BigDecimal(value);
  }
  
  public final double doubleValue()
  {
    return Double.parseDouble(value);
  }
  
  public final float floatValue()
  {
    return Float.parseFloat(value);
  }
  
  public final int intValue()
  {
    try
    {
      int i = Integer.parseInt(value);
      return i;
    }
    catch (NumberFormatException localNumberFormatException1)
    {
      try
      {
        long l = Long.parseLong(value);
        return (int)l;
      }
      catch (NumberFormatException localNumberFormatException2) {}
    }
    return new BigInteger(value).intValue();
  }
  
  public final long longValue()
  {
    try
    {
      long l = Long.parseLong(value);
      return l;
    }
    catch (NumberFormatException localNumberFormatException) {}
    return new BigInteger(value).longValue();
  }
  
  public final String toString()
  {
    return value;
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.google.gson.internal.LazilyParsedNumber
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */