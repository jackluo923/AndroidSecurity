package com.google.zxing.datamatrix.decoder;

final class DataBlock
{
  private final byte[] codewords;
  private final int numDataCodewords;
  
  private DataBlock(int paramInt, byte[] paramArrayOfByte)
  {
    numDataCodewords = paramInt;
    codewords = paramArrayOfByte;
  }
  
  static DataBlock[] getDataBlocks(byte[] paramArrayOfByte, Version paramVersion)
  {
    Version.ECBlocks localECBlocks = paramVersion.getECBlocks();
    int j = 0;
    Version.ECB[] arrayOfECB = localECBlocks.getECBlocks();
    int k = arrayOfECB.length;
    int i = 0;
    while (i < k)
    {
      j += arrayOfECB[i].getCount();
      i += 1;
    }
    DataBlock[] arrayOfDataBlock = new DataBlock[j];
    j = 0;
    int m = arrayOfECB.length;
    i = 0;
    while (i < m)
    {
      Version.ECB localECB = arrayOfECB[i];
      k = 0;
      while (k < localECB.getCount())
      {
        n = localECB.getDataCodewords();
        arrayOfDataBlock[j] = new DataBlock(n, new byte[localECBlocks.getECCodewords() + n]);
        k += 1;
        j += 1;
      }
      i += 1;
    }
    int i1 = 0codewords.length - localECBlocks.getECCodewords();
    i = 0;
    k = 0;
    while (k < i1 - 1)
    {
      m = 0;
      while (m < j)
      {
        codewords[k] = paramArrayOfByte[i];
        m += 1;
        i += 1;
      }
      k += 1;
    }
    if (paramVersion.getVersionNumber() == 24)
    {
      m = 1;
      if (m == 0) {
        break label293;
      }
    }
    label293:
    for (k = 8;; k = j)
    {
      n = 0;
      while (n < k)
      {
        codewords[(i1 - 1)] = paramArrayOfByte[i];
        n += 1;
        i += 1;
      }
      m = 0;
      break;
    }
    int i2 = 0codewords.length;
    int n = i1;
    k = i;
    i = n;
    while (i < i2)
    {
      n = 0;
      if (n < j)
      {
        if ((m != 0) && (n > 7)) {}
        for (i1 = i - 1;; i1 = i)
        {
          codewords[i1] = paramArrayOfByte[k];
          n += 1;
          k += 1;
          break;
        }
      }
      i += 1;
    }
    if (k != paramArrayOfByte.length) {
      throw new IllegalArgumentException();
    }
    return arrayOfDataBlock;
  }
  
  byte[] getCodewords()
  {
    return codewords;
  }
  
  int getNumDataCodewords()
  {
    return numDataCodewords;
  }
}

/* Location:
 * Qualified Name:     com.google.zxing.datamatrix.decoder.DataBlock
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */