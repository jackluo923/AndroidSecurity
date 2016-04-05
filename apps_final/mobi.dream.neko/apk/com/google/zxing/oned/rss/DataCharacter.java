package com.google.zxing.oned.rss;

public class DataCharacter
{
  private final int checksumPortion;
  private final int value;
  
  public DataCharacter(int paramInt1, int paramInt2)
  {
    value = paramInt1;
    checksumPortion = paramInt2;
  }
  
  public final int getChecksumPortion()
  {
    return checksumPortion;
  }
  
  public final int getValue()
  {
    return value;
  }
}

/* Location:
 * Qualified Name:     com.google.zxing.oned.rss.DataCharacter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */