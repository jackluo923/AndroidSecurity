package com.google.zxing.oned.rss.expanded.decoders;

final class DecodedNumeric
  extends DecodedObject
{
  static final int FNC1 = 10;
  private final int firstDigit;
  private final int secondDigit;
  
  DecodedNumeric(int paramInt1, int paramInt2, int paramInt3)
  {
    super(paramInt1);
    firstDigit = paramInt2;
    secondDigit = paramInt3;
    if ((firstDigit < 0) || (firstDigit > 10)) {
      throw new IllegalArgumentException("Invalid firstDigit: " + paramInt2);
    }
    if ((secondDigit < 0) || (secondDigit > 10)) {
      throw new IllegalArgumentException("Invalid secondDigit: " + paramInt3);
    }
  }
  
  int getFirstDigit()
  {
    return firstDigit;
  }
  
  int getSecondDigit()
  {
    return secondDigit;
  }
  
  int getValue()
  {
    return firstDigit * 10 + secondDigit;
  }
  
  boolean isAnyFNC1()
  {
    return (firstDigit == 10) || (secondDigit == 10);
  }
  
  boolean isFirstDigitFNC1()
  {
    return firstDigit == 10;
  }
  
  boolean isSecondDigitFNC1()
  {
    return secondDigit == 10;
  }
}

/* Location:
 * Qualified Name:     com.google.zxing.oned.rss.expanded.decoders.DecodedNumeric
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */