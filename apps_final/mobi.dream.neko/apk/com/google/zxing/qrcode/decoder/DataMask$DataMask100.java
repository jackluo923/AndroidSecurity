package com.google.zxing.qrcode.decoder;

final class DataMask$DataMask100
  extends DataMask
{
  private DataMask$DataMask100()
  {
    super(null);
  }
  
  boolean isMasked(int paramInt1, int paramInt2)
  {
    return ((paramInt1 >>> 1) + paramInt2 / 3 & 0x1) == 0;
  }
}

/* Location:
 * Qualified Name:     com.google.zxing.qrcode.decoder.DataMask.DataMask100
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */