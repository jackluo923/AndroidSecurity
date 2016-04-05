package com.squareup.okhttp.internal.spdy;

import java.util.zip.DataFormatException;
import java.util.zip.Inflater;

class SpdyReader$2
  extends Inflater
{
  SpdyReader$2(SpdyReader paramSpdyReader) {}
  
  public int inflate(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    throws DataFormatException
  {
    int j = super.inflate(paramArrayOfByte, paramInt1, paramInt2);
    int i = j;
    if (j == 0)
    {
      i = j;
      if (needsDictionary())
      {
        setDictionary(SpdyReader.DICTIONARY);
        i = super.inflate(paramArrayOfByte, paramInt1, paramInt2);
      }
    }
    return i;
  }
}

/* Location:
 * Qualified Name:     com.squareup.okhttp.internal.spdy.SpdyReader.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */