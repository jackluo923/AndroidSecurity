package com.google.zxing.qrcode.decoder;

final class DataBlock
{
  private final byte[] codewords;
  private final int numDataCodewords;
  
  private DataBlock(int paramInt, byte[] paramArrayOfByte)
  {
    numDataCodewords = paramInt;
    codewords = paramArrayOfByte;
  }
  
  static DataBlock[] getDataBlocks(byte[] paramArrayOfByte, Version paramVersion, ErrorCorrectionLevel paramErrorCorrectionLevel)
  {
    if (paramArrayOfByte.length != paramVersion.getTotalCodewords()) {
      throw new IllegalArgumentException();
    }
    paramVersion = paramVersion.getECBlocksForLevel(paramErrorCorrectionLevel);
    int j = 0;
    paramErrorCorrectionLevel = paramVersion.getECBlocks();
    int k = paramErrorCorrectionLevel.length;
    int i = 0;
    while (i < k)
    {
      j += paramErrorCorrectionLevel[i].getCount();
      i += 1;
    }
    DataBlock[] arrayOfDataBlock = new DataBlock[j];
    k = 0;
    int m = paramErrorCorrectionLevel.length;
    i = 0;
    int n;
    while (i < m)
    {
      Object localObject = paramErrorCorrectionLevel[i];
      j = 0;
      while (j < ((Version.ECB)localObject).getCount())
      {
        n = ((Version.ECB)localObject).getDataCodewords();
        arrayOfDataBlock[k] = new DataBlock(n, new byte[paramVersion.getECCodewordsPerBlock() + n]);
        j += 1;
        k += 1;
      }
      i += 1;
    }
    j = 0codewords.length;
    i = arrayOfDataBlock.length - 1;
    int i1;
    if ((i < 0) || (codewords.length == j))
    {
      i1 = i + 1;
      n = j - paramVersion.getECCodewordsPerBlock();
      i = 0;
      j = 0;
    }
    for (;;)
    {
      if (j >= n) {
        break label279;
      }
      m = 0;
      for (;;)
      {
        if (m < k)
        {
          codewords[j] = paramArrayOfByte[i];
          m += 1;
          i += 1;
          continue;
          i -= 1;
          break;
        }
      }
      j += 1;
    }
    label279:
    j = i1;
    while (j < k)
    {
      codewords[n] = paramArrayOfByte[i];
      j += 1;
      i += 1;
    }
    int i2 = 0codewords.length;
    m = n;
    j = i;
    i = m;
    while (i < i2)
    {
      m = 0;
      if (m < k)
      {
        if (m < i1) {}
        for (n = i;; n = i + 1)
        {
          codewords[n] = paramArrayOfByte[j];
          m += 1;
          j += 1;
          break;
        }
      }
      i += 1;
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
 * Qualified Name:     com.google.zxing.qrcode.decoder.DataBlock
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */