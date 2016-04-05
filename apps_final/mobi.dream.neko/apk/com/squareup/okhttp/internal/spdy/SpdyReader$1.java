package com.squareup.okhttp.internal.spdy;

import com.squareup.okhttp.internal.Util;
import java.io.DataInputStream;
import java.io.IOException;
import java.io.InputStream;

class SpdyReader$1
  extends InputStream
{
  SpdyReader$1(SpdyReader paramSpdyReader) {}
  
  public void close()
    throws IOException
  {
    SpdyReader.access$100(this$0).close();
  }
  
  public int read()
    throws IOException
  {
    return Util.readSingleByte(this);
  }
  
  public int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    throws IOException
  {
    paramInt2 = Math.min(paramInt2, SpdyReader.access$000(this$0));
    paramInt1 = SpdyReader.access$100(this$0).read(paramArrayOfByte, paramInt1, paramInt2);
    SpdyReader.access$020(this$0, paramInt1);
    return paramInt1;
  }
}

/* Location:
 * Qualified Name:     com.squareup.okhttp.internal.spdy.SpdyReader.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */