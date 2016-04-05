package com.google.zxing.qrcode.decoder;

final class DataMask$DataMask010
  extends DataMask
{
  private DataMask$DataMask010()
  {
    super(null);
  }
  
  boolean isMasked(int paramInt1, int paramInt2)
  {
    return paramInt2 % 3 == 0;
  }
}

/* Location:
 * Qualified Name:     com.google.zxing.qrcode.decoder.DataMask.DataMask010
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */