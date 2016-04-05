package com.google.zxing;

public abstract class LuminanceSource
{
  private final int height;
  private final int width;
  
  protected LuminanceSource(int paramInt1, int paramInt2)
  {
    width = paramInt1;
    height = paramInt2;
  }
  
  public LuminanceSource crop(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    throw new UnsupportedOperationException("This luminance source does not support cropping.");
  }
  
  public final int getHeight()
  {
    return height;
  }
  
  public abstract byte[] getMatrix();
  
  public abstract byte[] getRow(int paramInt, byte[] paramArrayOfByte);
  
  public final int getWidth()
  {
    return width;
  }
  
  public boolean isCropSupported()
  {
    return false;
  }
  
  public boolean isRotateSupported()
  {
    return false;
  }
  
  public LuminanceSource rotateCounterClockwise()
  {
    throw new UnsupportedOperationException("This luminance source does not support rotation by 90 degrees.");
  }
  
  public LuminanceSource rotateCounterClockwise45()
  {
    throw new UnsupportedOperationException("This luminance source does not support rotation by 45 degrees.");
  }
  
  public final String toString()
  {
    byte[] arrayOfByte = new byte[width];
    StringBuilder localStringBuilder = new StringBuilder(height * (width + 1));
    int i = 0;
    while (i < height)
    {
      arrayOfByte = getRow(i, arrayOfByte);
      int j = 0;
      if (j < width)
      {
        int k = arrayOfByte[j] & 0xFF;
        char c;
        if (k < 64) {
          c = '#';
        }
        for (;;)
        {
          localStringBuilder.append(c);
          j += 1;
          break;
          if (k < 128) {
            c = '+';
          } else if (k < 192) {
            c = '.';
          } else {
            c = ' ';
          }
        }
      }
      localStringBuilder.append('\n');
      i += 1;
    }
    return localStringBuilder.toString();
  }
}

/* Location:
 * Qualified Name:     com.google.zxing.LuminanceSource
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */