package com.google.zxing.qrcode.decoder;

final class DataMask$DataMask001
  extends DataMask
{
  private DataMask$DataMask001()
  {
    super(null);
  }
  
  boolean isMasked(int paramInt1, int paramInt2)
  {
    return (paramInt1 & 0x1) == 0;
  }
}

/* Location:
 * Qualified Name:     com.google.zxing.qrcode.decoder.DataMask.DataMask001
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */