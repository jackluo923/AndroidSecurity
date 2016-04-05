package com.google.zxing.common;

public final class BitSource
{
  private int bitOffset;
  private int byteOffset;
  private final byte[] bytes;
  
  public BitSource(byte[] paramArrayOfByte)
  {
    bytes = paramArrayOfByte;
  }
  
  public int available()
  {
    return (bytes.length - byteOffset) * 8 - bitOffset;
  }
  
  public int getBitOffset()
  {
    return bitOffset;
  }
  
  public int getByteOffset()
  {
    return byteOffset;
  }
  
  public int readBits(int paramInt)
  {
    if ((paramInt < 1) || (paramInt > 32) || (paramInt > available())) {
      throw new IllegalArgumentException(String.valueOf(paramInt));
    }
    int i = 0;
    int j = paramInt;
    if (bitOffset > 0)
    {
      j = 8 - bitOffset;
      if (paramInt >= j) {
        break label182;
      }
    }
    label182:
    for (i = paramInt;; i = j)
    {
      j -= i;
      int k = (bytes[byteOffset] & 255 >> 8 - i << j) >> j;
      paramInt -= i;
      bitOffset += i;
      i = k;
      j = paramInt;
      if (bitOffset == 8)
      {
        bitOffset = 0;
        byteOffset += 1;
        j = paramInt;
        i = k;
      }
      paramInt = i;
      if (j <= 0) {
        return paramInt;
      }
      while (j >= 8)
      {
        i = i << 8 | bytes[byteOffset] & 0xFF;
        byteOffset += 1;
        j -= 8;
      }
    }
    paramInt = i;
    if (j > 0)
    {
      paramInt = 8 - j;
      paramInt = i << j | (bytes[byteOffset] & 255 >> paramInt << paramInt) >> paramInt;
      bitOffset += j;
    }
    return paramInt;
  }
}

/* Location:
 * Qualified Name:     com.google.zxing.common.BitSource
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */