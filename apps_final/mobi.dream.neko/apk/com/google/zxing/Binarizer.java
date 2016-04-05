package com.google.zxing;

import com.google.zxing.common.BitArray;
import com.google.zxing.common.BitMatrix;

public abstract class Binarizer
{
  private final LuminanceSource source;
  
  protected Binarizer(LuminanceSource paramLuminanceSource)
  {
    source = paramLuminanceSource;
  }
  
  public abstract Binarizer createBinarizer(LuminanceSource paramLuminanceSource);
  
  public abstract BitMatrix getBlackMatrix()
    throws NotFoundException;
  
  public abstract BitArray getBlackRow(int paramInt, BitArray paramBitArray)
    throws NotFoundException;
  
  public final int getHeight()
  {
    return source.getHeight();
  }
  
  public final LuminanceSource getLuminanceSource()
  {
    return source;
  }
  
  public final int getWidth()
  {
    return source.getWidth();
  }
}

/* Location:
 * Qualified Name:     com.google.zxing.Binarizer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */