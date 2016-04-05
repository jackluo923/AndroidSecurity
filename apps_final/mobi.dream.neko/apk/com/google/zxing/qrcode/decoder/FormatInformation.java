package com.google.zxing.qrcode.decoder;

final class FormatInformation
{
  private static final int[] BITS_SET_IN_HALF_BYTE = { 0, 1, 1, 2, 1, 2, 2, 3, 1, 2, 2, 3, 2, 3, 3, 4 };
  private static final int[][] FORMAT_INFO_DECODE_LOOKUP;
  private static final int FORMAT_INFO_MASK_QR = 21522;
  private final byte dataMask;
  private final ErrorCorrectionLevel errorCorrectionLevel;
  
  static
  {
    int[] arrayOfInt1 = { 21522, 0 };
    int[] arrayOfInt2 = { 24188, 2 };
    int[] arrayOfInt3 = { 23371, 3 };
    int[] arrayOfInt4 = { 17913, 4 };
    int[] arrayOfInt5 = { 16590, 5 };
    int[] arrayOfInt6 = { 30660, 8 };
    int[] arrayOfInt7 = { 29427, 9 };
    int[] arrayOfInt8 = { 32170, 10 };
    int[] arrayOfInt9 = { 30877, 11 };
    int[] arrayOfInt10 = { 27713, 14 };
    int[] arrayOfInt11 = { 5769, 16 };
    int[] arrayOfInt12 = { 5054, 17 };
    int[] arrayOfInt13 = { 6608, 19 };
    int[] arrayOfInt14 = { 1890, 20 };
    int[] arrayOfInt15 = { 2107, 23 };
    int[] arrayOfInt16 = { 12392, 25 };
    int[] arrayOfInt17 = { 14854, 27 };
    int[] arrayOfInt18 = { 9396, 28 };
    int[] arrayOfInt19 = { 8579, 29 };
    int[] arrayOfInt20 = { 11994, 30 };
    int[] arrayOfInt21 = { 11245, 31 };
    FORMAT_INFO_DECODE_LOOKUP = new int[][] { arrayOfInt1, { 20773, 1 }, arrayOfInt2, arrayOfInt3, arrayOfInt4, arrayOfInt5, { 20375, 6 }, { 19104, 7 }, arrayOfInt6, arrayOfInt7, arrayOfInt8, arrayOfInt9, { 26159, 12 }, { 25368, 13 }, arrayOfInt10, { 26998, 15 }, arrayOfInt11, arrayOfInt12, { 7399, 18 }, arrayOfInt13, arrayOfInt14, { 597, 21 }, { 3340, 22 }, arrayOfInt15, { 13663, 24 }, arrayOfInt16, { 16177, 26 }, arrayOfInt17, arrayOfInt18, arrayOfInt19, arrayOfInt20, arrayOfInt21 };
  }
  
  private FormatInformation(int paramInt)
  {
    errorCorrectionLevel = ErrorCorrectionLevel.forBits(paramInt >> 3 & 0x3);
    dataMask = ((byte)(paramInt & 0x7));
  }
  
  static FormatInformation decodeFormatInformation(int paramInt1, int paramInt2)
  {
    FormatInformation localFormatInformation = doDecodeFormatInformation(paramInt1, paramInt2);
    if (localFormatInformation != null) {
      return localFormatInformation;
    }
    return doDecodeFormatInformation(paramInt1 ^ 0x5412, paramInt2 ^ 0x5412);
  }
  
  private static FormatInformation doDecodeFormatInformation(int paramInt1, int paramInt2)
  {
    int m = Integer.MAX_VALUE;
    int j = 0;
    int[][] arrayOfInt = FORMAT_INFO_DECODE_LOOKUP;
    int i2 = arrayOfInt.length;
    int n = 0;
    while (n < i2)
    {
      int[] arrayOfInt1 = arrayOfInt[n];
      int i1 = arrayOfInt1[0];
      if ((i1 == paramInt1) || (i1 == paramInt2)) {
        return new FormatInformation(arrayOfInt1[1]);
      }
      int k = numBitsDiffering(paramInt1, i1);
      int i = m;
      if (k < m)
      {
        j = arrayOfInt1[1];
        i = k;
      }
      m = i;
      k = j;
      if (paramInt1 != paramInt2)
      {
        i1 = numBitsDiffering(paramInt2, i1);
        m = i;
        k = j;
        if (i1 < i)
        {
          k = arrayOfInt1[1];
          m = i1;
        }
      }
      n += 1;
      j = k;
    }
    if (m <= 3) {
      return new FormatInformation(j);
    }
    return null;
  }
  
  static int numBitsDiffering(int paramInt1, int paramInt2)
  {
    paramInt1 ^= paramInt2;
    return BITS_SET_IN_HALF_BYTE[(paramInt1 & 0xF)] + BITS_SET_IN_HALF_BYTE[(paramInt1 >>> 4 & 0xF)] + BITS_SET_IN_HALF_BYTE[(paramInt1 >>> 8 & 0xF)] + BITS_SET_IN_HALF_BYTE[(paramInt1 >>> 12 & 0xF)] + BITS_SET_IN_HALF_BYTE[(paramInt1 >>> 16 & 0xF)] + BITS_SET_IN_HALF_BYTE[(paramInt1 >>> 20 & 0xF)] + BITS_SET_IN_HALF_BYTE[(paramInt1 >>> 24 & 0xF)] + BITS_SET_IN_HALF_BYTE[(paramInt1 >>> 28 & 0xF)];
  }
  
  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof FormatInformation)) {}
    do
    {
      return false;
      paramObject = (FormatInformation)paramObject;
    } while ((errorCorrectionLevel != errorCorrectionLevel) || (dataMask != dataMask));
    return true;
  }
  
  byte getDataMask()
  {
    return dataMask;
  }
  
  ErrorCorrectionLevel getErrorCorrectionLevel()
  {
    return errorCorrectionLevel;
  }
  
  public int hashCode()
  {
    return errorCorrectionLevel.ordinal() << 3 | dataMask;
  }
}

/* Location:
 * Qualified Name:     com.google.zxing.qrcode.decoder.FormatInformation
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */