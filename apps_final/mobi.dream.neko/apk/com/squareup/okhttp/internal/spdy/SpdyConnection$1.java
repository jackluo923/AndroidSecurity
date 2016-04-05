package com.squareup.okhttp.internal.spdy;

import com.squareup.okhttp.internal.NamedRunnable;
import java.io.IOException;

class SpdyConnection$1
  extends NamedRunnable
{
  SpdyConnection$1(SpdyConnection paramSpdyConnection, String paramString, int paramInt1, int paramInt2)
  {
    super(paramString);
  }
  
  public void execute()
  {
    try
    {
      this$0.writeSynReset(val$streamId, val$statusCode);
      return;
    }
    catch (IOException localIOException) {}
  }
}

/* Location:
 * Qualified Name:     com.squareup.okhttp.internal.spdy.SpdyConnection.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */