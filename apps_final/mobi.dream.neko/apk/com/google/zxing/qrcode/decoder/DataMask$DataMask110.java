package com.google.zxing.qrcode.decoder;

final class DataMask$DataMask110
  extends DataMask
{
  private DataMask$DataMask110()
  {
    super(null);
  }
  
  boolean isMasked(int paramInt1, int paramInt2)
  {
    paramInt1 *= paramInt2;
    return ((paramInt1 & 0x1) + paramInt1 % 3 & 0x1) == 0;
  }
}

/* Location:
 * Qualified Name:     com.google.zxing.qrcode.decoder.DataMask.DataMask110
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */