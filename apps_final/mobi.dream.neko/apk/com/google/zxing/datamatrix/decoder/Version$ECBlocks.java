package com.google.zxing.datamatrix.decoder;

final class Version$ECBlocks
{
  private final Version.ECB[] ecBlocks;
  private final int ecCodewords;
  
  private Version$ECBlocks(int paramInt, Version.ECB paramECB)
  {
    ecCodewords = paramInt;
    ecBlocks = new Version.ECB[] { paramECB };
  }
  
  private Version$ECBlocks(int paramInt, Version.ECB paramECB1, Version.ECB paramECB2)
  {
    ecCodewords = paramInt;
    ecBlocks = new Version.ECB[] { paramECB1, paramECB2 };
  }
  
  Version.ECB[] getECBlocks()
  {
    return ecBlocks;
  }
  
  int getECCodewords()
  {
    return ecCodewords;
  }
}

/* Location:
 * Qualified Name:     com.google.zxing.datamatrix.decoder.Version.ECBlocks
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */