package com.google.zxing.pdf417.encoder;

import java.lang.reflect.Array;

final class BarcodeMatrix
{
  private int currentRow;
  private final int height;
  private final BarcodeRow[] matrix;
  private final int width;
  
  BarcodeMatrix(int paramInt1, int paramInt2)
  {
    matrix = new BarcodeRow[paramInt1 + 2];
    int i = 0;
    int j = matrix.length;
    while (i < j)
    {
      matrix[i] = new BarcodeRow((paramInt2 + 4) * 17 + 1);
      i += 1;
    }
    width = (paramInt2 * 17);
    height = (paramInt1 + 2);
    currentRow = 0;
  }
  
  BarcodeRow getCurrentRow()
  {
    return matrix[currentRow];
  }
  
  byte[][] getMatrix()
  {
    return getScaledMatrix(1, 1);
  }
  
  byte[][] getScaledMatrix(int paramInt)
  {
    return getScaledMatrix(paramInt, paramInt);
  }
  
  byte[][] getScaledMatrix(int paramInt1, int paramInt2)
  {
    int i = height;
    int j = width;
    byte[][] arrayOfByte = (byte[][])Array.newInstance(Byte.TYPE, new int[] { i * paramInt2, j * paramInt1 });
    j = height * paramInt2;
    i = 0;
    while (i < j)
    {
      arrayOfByte[(j - i - 1)] = matrix[(i / paramInt2)].getScaledRow(paramInt1);
      i += 1;
    }
    return arrayOfByte;
  }
  
  void set(int paramInt1, int paramInt2, byte paramByte)
  {
    matrix[paramInt2].set(paramInt1, paramByte);
  }
  
  void setMatrix(int paramInt1, int paramInt2, boolean paramBoolean)
  {
    if (paramBoolean) {}
    for (int i = 1;; i = 0)
    {
      set(paramInt1, paramInt2, (byte)i);
      return;
    }
  }
  
  void startRow()
  {
    currentRow += 1;
  }
}

/* Location:
 * Qualified Name:     com.google.zxing.pdf417.encoder.BarcodeMatrix
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */