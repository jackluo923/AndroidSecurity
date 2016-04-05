package com.squareup.okhttp.internal.spdy;

import java.io.IOException;

public abstract interface IncomingStreamHandler
{
  public static final IncomingStreamHandler REFUSE_INCOMING_STREAMS = new IncomingStreamHandler()
  {
    public void receive(SpdyStream paramAnonymousSpdyStream)
      throws IOException
    {
      paramAnonymousSpdyStream.close(3);
    }
  };
  
  public abstract void receive(SpdyStream paramSpdyStream)
    throws IOException;
}

/* Location:
 * Qualified Name:     com.squareup.okhttp.internal.spdy.IncomingStreamHandler
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */