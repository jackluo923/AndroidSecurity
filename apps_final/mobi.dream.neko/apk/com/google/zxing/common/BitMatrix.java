package com.google.zxing.common;

public final class BitMatrix
{
  private final int[] bits;
  private final int height;
  private final int rowSize;
  private final int width;
  
  public BitMatrix(int paramInt)
  {
    this(paramInt, paramInt);
  }
  
  public BitMatrix(int paramInt1, int paramInt2)
  {
    if ((paramInt1 < 1) || (paramInt2 < 1)) {
      throw new IllegalArgumentException("Both dimensions must be greater than 0");
    }
    width = paramInt1;
    height = paramInt2;
    rowSize = (paramInt1 + 31 >> 5);
    bits = new int[rowSize * paramInt2];
  }
  
  public void clear()
  {
    int j = bits.length;
    int i = 0;
    while (i < j)
    {
      bits[i] = 0;
      i += 1;
    }
  }
  
  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof BitMatrix)) {}
    do
    {
      return false;
      paramObject = (BitMatrix)paramObject;
    } while ((width != width) || (height != height) || (rowSize != rowSize) || (bits.length != bits.length));
    int i = 0;
    for (;;)
    {
      if (i >= bits.length) {
        break label93;
      }
      if (bits[i] != bits[i]) {
        break;
      }
      i += 1;
    }
    label93:
    return true;
  }
  
  public void flip(int paramInt1, int paramInt2)
  {
    paramInt2 = rowSize * paramInt2 + (paramInt1 >> 5);
    int[] arrayOfInt = bits;
    arrayOfInt[paramInt2] ^= 1 << (paramInt1 & 0x1F);
  }
  
  public boolean get(int paramInt1, int paramInt2)
  {
    int i = rowSize;
    return (bits[(i * paramInt2 + (paramInt1 >> 5))] >>> (paramInt1 & 0x1F) & 0x1) != 0;
  }
  
  public int[] getBottomRightOnBit()
  {
    int i = bits.length - 1;
    while ((i >= 0) && (bits[i] == 0)) {
      i -= 1;
    }
    if (i < 0) {
      return null;
    }
    int k = i / rowSize;
    int m = rowSize;
    int n = bits[i];
    int j = 31;
    while (n >>> j == 0) {
      j -= 1;
    }
    return new int[] { (i % m << 5) + j, k };
  }
  
  public int[] getEnclosingRectangle()
  {
    int k = width;
    int m = height;
    int i2 = -1;
    int n = -1;
    int i = 0;
    while (i < height)
    {
      int i1 = 0;
      while (i1 < rowSize)
      {
        int i7 = bits[(rowSize * i + i1)];
        int i4 = n;
        int i5 = k;
        int i6 = i2;
        int i3 = m;
        if (i7 != 0)
        {
          j = m;
          if (i < m) {
            j = i;
          }
          m = n;
          if (i > n) {
            m = i;
          }
          n = k;
          if (i1 * 32 < k)
          {
            i3 = 0;
            while (i7 << 31 - i3 == 0) {
              i3 += 1;
            }
            n = k;
            if (i1 * 32 + i3 < k) {
              n = i1 * 32 + i3;
            }
          }
          i4 = m;
          i5 = n;
          i6 = i2;
          i3 = j;
          if (i1 * 32 + 31 > i2)
          {
            k = 31;
            while (i7 >>> k == 0) {
              k -= 1;
            }
            i4 = m;
            i5 = n;
            i6 = i2;
            i3 = j;
            if (i1 * 32 + k > i2)
            {
              i6 = i1 * 32 + k;
              i3 = j;
              i5 = n;
              i4 = m;
            }
          }
        }
        i1 += 1;
        n = i4;
        k = i5;
        i2 = i6;
        m = i3;
      }
      i += 1;
    }
    i = i2 - k;
    int j = n - m;
    if ((i < 0) || (j < 0)) {
      return null;
    }
    return new int[] { k, m, i, j };
  }
  
  public int getHeight()
  {
    return height;
  }
  
  public BitArray getRow(int paramInt, BitArray paramBitArray)
  {
    BitArray localBitArray;
    if (paramBitArray != null)
    {
      localBitArray = paramBitArray;
      if (paramBitArray.getSize() >= width) {}
    }
    else
    {
      localBitArray = new BitArray(width);
    }
    int j = rowSize;
    int i = 0;
    while (i < rowSize)
    {
      localBitArray.setBulk(i << 5, bits[(paramInt * j + i)]);
      i += 1;
    }
    return localBitArray;
  }
  
  public int[] getTopLeftOnBit()
  {
    int i = 0;
    while ((i < bits.length) && (bits[i] == 0)) {
      i += 1;
    }
    if (i == bits.length) {
      return null;
    }
    int k = i / rowSize;
    int m = rowSize;
    int n = bits[i];
    int j = 0;
    while (n << 31 - j == 0) {
      j += 1;
    }
    return new int[] { (i % m << 5) + j, k };
  }
  
  public int getWidth()
  {
    return width;
  }
  
  public int hashCode()
  {
    int j = ((width * 31 + width) * 31 + height) * 31 + rowSize;
    int[] arrayOfInt = bits;
    int k = arrayOfInt.length;
    int i = 0;
    while (i < k)
    {
      j = j * 31 + arrayOfInt[i];
      i += 1;
    }
    return j;
  }
  
  public void set(int paramInt1, int paramInt2)
  {
    paramInt2 = rowSize * paramInt2 + (paramInt1 >> 5);
    int[] arrayOfInt = bits;
    arrayOfInt[paramInt2] |= 1 << (paramInt1 & 0x1F);
  }
  
  public void setRegion(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if ((paramInt2 < 0) || (paramInt1 < 0)) {
      throw new IllegalArgumentException("Left and top must be nonnegative");
    }
    if ((paramInt4 < 1) || (paramInt3 < 1)) {
      throw new IllegalArgumentException("Height and width must be at least 1");
    }
    int i = paramInt1 + paramInt3;
    paramInt4 = paramInt2 + paramInt4;
    if ((paramInt4 > height) || (i > width)) {
      throw new IllegalArgumentException("The region must fit inside the matrix");
    }
    while (paramInt2 < paramInt4)
    {
      int j = rowSize;
      paramInt3 = paramInt1;
      while (paramInt3 < i)
      {
        int[] arrayOfInt = bits;
        int k = (paramInt3 >> 5) + paramInt2 * j;
        arrayOfInt[k] |= 1 << (paramInt3 & 0x1F);
        paramInt3 += 1;
      }
      paramInt2 += 1;
    }
  }
  
  public void setRow(int paramInt, BitArray paramBitArray)
  {
    System.arraycopy(paramBitArray.getBitArray(), 0, bits, rowSize * paramInt, rowSize);
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder(height * (width + 1));
    int i = 0;
    while (i < height)
    {
      int j = 0;
      if (j < width)
      {
        if (get(j, i)) {}
        for (String str = "X ";; str = "  ")
        {
          localStringBuilder.append(str);
          j += 1;
          break;
        }
      }
      localStringBuilder.append('\n');
      i += 1;
    }
    return localStringBuilder.toString();
  }
}

/* Location:
 * Qualified Name:     com.google.zxing.common.BitMatrix
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */