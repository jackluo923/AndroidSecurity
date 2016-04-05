package com.google.zxing;

import com.google.zxing.common.BitArray;
import com.google.zxing.common.BitMatrix;

public final class BinaryBitmap
{
  private final Binarizer binarizer;
  private BitMatrix matrix;
  
  public BinaryBitmap(Binarizer paramBinarizer)
  {
    if (paramBinarizer == null) {
      throw new IllegalArgumentException("Binarizer must be non-null.");
    }
    binarizer = paramBinarizer;
  }
  
  public BinaryBitmap crop(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    LuminanceSource localLuminanceSource = binarizer.getLuminanceSource().crop(paramInt1, paramInt2, paramInt3, paramInt4);
    return new BinaryBitmap(binarizer.createBinarizer(localLuminanceSource));
  }
  
  public BitMatrix getBlackMatrix()
    throws NotFoundException
  {
    if (matrix == null) {
      matrix = binarizer.getBlackMatrix();
    }
    return matrix;
  }
  
  public BitArray getBlackRow(int paramInt, BitArray paramBitArray)
    throws NotFoundException
  {
    return binarizer.getBlackRow(paramInt, paramBitArray);
  }
  
  public int getHeight()
  {
    return binarizer.getHeight();
  }
  
  public int getWidth()
  {
    return binarizer.getWidth();
  }
  
  public boolean isCropSupported()
  {
    return binarizer.getLuminanceSource().isCropSupported();
  }
  
  public boolean isRotateSupported()
  {
    return binarizer.getLuminanceSource().isRotateSupported();
  }
  
  public BinaryBitmap rotateCounterClockwise()
  {
    LuminanceSource localLuminanceSource = binarizer.getLuminanceSource().rotateCounterClockwise();
    return new BinaryBitmap(binarizer.createBinarizer(localLuminanceSource));
  }
  
  public BinaryBitmap rotateCounterClockwise45()
  {
    LuminanceSource localLuminanceSource = binarizer.getLuminanceSource().rotateCounterClockwise45();
    return new BinaryBitmap(binarizer.createBinarizer(localLuminanceSource));
  }
}

/* Location:
 * Qualified Name:     com.google.zxing.BinaryBitmap
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */