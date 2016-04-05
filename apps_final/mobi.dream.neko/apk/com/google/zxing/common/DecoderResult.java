package com.google.zxing.common;

import java.util.List;

public final class DecoderResult
{
  private final List<byte[]> byteSegments;
  private final String ecLevel;
  private final byte[] rawBytes;
  private final String text;
  
  public DecoderResult(byte[] paramArrayOfByte, String paramString1, List<byte[]> paramList, String paramString2)
  {
    rawBytes = paramArrayOfByte;
    text = paramString1;
    byteSegments = paramList;
    ecLevel = paramString2;
  }
  
  public List<byte[]> getByteSegments()
  {
    return byteSegments;
  }
  
  public String getECLevel()
  {
    return ecLevel;
  }
  
  public byte[] getRawBytes()
  {
    return rawBytes;
  }
  
  public String getText()
  {
    return text;
  }
}

/* Location:
 * Qualified Name:     com.google.zxing.common.DecoderResult
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */