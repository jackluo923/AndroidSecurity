package com.squareup.okhttp.internal.spdy;

import com.squareup.okhttp.internal.Util;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.net.SocketTimeoutException;

final class SpdyStream$SpdyDataInputStream
  extends InputStream
{
  private final byte[] buffer = new byte[65536];
  private boolean closed;
  private boolean finished;
  private int limit;
  private int pos = -1;
  private int unacknowledgedBytes = 0;
  
  static
  {
    if (!SpdyStream.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }
  
  private SpdyStream$SpdyDataInputStream(SpdyStream paramSpdyStream) {}
  
  private void checkNotClosed()
    throws IOException
  {
    if (closed) {
      throw new IOException("stream closed");
    }
    if (SpdyStream.access$1000(this$0) != -1) {
      throw new IOException("stream was reset: " + SpdyStream.access$1200(this$0));
    }
  }
  
  private void waitUntilReadable()
    throws IOException
  {
    long l2 = 0L;
    long l1 = 0L;
    if (SpdyStream.access$900(this$0) != 0L) {
      l2 = System.nanoTime() / 1000000L;
    }
    for (l1 = SpdyStream.access$900(this$0);; l1 = SpdyStream.access$900(this$0) + l2 - System.nanoTime() / 1000000L)
    {
      try
      {
        for (;;)
        {
          if ((pos != -1) || (finished) || (closed) || (SpdyStream.access$1000(this$0) != -1)) {
            return;
          }
          if (SpdyStream.access$900(this$0) != 0L) {
            break;
          }
          this$0.wait();
        }
        if (l1 <= 0L) {
          break;
        }
      }
      catch (InterruptedException localInterruptedException)
      {
        throw new InterruptedIOException();
      }
      this$0.wait(l1);
    }
    throw new SocketTimeoutException();
  }
  
  public int available()
    throws IOException
  {
    synchronized (this$0)
    {
      checkNotClosed();
      if (pos == -1) {
        return 0;
      }
      if (limit > pos)
      {
        i = limit;
        j = pos;
        return i - j;
      }
    }
    int i = limit;
    int j = buffer.length;
    int k = pos;
    return i + (j - k);
  }
  
  public void close()
    throws IOException
  {
    synchronized (this$0)
    {
      closed = true;
      this$0.notifyAll();
      SpdyStream.access$1100(this$0);
      return;
    }
  }
  
  public int read()
    throws IOException
  {
    return Util.readSingleByte(this);
  }
  
  public int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    throws IOException
  {
    synchronized (this$0)
    {
      Util.checkOffsetAndCount(paramArrayOfByte.length, paramInt1, paramInt2);
      waitUntilReadable();
      checkNotClosed();
      if (pos == -1) {
        return -1;
      }
      int i = 0;
      if (limit <= pos)
      {
        i = Math.min(paramInt2, buffer.length - pos);
        System.arraycopy(buffer, pos, paramArrayOfByte, paramInt1, i);
        pos += i;
        j = 0 + i;
        i = j;
        if (pos == buffer.length)
        {
          pos = 0;
          i = j;
        }
      }
      int j = i;
      if (i < paramInt2)
      {
        paramInt2 = Math.min(limit - pos, paramInt2 - i);
        System.arraycopy(buffer, pos, paramArrayOfByte, paramInt1 + i, paramInt2);
        pos += paramInt2;
        j = i + paramInt2;
      }
      unacknowledgedBytes += j;
      if (unacknowledgedBytes >= 32768)
      {
        SpdyStream.access$800(this$0).writeWindowUpdateLater(SpdyStream.access$700(this$0), unacknowledgedBytes);
        unacknowledgedBytes = 0;
      }
      if (pos == limit)
      {
        pos = -1;
        limit = 0;
      }
      return j;
    }
  }
  
  void receive(InputStream arg1, int paramInt)
    throws IOException
  {
    assert (!Thread.holdsLock(this$0));
    if (paramInt == 0) {
      return;
    }
    boolean bool;
    int n;
    int m;
    int k;
    synchronized (this$0)
    {
      bool = finished;
      n = pos;
      m = limit;
      k = limit;
      if (paramInt > buffer.length - available())
      {
        i = 1;
        if (i != 0)
        {
          Util.skipByReading(???, paramInt);
          this$0.closeLater(7);
        }
      }
      else
      {
        i = 0;
      }
    }
    if (bool)
    {
      Util.skipByReading(???, paramInt);
      return;
    }
    int i = k;
    int j = paramInt;
    if (n < k)
    {
      i = Math.min(paramInt, buffer.length - k);
      Util.readFully(???, buffer, k, i);
      k += i;
      paramInt -= i;
      i = k;
      j = paramInt;
      if (k == buffer.length)
      {
        i = 0;
        j = paramInt;
      }
    }
    paramInt = i;
    if (j > 0)
    {
      Util.readFully(???, buffer, i, j);
      paramInt = i + j;
    }
    synchronized (this$0)
    {
      limit = paramInt;
      if (pos == -1)
      {
        pos = m;
        this$0.notifyAll();
      }
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.squareup.okhttp.internal.spdy.SpdyStream.SpdyDataInputStream
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */