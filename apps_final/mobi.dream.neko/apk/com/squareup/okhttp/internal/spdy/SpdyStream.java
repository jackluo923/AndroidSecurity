package com.squareup.okhttp.internal.spdy;

import com.squareup.okhttp.internal.Util;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.io.OutputStream;
import java.net.SocketTimeoutException;
import java.nio.ByteOrder;
import java.util.List;

public final class SpdyStream
{
  private static final int DATA_FRAME_HEADER_LENGTH = 8;
  public static final int RST_CANCEL = 5;
  public static final int RST_FLOW_CONTROL_ERROR = 7;
  public static final int RST_FRAME_TOO_LARGE = 11;
  public static final int RST_INTERNAL_ERROR = 6;
  public static final int RST_INVALID_CREDENTIALS = 10;
  public static final int RST_INVALID_STREAM = 2;
  public static final int RST_PROTOCOL_ERROR = 1;
  public static final int RST_REFUSED_STREAM = 3;
  public static final int RST_STREAM_ALREADY_CLOSED = 9;
  public static final int RST_STREAM_IN_USE = 8;
  public static final int RST_UNSUPPORTED_VERSION = 4;
  private static final String[] STATUS_CODE_NAMES;
  public static final int WINDOW_UPDATE_THRESHOLD = 32768;
  private final SpdyConnection connection;
  private final int id;
  private final SpdyDataInputStream in = new SpdyDataInputStream(null);
  private final SpdyDataOutputStream out = new SpdyDataOutputStream(null);
  private final int priority;
  private long readTimeoutMillis = 0L;
  private final List<String> requestHeaders;
  private List<String> responseHeaders;
  private int rstStatusCode = -1;
  private final int slot;
  private int writeWindowSize;
  
  static
  {
    if (!SpdyStream.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      $assertionsDisabled = bool;
      STATUS_CODE_NAMES = new String[] { null, "PROTOCOL_ERROR", "INVALID_STREAM", "REFUSED_STREAM", "UNSUPPORTED_VERSION", "CANCEL", "INTERNAL_ERROR", "FLOW_CONTROL_ERROR", "STREAM_IN_USE", "STREAM_ALREADY_CLOSED", "INVALID_CREDENTIALS", "FRAME_TOO_LARGE" };
      return;
    }
  }
  
  SpdyStream(int paramInt1, SpdyConnection paramSpdyConnection, int paramInt2, int paramInt3, int paramInt4, List<String> paramList, Settings paramSettings)
  {
    if (paramSpdyConnection == null) {
      throw new NullPointerException("connection == null");
    }
    if (paramList == null) {
      throw new NullPointerException("requestHeaders == null");
    }
    id = paramInt1;
    connection = paramSpdyConnection;
    priority = paramInt3;
    slot = paramInt4;
    requestHeaders = paramList;
    if (isLocallyInitiated())
    {
      paramSpdyConnection = in;
      if ((paramInt2 & 0x2) != 0)
      {
        bool1 = true;
        SpdyDataInputStream.access$202(paramSpdyConnection, bool1);
        paramSpdyConnection = out;
        if ((paramInt2 & 0x1) == 0) {
          break label166;
        }
      }
      label166:
      for (bool1 = bool2;; bool1 = false)
      {
        SpdyDataOutputStream.access$302(paramSpdyConnection, bool1);
        setSettings(paramSettings);
        return;
        bool1 = false;
        break;
      }
    }
    paramSpdyConnection = in;
    if ((paramInt2 & 0x1) != 0)
    {
      bool1 = true;
      label186:
      SpdyDataInputStream.access$202(paramSpdyConnection, bool1);
      paramSpdyConnection = out;
      if ((paramInt2 & 0x2) == 0) {
        break label224;
      }
    }
    label224:
    for (boolean bool1 = bool3;; bool1 = false)
    {
      SpdyDataOutputStream.access$302(paramSpdyConnection, bool1);
      break;
      bool1 = false;
      break label186;
    }
  }
  
  private void cancelStreamIfNecessary()
    throws IOException
  {
    assert (!Thread.holdsLock(this));
    for (;;)
    {
      try
      {
        boolean bool;
        if ((!in.finished) && (in.closed))
        {
          if (out.finished) {
            break label110;
          }
          if (out.closed)
          {
            break label110;
            bool = isOpen();
            if (i == 0) {
              break label93;
            }
            close(5);
            return;
          }
        }
        i = 0;
        continue;
        if (bool) {
          continue;
        }
      }
      finally {}
      label93:
      connection.removeStream(id);
      return;
      label110:
      int i = 1;
    }
  }
  
  private boolean closeInternal(int paramInt)
  {
    assert (!Thread.holdsLock(this));
    try
    {
      if (rstStatusCode != -1) {
        return false;
      }
      if ((in.finished) && (out.finished)) {
        return false;
      }
    }
    finally {}
    rstStatusCode = paramInt;
    notifyAll();
    connection.removeStream(id);
    return true;
  }
  
  private String rstStatusString()
  {
    if ((rstStatusCode > 0) && (rstStatusCode < STATUS_CODE_NAMES.length)) {
      return STATUS_CODE_NAMES[rstStatusCode];
    }
    return Integer.toString(rstStatusCode);
  }
  
  private void setSettings(Settings paramSettings)
  {
    int i = 65536;
    assert (Thread.holdsLock(connection));
    if (paramSettings != null) {
      i = paramSettings.getInitialWindowSize(65536);
    }
    writeWindowSize = i;
  }
  
  public void close(int paramInt)
    throws IOException
  {
    if (!closeInternal(paramInt)) {
      return;
    }
    connection.writeSynReset(id, paramInt);
  }
  
  public void closeLater(int paramInt)
  {
    if (!closeInternal(paramInt)) {
      return;
    }
    connection.writeSynResetLater(id, paramInt);
  }
  
  public SpdyConnection getConnection()
  {
    return connection;
  }
  
  public InputStream getInputStream()
  {
    return in;
  }
  
  public OutputStream getOutputStream()
  {
    try
    {
      if ((responseHeaders == null) && (!isLocallyInitiated())) {
        throw new IllegalStateException("reply before requesting the output stream");
      }
    }
    finally {}
    return out;
  }
  
  int getPriority()
  {
    return priority;
  }
  
  public long getReadTimeoutMillis()
  {
    return readTimeoutMillis;
  }
  
  public List<String> getRequestHeaders()
  {
    return requestHeaders;
  }
  
  public List<String> getResponseHeaders()
    throws IOException
  {
    try
    {
      while ((responseHeaders == null) && (rstStatusCode == -1)) {
        wait();
      }
      InterruptedIOException localInterruptedIOException;
      if (responseHeaders == null) {
        break label62;
      }
    }
    catch (InterruptedException localInterruptedException)
    {
      localInterruptedIOException = new InterruptedIOException();
      localInterruptedIOException.initCause(localInterruptedException);
      throw localInterruptedIOException;
    }
    finally {}
    List localList = responseHeaders;
    return localList;
    label62:
    throw new IOException("stream was reset: " + rstStatusString());
  }
  
  public int getRstStatusCode()
  {
    try
    {
      int i = rstStatusCode;
      return i;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  int getSlot()
  {
    return slot;
  }
  
  public boolean isLocallyInitiated()
  {
    if (id % 2 == 1) {}
    for (int i = 1; connection.client == i; i = 0) {
      return true;
    }
    return false;
  }
  
  /* Error */
  public boolean isOpen()
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore_3
    //   2: aload_0
    //   3: monitorenter
    //   4: aload_0
    //   5: getfield 112	com/squareup/okhttp/internal/spdy/SpdyStream:rstStatusCode	I
    //   8: istore_2
    //   9: iload_2
    //   10: iconst_m1
    //   11: if_icmpeq +7 -> 18
    //   14: aload_0
    //   15: monitorexit
    //   16: iload_3
    //   17: ireturn
    //   18: aload_0
    //   19: getfield 107	com/squareup/okhttp/internal/spdy/SpdyStream:in	Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataInputStream;
    //   22: invokestatic 185	com/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataInputStream:access$200	(Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataInputStream;)Z
    //   25: ifne +13 -> 38
    //   28: aload_0
    //   29: getfield 107	com/squareup/okhttp/internal/spdy/SpdyStream:in	Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataInputStream;
    //   32: invokestatic 188	com/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataInputStream:access$400	(Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataInputStream;)Z
    //   35: ifeq +32 -> 67
    //   38: aload_0
    //   39: getfield 110	com/squareup/okhttp/internal/spdy/SpdyStream:out	Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataOutputStream;
    //   42: invokestatic 192	com/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataOutputStream:access$300	(Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataOutputStream;)Z
    //   45: ifne +13 -> 58
    //   48: aload_0
    //   49: getfield 110	com/squareup/okhttp/internal/spdy/SpdyStream:out	Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataOutputStream;
    //   52: invokestatic 195	com/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataOutputStream:access$500	(Lcom/squareup/okhttp/internal/spdy/SpdyStream$SpdyDataOutputStream;)Z
    //   55: ifeq +12 -> 67
    //   58: aload_0
    //   59: getfield 244	com/squareup/okhttp/internal/spdy/SpdyStream:responseHeaders	Ljava/util/List;
    //   62: astore_1
    //   63: aload_1
    //   64: ifnonnull -50 -> 14
    //   67: iconst_1
    //   68: istore_3
    //   69: goto -55 -> 14
    //   72: astore_1
    //   73: aload_0
    //   74: monitorexit
    //   75: aload_1
    //   76: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	77	0	this	SpdyStream
    //   62	2	1	localList	List
    //   72	4	1	localObject	Object
    //   8	4	2	i	int
    //   1	68	3	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   4	9	72	finally
    //   18	38	72	finally
    //   38	58	72	finally
    //   58	63	72	finally
  }
  
  void receiveData(InputStream paramInputStream, int paramInt)
    throws IOException
  {
    assert (!Thread.holdsLock(this));
    in.receive(paramInputStream, paramInt);
  }
  
  void receiveFin()
  {
    assert (!Thread.holdsLock(this));
    try
    {
      SpdyDataInputStream.access$202(in, true);
      boolean bool = isOpen();
      notifyAll();
      if (!bool) {
        connection.removeStream(id);
      }
      return;
    }
    finally {}
  }
  
  /* Error */
  void receiveHeaders(List<String> paramList)
    throws IOException
  {
    // Byte code:
    //   0: getstatic 69	com/squareup/okhttp/internal/spdy/SpdyStream:$assertionsDisabled	Z
    //   3: ifne +18 -> 21
    //   6: aload_0
    //   7: invokestatic 178	java/lang/Thread:holdsLock	(Ljava/lang/Object;)Z
    //   10: ifeq +11 -> 21
    //   13: new 180	java/lang/AssertionError
    //   16: dup
    //   17: invokespecial 181	java/lang/AssertionError:<init>	()V
    //   20: athrow
    //   21: iconst_0
    //   22: istore_3
    //   23: aload_0
    //   24: monitorenter
    //   25: aload_0
    //   26: getfield 244	com/squareup/okhttp/internal/spdy/SpdyStream:responseHeaders	Ljava/util/List;
    //   29: ifnull +47 -> 76
    //   32: new 296	java/util/ArrayList
    //   35: dup
    //   36: invokespecial 297	java/util/ArrayList:<init>	()V
    //   39: astore_2
    //   40: aload_2
    //   41: aload_0
    //   42: getfield 244	com/squareup/okhttp/internal/spdy/SpdyStream:responseHeaders	Ljava/util/List;
    //   45: invokeinterface 303 2 0
    //   50: pop
    //   51: aload_2
    //   52: aload_1
    //   53: invokeinterface 303 2 0
    //   58: pop
    //   59: aload_0
    //   60: aload_2
    //   61: putfield 244	com/squareup/okhttp/internal/spdy/SpdyStream:responseHeaders	Ljava/util/List;
    //   64: aload_0
    //   65: monitorexit
    //   66: iload_3
    //   67: ifeq +8 -> 75
    //   70: aload_0
    //   71: iconst_1
    //   72: invokevirtual 305	com/squareup/okhttp/internal/spdy/SpdyStream:closeLater	(I)V
    //   75: return
    //   76: iconst_1
    //   77: istore_3
    //   78: goto -14 -> 64
    //   81: astore_1
    //   82: aload_0
    //   83: monitorexit
    //   84: aload_1
    //   85: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	86	0	this	SpdyStream
    //   0	86	1	paramList	List<String>
    //   39	22	2	localArrayList	java.util.ArrayList
    //   22	56	3	i	int
    // Exception table:
    //   from	to	target	type
    //   25	64	81	finally
    //   64	66	81	finally
    //   82	84	81	finally
  }
  
  void receiveReply(List<String> paramList)
    throws IOException
  {
    assert (!Thread.holdsLock(this));
    int i = 0;
    boolean bool = true;
    try
    {
      if ((isLocallyInitiated()) && (responseHeaders == null))
      {
        responseHeaders = paramList;
        bool = isOpen();
        notifyAll();
        if (i == 0) {
          break label78;
        }
        closeLater(8);
      }
      while (bool)
      {
        return;
        i = 1;
        break;
      }
    }
    finally {}
    label78:
    connection.removeStream(id);
  }
  
  void receiveRstStream(int paramInt)
  {
    try
    {
      if (rstStatusCode == -1)
      {
        rstStatusCode = paramInt;
        notifyAll();
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  void receiveSettings(Settings paramSettings)
  {
    assert (Thread.holdsLock(this));
    setSettings(paramSettings);
    notifyAll();
  }
  
  void receiveWindowUpdate(int paramInt)
  {
    try
    {
      SpdyDataOutputStream.access$620(out, paramInt);
      notifyAll();
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public void reply(List<String> paramList, boolean paramBoolean)
    throws IOException
  {
    assert (!Thread.holdsLock(this));
    int i = 0;
    if (paramList == null) {
      try
      {
        throw new NullPointerException("responseHeaders == null");
      }
      finally {}
    }
    if (isLocallyInitiated()) {
      throw new IllegalStateException("cannot reply to a locally initiated stream");
    }
    if (responseHeaders != null) {
      throw new IllegalStateException("reply already sent");
    }
    responseHeaders = paramList;
    if (!paramBoolean)
    {
      SpdyDataOutputStream.access$302(out, true);
      i = 0x0 | 0x1;
    }
    connection.writeSynReply(id, i, paramList);
  }
  
  public void setReadTimeout(long paramLong)
  {
    readTimeoutMillis = paramLong;
  }
  
  private final class SpdyDataInputStream
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
    
    private SpdyDataInputStream() {}
    
    private void checkNotClosed()
      throws IOException
    {
      if (closed) {
        throw new IOException("stream closed");
      }
      if (rstStatusCode != -1) {
        throw new IOException("stream was reset: " + SpdyStream.this.rstStatusString());
      }
    }
    
    private void waitUntilReadable()
      throws IOException
    {
      long l2 = 0L;
      long l1 = 0L;
      if (readTimeoutMillis != 0L) {
        l2 = System.nanoTime() / 1000000L;
      }
      for (l1 = readTimeoutMillis;; l1 = readTimeoutMillis + l2 - System.nanoTime() / 1000000L)
      {
        try
        {
          for (;;)
          {
            if ((pos != -1) || (finished) || (closed) || (rstStatusCode != -1)) {
              return;
            }
            if (readTimeoutMillis != 0L) {
              break;
            }
            wait();
          }
          if (l1 <= 0L) {
            break;
          }
        }
        catch (InterruptedException localInterruptedException)
        {
          throw new InterruptedIOException();
        }
        wait(l1);
      }
      throw new SocketTimeoutException();
    }
    
    public int available()
      throws IOException
    {
      synchronized (SpdyStream.this)
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
      synchronized (SpdyStream.this)
      {
        closed = true;
        notifyAll();
        SpdyStream.this.cancelStreamIfNecessary();
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
      synchronized (SpdyStream.this)
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
          connection.writeWindowUpdateLater(id, unacknowledgedBytes);
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
      assert (!Thread.holdsLock(SpdyStream.this));
      if (paramInt == 0) {
        return;
      }
      boolean bool;
      int n;
      int m;
      int k;
      synchronized (SpdyStream.this)
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
            closeLater(7);
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
      synchronized (SpdyStream.this)
      {
        limit = paramInt;
        if (pos == -1)
        {
          pos = m;
          notifyAll();
        }
        return;
      }
    }
  }
  
  private final class SpdyDataOutputStream
    extends OutputStream
  {
    private final byte[] buffer = new byte[' '];
    private boolean closed;
    private boolean finished;
    private int pos = 8;
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
    
    private SpdyDataOutputStream() {}
    
    private void checkNotClosed()
      throws IOException
    {
      synchronized (SpdyStream.this)
      {
        if (closed) {
          throw new IOException("stream closed");
        }
      }
      if (finished) {
        throw new IOException("stream finished");
      }
      if (rstStatusCode != -1) {
        throw new IOException("stream was reset: " + SpdyStream.this.rstStatusString());
      }
    }
    
    private void waitUntilWritable(int paramInt, boolean paramBoolean)
      throws IOException
    {
      do
      {
        try
        {
          if (unacknowledgedBytes + paramInt < writeWindowSize) {
            break;
          }
          wait();
          if ((!paramBoolean) && (closed)) {
            throw new IOException("stream closed");
          }
        }
        catch (InterruptedException localInterruptedException)
        {
          throw new InterruptedIOException();
        }
        if (finished) {
          throw new IOException("stream finished");
        }
      } while (rstStatusCode == -1);
      throw new IOException("stream was reset: " + SpdyStream.this.rstStatusString());
    }
    
    private void writeFrame(boolean paramBoolean)
      throws IOException
    {
      assert (!Thread.holdsLock(SpdyStream.this));
      int j = pos - 8;
      synchronized (SpdyStream.this)
      {
        waitUntilWritable(j, paramBoolean);
        unacknowledgedBytes += j;
        int i = 0;
        if (paramBoolean) {
          i = 0x0 | 0x1;
        }
        Util.pokeInt(buffer, 0, id & 0x7FFFFFFF, ByteOrder.BIG_ENDIAN);
        Util.pokeInt(buffer, 4, (i & 0xFF) << 24 | 0xFFFFFF & j, ByteOrder.BIG_ENDIAN);
        connection.writeFrame(buffer, 0, pos);
        pos = 8;
        return;
      }
    }
    
    public void close()
      throws IOException
    {
      assert (!Thread.holdsLock(SpdyStream.this));
      synchronized (SpdyStream.this)
      {
        if (closed) {
          return;
        }
        closed = true;
        writeFrame(true);
        connection.flush();
        SpdyStream.this.cancelStreamIfNecessary();
        return;
      }
    }
    
    public void flush()
      throws IOException
    {
      assert (!Thread.holdsLock(SpdyStream.this));
      checkNotClosed();
      if (pos > 8)
      {
        writeFrame(false);
        connection.flush();
      }
    }
    
    public void write(int paramInt)
      throws IOException
    {
      Util.writeSingleByte(this, paramInt);
    }
    
    public void write(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
      throws IOException
    {
      assert (!Thread.holdsLock(SpdyStream.this));
      Util.checkOffsetAndCount(paramArrayOfByte.length, paramInt1, paramInt2);
      checkNotClosed();
      while (paramInt2 > 0)
      {
        if (pos == buffer.length) {
          writeFrame(false);
        }
        int i = Math.min(paramInt2, buffer.length - pos);
        System.arraycopy(paramArrayOfByte, paramInt1, buffer, pos, i);
        pos += i;
        paramInt1 += i;
        paramInt2 -= i;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.squareup.okhttp.internal.spdy.SpdyStream
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */