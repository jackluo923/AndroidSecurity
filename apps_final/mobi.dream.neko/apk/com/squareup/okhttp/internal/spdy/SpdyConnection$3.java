package com.squareup.okhttp.internal.spdy;

import com.squareup.okhttp.internal.NamedRunnable;
import java.io.IOException;

class SpdyConnection$3
  extends NamedRunnable
{
  SpdyConnection$3(SpdyConnection paramSpdyConnection, String paramString, int paramInt, Ping paramPing)
  {
    super(paramString);
  }
  
  public void execute()
  {
    try
    {
      SpdyConnection.access$500(this$0, val$streamId, val$ping);
      return;
    }
    catch (IOException localIOException) {}
  }
}

/* Location:
 * Qualified Name:     com.squareup.okhttp.internal.spdy.SpdyConnection.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */