package org.java_websocket;

import java.io.IOException;
import java.net.Socket;
import java.net.SocketAddress;
import java.nio.ByteBuffer;
import java.nio.channels.ByteChannel;
import java.nio.channels.SelectableChannel;
import java.nio.channels.SelectionKey;
import java.nio.channels.SocketChannel;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import javax.net.ssl.SSLEngine;
import javax.net.ssl.SSLEngineResult;
import javax.net.ssl.SSLEngineResult.HandshakeStatus;
import javax.net.ssl.SSLEngineResult.Status;
import javax.net.ssl.SSLException;
import javax.net.ssl.SSLSession;

public class SSLSocketChannel2
  implements ByteChannel, WrappedByteChannel
{
  protected static ByteBuffer emptybuffer;
  protected ExecutorService exec;
  protected ByteBuffer inCrypt;
  protected ByteBuffer inData;
  protected SelectionKey key;
  protected ByteBuffer outCrypt;
  protected SSLEngineResult res;
  protected SocketChannel sc;
  protected SSLEngine sslEngine;
  protected List<Future<?>> tasks;
  
  static
  {
    if (!SSLSocketChannel2.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      $assertionsDisabled = bool;
      emptybuffer = ByteBuffer.allocate(0);
      return;
    }
  }
  
  public SSLSocketChannel2(SelectionKey paramSelectionKey, SSLEngine paramSSLEngine, ExecutorService paramExecutorService)
    throws IOException
  {
    sc = ((SocketChannel)paramSelectionKey.channel());
    key = paramSelectionKey;
    sslEngine = paramSSLEngine;
    exec = paramExecutorService;
    tasks = new ArrayList(3);
    key.interestOps(paramSelectionKey.interestOps() | 0x4);
    paramSSLEngine.setEnableSessionCreation(true);
    createBuffers(paramSSLEngine.getSession());
    sc.write(wrap(emptybuffer));
    processHandshake();
  }
  
  private boolean isHandShakeComplete()
  {
    SSLEngineResult.HandshakeStatus localHandshakeStatus = res.getHandshakeStatus();
    return (localHandshakeStatus == SSLEngineResult.HandshakeStatus.FINISHED) || (localHandshakeStatus == SSLEngineResult.HandshakeStatus.NOT_HANDSHAKING);
  }
  
  private void processHandshake()
    throws IOException
  {
    if (!tasks.isEmpty())
    {
      Iterator localIterator = tasks.iterator();
      while (localIterator.hasNext())
      {
        if (!((Future)localIterator.next()).isDone()) {
          return;
        }
        localIterator.remove();
      }
    }
    if (res.getHandshakeStatus() == SSLEngineResult.HandshakeStatus.NEED_UNWRAP)
    {
      inCrypt.compact();
      if (sc.read(inCrypt) == -1) {
        throw new IOException("connection closed unexpectedly by peer");
      }
      inCrypt.flip();
      inData.compact();
      unwrap();
    }
    consumeDelegatedTasks();
    if ((tasks.isEmpty()) || (res.getHandshakeStatus() == SSLEngineResult.HandshakeStatus.NEED_WRAP)) {
      sc.write(wrap(emptybuffer));
    }
  }
  
  private int readRemaining(ByteBuffer paramByteBuffer)
    throws SSLException
  {
    assert (paramByteBuffer.hasRemaining());
    int i;
    if (inData.hasRemaining()) {
      i = transfereTo(inData, paramByteBuffer);
    }
    int j;
    do
    {
      return i;
      assert (!inData.hasRemaining());
      inData.clear();
      if (!inCrypt.hasRemaining()) {
        break;
      }
      unwrap();
      j = transfereTo(inData, paramByteBuffer);
      i = j;
    } while (j > 0);
    return 0;
  }
  
  private int transfereTo(ByteBuffer paramByteBuffer1, ByteBuffer paramByteBuffer2)
  {
    int j = paramByteBuffer1.remaining();
    int i = paramByteBuffer2.remaining();
    if (j > i)
    {
      int k = Math.min(j, i);
      i = 0;
      for (;;)
      {
        j = k;
        if (i >= k) {
          break;
        }
        paramByteBuffer2.put(paramByteBuffer1.get());
        i += 1;
      }
    }
    paramByteBuffer2.put(paramByteBuffer1);
    return j;
  }
  
  private ByteBuffer unwrap()
    throws SSLException
  {
    try
    {
      int i;
      do
      {
        i = inData.remaining();
        res = sslEngine.unwrap(inCrypt, inData);
      } while (i != inData.remaining());
      inData.flip();
      ByteBuffer localByteBuffer = inData;
      return localByteBuffer;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  private ByteBuffer wrap(ByteBuffer paramByteBuffer)
    throws SSLException
  {
    try
    {
      outCrypt.compact();
      res = sslEngine.wrap(paramByteBuffer, outCrypt);
      outCrypt.flip();
      paramByteBuffer = outCrypt;
      return paramByteBuffer;
    }
    finally
    {
      paramByteBuffer = finally;
      throw paramByteBuffer;
    }
  }
  
  public void close()
    throws IOException
  {
    sslEngine.closeOutbound();
    sslEngine.getSession().invalidate();
    if (sc.isOpen()) {
      sc.write(wrap(emptybuffer));
    }
    sc.close();
  }
  
  public SelectableChannel configureBlocking(boolean paramBoolean)
    throws IOException
  {
    return sc.configureBlocking(paramBoolean);
  }
  
  public boolean connect(SocketAddress paramSocketAddress)
    throws IOException
  {
    return sc.connect(paramSocketAddress);
  }
  
  protected void consumeDelegatedTasks()
  {
    for (;;)
    {
      Runnable localRunnable = sslEngine.getDelegatedTask();
      if (localRunnable == null) {
        break;
      }
      tasks.add(exec.submit(localRunnable));
    }
  }
  
  protected void createBuffers(SSLSession paramSSLSession)
  {
    int i = paramSSLSession.getApplicationBufferSize();
    int j = paramSSLSession.getPacketBufferSize();
    inData = ByteBuffer.allocate(i);
    outCrypt = ByteBuffer.allocate(j);
    inCrypt = ByteBuffer.allocate(j);
    inData.flip();
    inCrypt.flip();
    outCrypt.flip();
  }
  
  public boolean finishConnect()
    throws IOException
  {
    return sc.finishConnect();
  }
  
  public boolean isConnected()
  {
    return sc.isConnected();
  }
  
  public boolean isInboundDone()
  {
    return sslEngine.isInboundDone();
  }
  
  public boolean isNeedRead()
  {
    return (inData.hasRemaining()) || ((inCrypt.hasRemaining()) && (res.getStatus() != SSLEngineResult.Status.BUFFER_UNDERFLOW));
  }
  
  public boolean isNeedWrite()
  {
    return (outCrypt.hasRemaining()) || (!isHandShakeComplete());
  }
  
  public boolean isOpen()
  {
    return sc.isOpen();
  }
  
  public int read(ByteBuffer paramByteBuffer)
    throws IOException
  {
    int i;
    if (!isHandShakeComplete())
    {
      processHandshake();
      i = 0;
    }
    int j;
    do
    {
      return i;
      j = readRemaining(paramByteBuffer);
      i = j;
    } while (j != 0);
    assert (inData.position() == 0);
    inData.clear();
    if (!inCrypt.hasRemaining()) {
      inCrypt.clear();
    }
    while (sc.read(inCrypt) == -1)
    {
      return -1;
      inCrypt.compact();
    }
    inCrypt.flip();
    unwrap();
    return transfereTo(inData, paramByteBuffer);
  }
  
  public int readMore(ByteBuffer paramByteBuffer)
    throws SSLException
  {
    return readRemaining(paramByteBuffer);
  }
  
  public Socket socket()
  {
    return sc.socket();
  }
  
  public int write(ByteBuffer paramByteBuffer)
    throws IOException
  {
    if (!isHandShakeComplete())
    {
      processHandshake();
      return 0;
    }
    return sc.write(wrap(paramByteBuffer));
  }
  
  public void writeMore()
    throws IOException
  {
    write(outCrypt);
  }
}

/* Location:
 * Qualified Name:     org.java_websocket.SSLSocketChannel2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */