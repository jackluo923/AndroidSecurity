package com.squareup.okhttp.internal.http;

import com.squareup.okhttp.internal.AbstractOutputStream;
import com.squareup.okhttp.internal.Util;
import java.io.IOException;
import java.io.OutputStream;
import java.net.ProtocolException;

final class HttpTransport$FixedLengthOutputStream
  extends AbstractOutputStream
{
  private int bytesRemaining;
  private final OutputStream socketOut;
  
  private HttpTransport$FixedLengthOutputStream(OutputStream paramOutputStream, int paramInt)
  {
    socketOut = paramOutputStream;
    bytesRemaining = paramInt;
  }
  
  public void close()
    throws IOException
  {
    if (closed) {}
    do
    {
      return;
      closed = true;
    } while (bytesRemaining <= 0);
    throw new ProtocolException("unexpected end of stream");
  }
  
  public void flush()
    throws IOException
  {
    if (closed) {
      return;
    }
    socketOut.flush();
  }
  
  public void write(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    throws IOException
  {
    checkNotClosed();
    Util.checkOffsetAndCount(paramArrayOfByte.length, paramInt1, paramInt2);
    if (paramInt2 > bytesRemaining) {
      throw new ProtocolException("expected " + bytesRemaining + " bytes but received " + paramInt2);
    }
    socketOut.write(paramArrayOfByte, paramInt1, paramInt2);
    bytesRemaining -= paramInt2;
  }
}

/* Location:
 * Qualified Name:     com.squareup.okhttp.internal.http.HttpTransport.FixedLengthOutputStream
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */