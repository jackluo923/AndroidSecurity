package com.squareup.okhttp.internal.spdy;

import com.squareup.okhttp.internal.NamedRunnable;
import com.squareup.okhttp.internal.Util;
import java.io.Closeable;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.Socket;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public final class SpdyConnection
  implements Closeable
{
  static final int FLAG_FIN = 1;
  static final int FLAG_UNIDIRECTIONAL = 2;
  static final int GOAWAY_INTERNAL_ERROR = 2;
  static final int GOAWAY_OK = 0;
  static final int GOAWAY_PROTOCOL_ERROR = 1;
  static final int TYPE_CREDENTIAL = 16;
  static final int TYPE_DATA = 0;
  static final int TYPE_GOAWAY = 7;
  static final int TYPE_HEADERS = 8;
  static final int TYPE_NOOP = 5;
  static final int TYPE_PING = 6;
  static final int TYPE_RST_STREAM = 3;
  static final int TYPE_SETTINGS = 4;
  static final int TYPE_SYN_REPLY = 2;
  static final int TYPE_SYN_STREAM = 1;
  static final int TYPE_WINDOW_UPDATE = 9;
  static final int VERSION = 3;
  private static final ExecutorService executor;
  final boolean client;
  private final IncomingStreamHandler handler;
  private final String hostName;
  private long idleStartTimeNs = System.nanoTime();
  private int lastGoodStreamId;
  private int nextPingId;
  private int nextStreamId;
  private Map<Integer, Ping> pings;
  Settings settings;
  private boolean shutdown;
  private final SpdyReader spdyReader;
  private final SpdyWriter spdyWriter;
  private final Map<Integer, SpdyStream> streams = new HashMap();
  
  static
  {
    if (!SpdyConnection.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      $assertionsDisabled = bool;
      executor = new ThreadPoolExecutor(0, Integer.MAX_VALUE, 60L, TimeUnit.SECONDS, new SynchronousQueue(), Executors.defaultThreadFactory());
      return;
    }
  }
  
  private SpdyConnection(Builder paramBuilder)
  {
    client = client;
    handler = handler;
    spdyReader = new SpdyReader(in);
    spdyWriter = new SpdyWriter(out);
    if (client)
    {
      i = 1;
      nextStreamId = i;
      if (!client) {
        break label153;
      }
    }
    label153:
    for (int i = j;; i = 2)
    {
      nextPingId = i;
      hostName = hostName;
      new Thread(new Reader(null), "Spdy Reader " + hostName).start();
      return;
      i = 2;
      break;
    }
  }
  
  private void close(int paramInt1, int paramInt2)
    throws IOException
  {
    assert (!Thread.holdsLock(this));
    Object localObject1 = null;
    Ping[] arrayOfPing;
    Object localObject4;
    try
    {
      shutdown(paramInt1);
      SpdyStream[] arrayOfSpdyStream = null;
      arrayOfPing = null;
      for (;;)
      {
        try
        {
          if (!streams.isEmpty())
          {
            arrayOfSpdyStream = (SpdyStream[])streams.values().toArray(new SpdyStream[streams.size()]);
            streams.clear();
            setIdle(false);
          }
          if (pings != null)
          {
            arrayOfPing = (Ping[])pings.values().toArray(new Ping[pings.size()]);
            pings = null;
          }
          localObject4 = localObject1;
          if (arrayOfSpdyStream == null) {
            break label212;
          }
          int i = arrayOfSpdyStream.length;
          paramInt1 = 0;
          localObject4 = localObject1;
          if (paramInt1 >= i) {
            break label212;
          }
          localObject4 = arrayOfSpdyStream[paramInt1];
        }
        finally {}
        try
        {
          ((SpdyStream)localObject4).close(paramInt2);
          localObject4 = localObject1;
        }
        catch (IOException localIOException4)
        {
          localObject4 = localObject2;
          if (localObject2 == null) {
            continue;
          }
          localObject4 = localIOException4;
          continue;
        }
        paramInt1 += 1;
        localObject1 = localObject4;
      }
    }
    catch (IOException localIOException1)
    {
      for (;;) {}
    }
    label212:
    if (arrayOfPing != null)
    {
      paramInt2 = arrayOfPing.length;
      paramInt1 = 0;
      while (paramInt1 < paramInt2)
      {
        arrayOfPing[paramInt1].cancel();
        paramInt1 += 1;
      }
    }
    try
    {
      spdyReader.close();
      try
      {
        spdyWriter.close();
        localObject3 = localObject4;
      }
      catch (IOException localIOException3)
      {
        for (;;)
        {
          Object localObject3 = localIOException2;
          if (localIOException2 == null) {
            localObject3 = localIOException3;
          }
        }
      }
      if (localObject3 != null) {
        throw ((Throwable)localObject3);
      }
    }
    catch (IOException localIOException2)
    {
      for (;;) {}
    }
  }
  
  private SpdyStream getStream(int paramInt)
  {
    try
    {
      SpdyStream localSpdyStream = (SpdyStream)streams.get(Integer.valueOf(paramInt));
      return localSpdyStream;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  /* Error */
  private Ping removePing(int paramInt)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 289	com/squareup/okhttp/internal/spdy/SpdyConnection:pings	Ljava/util/Map;
    //   6: ifnull +24 -> 30
    //   9: aload_0
    //   10: getfield 289	com/squareup/okhttp/internal/spdy/SpdyConnection:pings	Ljava/util/Map;
    //   13: iload_1
    //   14: invokestatic 307	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   17: invokeinterface 314 2 0
    //   22: checkcast 291	com/squareup/okhttp/internal/spdy/Ping
    //   25: astore_2
    //   26: aload_0
    //   27: monitorexit
    //   28: aload_2
    //   29: areturn
    //   30: aconst_null
    //   31: astore_2
    //   32: goto -6 -> 26
    //   35: astore_2
    //   36: aload_0
    //   37: monitorexit
    //   38: aload_2
    //   39: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	40	0	this	SpdyConnection
    //   0	40	1	paramInt	int
    //   25	7	2	localPing	Ping
    //   35	4	2	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	26	35	finally
  }
  
  private void setIdle(boolean paramBoolean)
  {
    if (paramBoolean) {}
    for (;;)
    {
      try
      {
        l = System.nanoTime();
        idleStartTimeNs = l;
        return;
      }
      finally {}
      long l = 0L;
    }
  }
  
  private void writePing(int paramInt, Ping paramPing)
    throws IOException
  {
    SpdyWriter localSpdyWriter = spdyWriter;
    if (paramPing != null) {}
    try
    {
      paramPing.send();
      spdyWriter.ping(0, paramInt);
      return;
    }
    finally {}
  }
  
  private void writePingLater(final int paramInt, final Ping paramPing)
  {
    executor.submit(new NamedRunnable(String.format("Spdy Writer %s ping %d", new Object[] { hostName, Integer.valueOf(paramInt) }))
    {
      public void execute()
      {
        try
        {
          SpdyConnection.this.writePing(paramInt, paramPing);
          return;
        }
        catch (IOException localIOException) {}
      }
    });
  }
  
  public void close()
    throws IOException
  {
    close(0, 5);
  }
  
  public void flush()
    throws IOException
  {
    synchronized (spdyWriter)
    {
      spdyWriter.out.flush();
      return;
    }
  }
  
  public long getIdleStartTimeNs()
  {
    try
    {
      long l = idleStartTimeNs;
      return l;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  /* Error */
  public boolean isIdle()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 128	com/squareup/okhttp/internal/spdy/SpdyConnection:idleStartTimeNs	J
    //   6: lstore_2
    //   7: lload_2
    //   8: lconst_0
    //   9: lcmp
    //   10: ifeq +11 -> 21
    //   13: iconst_1
    //   14: istore 4
    //   16: aload_0
    //   17: monitorexit
    //   18: iload 4
    //   20: ireturn
    //   21: iconst_0
    //   22: istore 4
    //   24: goto -8 -> 16
    //   27: astore_1
    //   28: aload_0
    //   29: monitorexit
    //   30: aload_1
    //   31: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	32	0	this	SpdyConnection
    //   27	4	1	localObject	Object
    //   6	2	2	l	long
    //   14	9	4	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   2	7	27	finally
  }
  
  public SpdyStream newStream(List<String> paramList, boolean paramBoolean1, boolean paramBoolean2)
    throws IOException
  {
    int i;
    if (paramBoolean1)
    {
      i = 0;
      if (!paramBoolean2) {
        break label67;
      }
    }
    label67:
    for (int j = 0;; j = 2)
    {
      i |= j;
      synchronized (spdyWriter)
      {
        try
        {
          if (!shutdown) {
            break label73;
          }
          throw new IOException("shutdown");
        }
        finally {}
      }
      i = 1;
      break;
    }
    label73:
    j = nextStreamId;
    nextStreamId += 2;
    SpdyStream localSpdyStream = new SpdyStream(j, this, i, 0, 0, paramList, settings);
    if (localSpdyStream.isOpen())
    {
      streams.put(Integer.valueOf(j), localSpdyStream);
      setIdle(false);
    }
    spdyWriter.synStream(i, j, 0, 0, 0, paramList);
    return localSpdyStream;
  }
  
  public void noop()
    throws IOException
  {
    spdyWriter.noop();
  }
  
  public int openStreamCount()
  {
    try
    {
      int i = streams.size();
      return i;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public Ping ping()
    throws IOException
  {
    Ping localPing = new Ping();
    try
    {
      if (shutdown) {
        throw new IOException("shutdown");
      }
    }
    finally {}
    int i = nextPingId;
    nextPingId += 2;
    if (pings == null) {
      pings = new HashMap();
    }
    pings.put(Integer.valueOf(i), localObject);
    writePing(i, (Ping)localObject);
    return (Ping)localObject;
  }
  
  SpdyStream removeStream(int paramInt)
  {
    try
    {
      SpdyStream localSpdyStream = (SpdyStream)streams.remove(Integer.valueOf(paramInt));
      if ((localSpdyStream != null) && (streams.isEmpty())) {
        setIdle(true);
      }
      return localSpdyStream;
    }
    finally {}
  }
  
  public void shutdown(int paramInt)
    throws IOException
  {
    int i;
    synchronized (spdyWriter) {}
  }
  
  void writeFrame(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    throws IOException
  {
    synchronized (spdyWriter)
    {
      spdyWriter.out.write(paramArrayOfByte, paramInt1, paramInt2);
      return;
    }
  }
  
  void writeSynReply(int paramInt1, int paramInt2, List<String> paramList)
    throws IOException
  {
    spdyWriter.synReply(paramInt2, paramInt1, paramList);
  }
  
  void writeSynReset(int paramInt1, int paramInt2)
    throws IOException
  {
    spdyWriter.rstStream(paramInt1, paramInt2);
  }
  
  void writeSynResetLater(final int paramInt1, final int paramInt2)
  {
    executor.submit(new NamedRunnable(String.format("Spdy Writer %s stream %d", new Object[] { hostName, Integer.valueOf(paramInt1) }))
    {
      public void execute()
      {
        try
        {
          writeSynReset(paramInt1, paramInt2);
          return;
        }
        catch (IOException localIOException) {}
      }
    });
  }
  
  void writeWindowUpdate(int paramInt1, int paramInt2)
    throws IOException
  {
    spdyWriter.windowUpdate(paramInt1, paramInt2);
  }
  
  void writeWindowUpdateLater(final int paramInt1, final int paramInt2)
  {
    executor.submit(new NamedRunnable(String.format("Spdy Writer %s stream %d", new Object[] { hostName, Integer.valueOf(paramInt1) }))
    {
      public void execute()
      {
        try
        {
          writeWindowUpdate(paramInt1, paramInt2);
          return;
        }
        catch (IOException localIOException) {}
      }
    });
  }
  
  public static class Builder
  {
    public boolean client;
    private IncomingStreamHandler handler = IncomingStreamHandler.REFUSE_INCOMING_STREAMS;
    private String hostName;
    private InputStream in;
    private OutputStream out;
    
    public Builder(String paramString, boolean paramBoolean, InputStream paramInputStream, OutputStream paramOutputStream)
    {
      hostName = paramString;
      client = paramBoolean;
      in = paramInputStream;
      out = paramOutputStream;
    }
    
    public Builder(String paramString, boolean paramBoolean, Socket paramSocket)
      throws IOException
    {
      this(paramString, paramBoolean, paramSocket.getInputStream(), paramSocket.getOutputStream());
    }
    
    public Builder(boolean paramBoolean, InputStream paramInputStream, OutputStream paramOutputStream)
    {
      this("", paramBoolean, paramInputStream, paramOutputStream);
    }
    
    public Builder(boolean paramBoolean, Socket paramSocket)
      throws IOException
    {
      this("", paramBoolean, paramSocket.getInputStream(), paramSocket.getOutputStream());
    }
    
    public SpdyConnection build()
    {
      return new SpdyConnection(this, null);
    }
    
    public Builder handler(IncomingStreamHandler paramIncomingStreamHandler)
    {
      handler = paramIncomingStreamHandler;
      return this;
    }
  }
  
  private class Reader
    implements Runnable, SpdyReader.Handler
  {
    private Reader() {}
    
    public void data(int paramInt1, int paramInt2, InputStream paramInputStream, int paramInt3)
      throws IOException
    {
      SpdyStream localSpdyStream = SpdyConnection.this.getStream(paramInt2);
      if (localSpdyStream == null)
      {
        writeSynResetLater(paramInt2, 2);
        Util.skipByReading(paramInputStream, paramInt3);
      }
      do
      {
        return;
        localSpdyStream.receiveData(paramInputStream, paramInt3);
      } while ((paramInt1 & 0x1) == 0);
      localSpdyStream.receiveFin();
    }
    
    public void goAway(int paramInt1, int paramInt2, int paramInt3)
    {
      synchronized (SpdyConnection.this)
      {
        SpdyConnection.access$1002(SpdyConnection.this, true);
        Iterator localIterator = streams.entrySet().iterator();
        while (localIterator.hasNext())
        {
          Map.Entry localEntry = (Map.Entry)localIterator.next();
          if ((((Integer)localEntry.getKey()).intValue() > paramInt2) && (((SpdyStream)localEntry.getValue()).isLocallyInitiated()))
          {
            ((SpdyStream)localEntry.getValue()).receiveRstStream(3);
            localIterator.remove();
          }
        }
      }
    }
    
    public void headers(int paramInt1, int paramInt2, List<String> paramList)
      throws IOException
    {
      SpdyStream localSpdyStream = SpdyConnection.this.getStream(paramInt2);
      if (localSpdyStream != null) {
        localSpdyStream.receiveHeaders(paramList);
      }
    }
    
    public void noop() {}
    
    public void ping(int paramInt1, int paramInt2)
    {
      boolean bool1 = true;
      boolean bool2 = client;
      if (paramInt2 % 2 == 1)
      {
        if (bool2 == bool1) {
          break label42;
        }
        SpdyConnection.this.writePingLater(paramInt2, null);
      }
      label42:
      Ping localPing;
      do
      {
        return;
        bool1 = false;
        break;
        localPing = SpdyConnection.this.removePing(paramInt2);
      } while (localPing == null);
      localPing.receive();
    }
    
    public void rstStream(int paramInt1, int paramInt2, int paramInt3)
    {
      SpdyStream localSpdyStream = removeStream(paramInt2);
      if (localSpdyStream != null) {
        localSpdyStream.receiveRstStream(paramInt3);
      }
    }
    
    public void run()
    {
      try
      {
        boolean bool;
        do
        {
          bool = spdyReader.nextFrame(this);
        } while (bool);
        try
        {
          SpdyConnection.this.close(2, 6);
          throw ((Throwable)localObject);
        }
        catch (IOException localIOException3)
        {
          for (;;) {}
        }
      }
      catch (IOException localIOException1)
      {
        try
        {
          SpdyConnection.this.close(0, 5);
          return;
        }
        catch (IOException localIOException2)
        {
          return;
        }
        localIOException1 = localIOException1;
        SpdyConnection.this.close(1, 1);
        return;
      }
      finally
      {
        localObject = finally;
      }
    }
    
    public void settings(int paramInt, Settings paramSettings)
    {
      ??? = null;
      for (;;)
      {
        synchronized (SpdyConnection.this)
        {
          if ((settings == null) || ((paramInt & 0x1) != 0))
          {
            settings = paramSettings;
            paramSettings = (Settings)???;
            if (!streams.isEmpty()) {
              paramSettings = (SpdyStream[])streams.values().toArray(new SpdyStream[streams.size()]);
            }
            if (paramSettings == null) {
              break;
            }
            int i = paramSettings.length;
            paramInt = 0;
            if (paramInt >= i) {
              break;
            }
          }
        }
        synchronized (paramSettings[paramInt])
        {
          try
          {
            ((SpdyStream)???).receiveSettings(settings);
            paramInt += 1;
            continue;
          }
          finally {}
          settings.merge(paramSettings);
          continue;
          paramSettings = finally;
          throw paramSettings;
        }
      }
    }
    
    public void synReply(int paramInt1, int paramInt2, List<String> paramList)
      throws IOException
    {
      SpdyStream localSpdyStream = SpdyConnection.this.getStream(paramInt2);
      if (localSpdyStream == null) {
        writeSynResetLater(paramInt2, 2);
      }
      do
      {
        return;
        localSpdyStream.receiveReply(paramList);
      } while ((paramInt1 & 0x1) == 0);
      localSpdyStream.receiveFin();
    }
    
    public void synStream(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, final List<String> paramList)
    {
      synchronized (SpdyConnection.this)
      {
        paramList = new SpdyStream(paramInt2, SpdyConnection.this, paramInt1, paramInt4, paramInt5, paramList, settings);
        if (shutdown) {
          return;
        }
        SpdyConnection.access$1102(SpdyConnection.this, paramInt2);
        SpdyStream localSpdyStream = (SpdyStream)streams.put(Integer.valueOf(paramInt2), paramList);
        if (localSpdyStream != null)
        {
          localSpdyStream.closeLater(1);
          removeStream(paramInt2);
          return;
        }
      }
      SpdyConnection.executor.submit(new NamedRunnable(String.format("Callback %s stream %d", new Object[] { hostName, Integer.valueOf(paramInt2) }))
      {
        public void execute()
        {
          try
          {
            handler.receive(paramList);
            return;
          }
          catch (IOException localIOException)
          {
            throw new RuntimeException(localIOException);
          }
        }
      });
    }
    
    public void windowUpdate(int paramInt1, int paramInt2, int paramInt3)
    {
      SpdyStream localSpdyStream = SpdyConnection.this.getStream(paramInt2);
      if (localSpdyStream != null) {
        localSpdyStream.receiveWindowUpdate(paramInt3);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.squareup.okhttp.internal.spdy.SpdyConnection
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */