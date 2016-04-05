package com.google.zxing;

public final class FormatException
  extends ReaderException
{
  private static final FormatException instance = new FormatException();
  
  public static FormatException getFormatInstance()
  {
    return instance;
  }
}

/* Location:
 * Qualified Name:     com.google.zxing.FormatException
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */