package com.google.zxing.oned.rss.expanded.decoders;

abstract class DecodedObject
{
  private final int newPosition;
  
  DecodedObject(int paramInt)
  {
    newPosition = paramInt;
  }
  
  final int getNewPosition()
  {
    return newPosition;
  }
}

/* Location:
 * Qualified Name:     com.google.zxing.oned.rss.expanded.decoders.DecodedObject
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */