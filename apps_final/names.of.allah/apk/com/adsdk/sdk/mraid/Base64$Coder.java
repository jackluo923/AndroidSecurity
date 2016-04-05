package com.adsdk.sdk.mraid;

abstract class Base64$Coder
{
  public int op;
  public byte[] output;
  
  public abstract int maxOutputSize(int paramInt);
  
  public abstract boolean process(byte[] paramArrayOfByte, int paramInt1, int paramInt2, boolean paramBoolean);
}

/* Location:
 * Qualified Name:     com.adsdk.sdk.mraid.Base64.Coder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */