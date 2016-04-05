package com.google.zxing.oned.rss.expanded.decoders;

final class DecodedInformation
  extends DecodedObject
{
  private final String newString;
  private final boolean remaining;
  private final int remainingValue;
  
  DecodedInformation(int paramInt, String paramString)
  {
    super(paramInt);
    newString = paramString;
    remaining = false;
    remainingValue = 0;
  }
  
  DecodedInformation(int paramInt1, String paramString, int paramInt2)
  {
    super(paramInt1);
    remaining = true;
    remainingValue = paramInt2;
    newString = paramString;
  }
  
  String getNewString()
  {
    return newString;
  }
  
  int getRemainingValue()
  {
    return remainingValue;
  }
  
  boolean isRemaining()
  {
    return remaining;
  }
}

/* Location:
 * Qualified Name:     com.google.zxing.oned.rss.expanded.decoders.DecodedInformation
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */