package com.squareup.okhttp.internal.http;

import java.io.IOException;
import java.io.OutputStream;

abstract class AbstractHttpOutputStream
  extends OutputStream
{
  protected boolean closed;
  
  protected final void checkNotClosed()
    throws IOException
  {
    if (closed) {
      throw new IOException("stream closed");
    }
  }
  
  public final void write(int paramInt)
    throws IOException
  {
    write(new byte[] { (byte)paramInt });
  }
}

/* Location:
 * Qualified Name:     com.squareup.okhttp.internal.http.AbstractHttpOutputStream
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */