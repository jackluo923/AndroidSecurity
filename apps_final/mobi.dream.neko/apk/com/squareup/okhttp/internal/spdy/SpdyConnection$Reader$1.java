package com.squareup.okhttp.internal.spdy;

import com.squareup.okhttp.internal.NamedRunnable;
import java.io.IOException;

class SpdyConnection$Reader$1
  extends NamedRunnable
{
  SpdyConnection$Reader$1(SpdyConnection.Reader paramReader, String paramString, SpdyStream paramSpdyStream)
  {
    super(paramString);
  }
  
  public void execute()
  {
    try
    {
      SpdyConnection.access$1400(this$1.this$0).receive(val$synStream);
      return;
    }
    catch (IOException localIOException)
    {
      throw new RuntimeException(localIOException);
    }
  }
}

/* Location:
 * Qualified Name:     com.squareup.okhttp.internal.spdy.SpdyConnection.Reader.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */