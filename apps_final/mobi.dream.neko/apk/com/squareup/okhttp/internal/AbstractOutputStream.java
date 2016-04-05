package com.squareup.okhttp.internal;

import java.io.IOException;
import java.io.OutputStream;

public abstract class AbstractOutputStream
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
  
  public boolean isClosed()
  {
    return closed;
  }
  
  public final void write(int paramInt)
    throws IOException
  {
    write(new byte[] { (byte)paramInt });
  }
}

/* Location:
 * Qualified Name:     com.squareup.okhttp.internal.AbstractOutputStream
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */