package com.google.zxing.oned.rss.expanded.decoders;

final class DecodedChar
  extends DecodedObject
{
  static final char FNC1 = '$';
  private final char value;
  
  DecodedChar(int paramInt, char paramChar)
  {
    super(paramInt);
    value = paramChar;
  }
  
  char getValue()
  {
    return value;
  }
  
  boolean isFNC1()
  {
    return value == '$';
  }
}

/* Location:
 * Qualified Name:     com.google.zxing.oned.rss.expanded.decoders.DecodedChar
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */