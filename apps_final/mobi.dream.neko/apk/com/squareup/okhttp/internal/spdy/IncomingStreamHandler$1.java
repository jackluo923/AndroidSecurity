package com.squareup.okhttp.internal.spdy;

import java.io.IOException;

final class IncomingStreamHandler$1
  implements IncomingStreamHandler
{
  public void receive(SpdyStream paramSpdyStream)
    throws IOException
  {
    paramSpdyStream.close(3);
  }
}

/* Location:
 * Qualified Name:     com.squareup.okhttp.internal.spdy.IncomingStreamHandler.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */