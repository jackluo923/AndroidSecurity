package com.google.zxing.qrcode.decoder;

final class DataMask$DataMask111
  extends DataMask
{
  private DataMask$DataMask111()
  {
    super(null);
  }
  
  boolean isMasked(int paramInt1, int paramInt2)
  {
    return ((paramInt1 + paramInt2 & 0x1) + paramInt1 * paramInt2 % 3 & 0x1) == 0;
  }
}

/* Location:
 * Qualified Name:     com.google.zxing.qrcode.decoder.DataMask.DataMask111
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */