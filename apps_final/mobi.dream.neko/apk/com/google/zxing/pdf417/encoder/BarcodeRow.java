package com.google.zxing.pdf417.encoder;

final class BarcodeRow
{
  private int currentLocation;
  private final byte[] row;
  
  BarcodeRow(int paramInt)
  {
    row = new byte[paramInt];
    currentLocation = 0;
  }
  
  void addBar(boolean paramBoolean, int paramInt)
  {
    int i = 0;
    while (i < paramInt)
    {
      int j = currentLocation;
      currentLocation = (j + 1);
      set(j, paramBoolean);
      i += 1;
    }
  }
  
  byte[] getRow()
  {
    return row;
  }
  
  byte[] getScaledRow(int paramInt)
  {
    byte[] arrayOfByte = new byte[row.length * paramInt];
    int i = 0;
    while (i < arrayOfByte.length)
    {
      arrayOfByte[i] = row[(i / paramInt)];
      i += 1;
    }
    return arrayOfByte;
  }
  
  void set(int paramInt, byte paramByte)
  {
    row[paramInt] = paramByte;
  }
  
  void set(int paramInt, boolean paramBoolean)
  {
    byte[] arrayOfByte = row;
    if (paramBoolean) {}
    for (int i = 1;; i = 0)
    {
      arrayOfByte[paramInt] = ((byte)i);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.zxing.pdf417.encoder.BarcodeRow
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */