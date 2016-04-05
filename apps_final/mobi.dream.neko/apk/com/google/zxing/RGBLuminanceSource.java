package com.google.zxing;

public final class RGBLuminanceSource
  extends LuminanceSource
{
  private final int dataHeight;
  private final int dataWidth;
  private final int left;
  private final byte[] luminances;
  private final int top;
  
  public RGBLuminanceSource(int paramInt1, int paramInt2, int[] paramArrayOfInt)
  {
    super(paramInt1, paramInt2);
    dataWidth = paramInt1;
    dataHeight = paramInt2;
    left = 0;
    top = 0;
    luminances = new byte[paramInt1 * paramInt2];
    int i = 0;
    while (i < paramInt2)
    {
      int k = i * paramInt1;
      int j = 0;
      if (j < paramInt1)
      {
        int i1 = paramArrayOfInt[(k + j)];
        int m = i1 >> 16 & 0xFF;
        int n = i1 >> 8 & 0xFF;
        i1 &= 0xFF;
        if ((m == n) && (n == i1)) {
          luminances[(k + j)] = ((byte)m);
        }
        for (;;)
        {
          j += 1;
          break;
          luminances[(k + j)] = ((byte)(m + n + n + i1 >> 2));
        }
      }
      i += 1;
    }
  }
  
  private RGBLuminanceSource(byte[] paramArrayOfByte, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6)
  {
    super(paramInt5, paramInt6);
    if ((paramInt3 + paramInt5 > paramInt1) || (paramInt4 + paramInt6 > paramInt2)) {
      throw new IllegalArgumentException("Crop rectangle does not fit within image data.");
    }
    luminances = paramArrayOfByte;
    dataWidth = paramInt1;
    dataHeight = paramInt2;
    left = paramInt3;
    top = paramInt4;
  }
  
  public LuminanceSource crop(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    return new RGBLuminanceSource(luminances, dataWidth, dataHeight, left + paramInt1, top + paramInt2, paramInt3, paramInt4);
  }
  
  public byte[] getMatrix()
  {
    int k = getWidth();
    int m = getHeight();
    Object localObject;
    if ((k == dataWidth) && (m == dataHeight))
    {
      localObject = luminances;
      return (byte[])localObject;
    }
    int i = k * m;
    byte[] arrayOfByte1 = new byte[i];
    int j = top * dataWidth + left;
    if (k == dataWidth)
    {
      System.arraycopy(luminances, j, arrayOfByte1, 0, i);
      return arrayOfByte1;
    }
    byte[] arrayOfByte2 = luminances;
    i = 0;
    for (;;)
    {
      localObject = arrayOfByte1;
      if (i >= m) {
        break;
      }
      System.arraycopy(arrayOfByte2, j, arrayOfByte1, i * k, k);
      j += dataWidth;
      i += 1;
    }
  }
  
  public byte[] getRow(int paramInt, byte[] paramArrayOfByte)
  {
    if ((paramInt < 0) || (paramInt >= getHeight())) {
      throw new IllegalArgumentException("Requested row is outside the image: " + paramInt);
    }
    int i = getWidth();
    byte[] arrayOfByte;
    if (paramArrayOfByte != null)
    {
      arrayOfByte = paramArrayOfByte;
      if (paramArrayOfByte.length >= i) {}
    }
    else
    {
      arrayOfByte = new byte[i];
    }
    int j = top;
    int k = dataWidth;
    int m = left;
    System.arraycopy(luminances, (j + paramInt) * k + m, arrayOfByte, 0, i);
    return arrayOfByte;
  }
  
  public boolean isCropSupported()
  {
    return true;
  }
}

/* Location:
 * Qualified Name:     com.google.zxing.RGBLuminanceSource
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */