package com.google.zxing;

public final class PlanarYUVLuminanceSource
  extends LuminanceSource
{
  private final int dataHeight;
  private final int dataWidth;
  private final int left;
  private final int top;
  private final byte[] yuvData;
  
  public PlanarYUVLuminanceSource(byte[] paramArrayOfByte, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6, boolean paramBoolean)
  {
    super(paramInt5, paramInt6);
    if ((paramInt3 + paramInt5 > paramInt1) || (paramInt4 + paramInt6 > paramInt2)) {
      throw new IllegalArgumentException("Crop rectangle does not fit within image data.");
    }
    yuvData = paramArrayOfByte;
    dataWidth = paramInt1;
    dataHeight = paramInt2;
    left = paramInt3;
    top = paramInt4;
    if (paramBoolean) {
      reverseHorizontal(paramInt5, paramInt6);
    }
  }
  
  private void reverseHorizontal(int paramInt1, int paramInt2)
  {
    byte[] arrayOfByte = yuvData;
    int k = 0;
    int j = top * dataWidth + left;
    while (k < paramInt2)
    {
      int i1 = paramInt1 / 2;
      int n = j;
      int m = j + paramInt1 - 1;
      while (n < j + i1)
      {
        int i = arrayOfByte[n];
        arrayOfByte[n] = arrayOfByte[m];
        arrayOfByte[m] = i;
        n += 1;
        m -= 1;
      }
      k += 1;
      j += dataWidth;
    }
  }
  
  public LuminanceSource crop(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    return new PlanarYUVLuminanceSource(yuvData, dataWidth, dataHeight, left + paramInt1, top + paramInt2, paramInt3, paramInt4, false);
  }
  
  public byte[] getMatrix()
  {
    int k = getWidth();
    int m = getHeight();
    Object localObject;
    if ((k == dataWidth) && (m == dataHeight))
    {
      localObject = yuvData;
      return (byte[])localObject;
    }
    int i = k * m;
    byte[] arrayOfByte1 = new byte[i];
    int j = top * dataWidth + left;
    if (k == dataWidth)
    {
      System.arraycopy(yuvData, j, arrayOfByte1, 0, i);
      return arrayOfByte1;
    }
    byte[] arrayOfByte2 = yuvData;
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
    System.arraycopy(yuvData, (j + paramInt) * k + m, arrayOfByte, 0, i);
    return arrayOfByte;
  }
  
  public boolean isCropSupported()
  {
    return true;
  }
  
  public int[] renderCroppedGreyscaleBitmap()
  {
    int m = getWidth();
    int n = getHeight();
    int[] arrayOfInt = new int[m * n];
    byte[] arrayOfByte = yuvData;
    int j = top * dataWidth + left;
    int i = 0;
    while (i < n)
    {
      int k = 0;
      while (k < m)
      {
        arrayOfInt[(i * m + k)] = (0xFF000000 | 65793 * (arrayOfByte[(j + k)] & 0xFF));
        k += 1;
      }
      j += dataWidth;
      i += 1;
    }
    return arrayOfInt;
  }
}

/* Location:
 * Qualified Name:     com.google.zxing.PlanarYUVLuminanceSource
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */