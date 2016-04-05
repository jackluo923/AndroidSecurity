package org.java_websocket.server;

import java.io.IOException;
import java.net.InetSocketAddress;
import java.net.ServerSocket;
import java.net.Socket;
import java.net.UnknownHostException;
import java.nio.ByteBuffer;
import java.nio.channels.ByteChannel;
import java.nio.channels.CancelledKeyException;
import java.nio.channels.SelectionKey;
import java.nio.channels.Selector;
import java.nio.channels.ServerSocketChannel;
import java.nio.channels.SocketChannel;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Set;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import org.java_websocket.WebSocket;
import org.java_websocket.WebSocketAdapter;
import org.java_websocket.WebSocketFactory;
import org.java_websocket.WebSocketImpl;
import org.java_websocket.drafts.Draft;
import org.java_websocket.handshake.ClientHandshake;
import org.java_websocket.handshake.Handshakedata;

public abstract class WebSocketServer
  extends WebSocketAdapter
  implements Runnable
{
  public static int DECODERS = Runtime.getRuntime().availableProcessors();
  private InetSocketAddress address;
  private BlockingQueue<ByteBuffer> buffers;
  private final Set<WebSocket> connections = new HashSet();
  private List<WebSocketWorker> decoders;
  private List<Draft> drafts;
  private List<WebSocketImpl> iqueue;
  private volatile AtomicBoolean isclosed = new AtomicBoolean(false);
  private BlockingQueue<WebSocketImpl> oqueue;
  private int queueinvokes = 0;
  private AtomicInteger queuesize = new AtomicInteger(0);
  private Selector selector;
  private Thread selectorthread;
  private ServerSocketChannel server;
  private WebSocketServerFactory wsf = new WebSocketServerFactory()
  {
    public WebSocketImpl createWebSocket(WebSocketAdapter paramAnonymousWebSocketAdapter, List<Draft> paramAnonymousList, Socket paramAnonymousSocket)
    {
      return new WebSocketImpl(paramAnonymousWebSocketAdapter, paramAnonymousList, paramAnonymousSocket);
    }
    
    public WebSocketImpl createWebSocket(WebSocketAdapter paramAnonymousWebSocketAdapter, Draft paramAnonymousDraft, Socket paramAnonymousSocket)
    {
      return new WebSocketImpl(paramAnonymousWebSocketAdapter, paramAnonymousDraft, paramAnonymousSocket);
    }
    
    public SocketChannel wrapChannel(SelectionKey paramAnonymousSelectionKey)
    {
      return (SocketChannel)paramAnonymousSelectionKey.channel();
    }
  };
  
  public WebSocketServer()
    throws UnknownHostException
  {
    this(new InetSocketAddress(80), DECODERS, null);
  }
  
  public WebSocketServer(InetSocketAddress paramInetSocketAddress)
  {
    this(paramInetSocketAddress, DECODERS, null);
  }
  
  public WebSocketServer(InetSocketAddress paramInetSocketAddress, int paramInt)
  {
    this(paramInetSocketAddress, paramInt, null);
  }
  
  public WebSocketServer(InetSocketAddress paramInetSocketAddress, int paramInt, List<Draft> paramList)
  {
    if (paramList == null) {}
    for (drafts = Collections.emptyList();; drafts = paramList)
    {
      setAddress(paramInetSocketAddress);
      oqueue = new LinkedBlockingQueue();
      iqueue = new LinkedList();
      decoders = new ArrayList(paramInt);
      buffers = new LinkedBlockingQueue();
      int i = 0;
      while (i < paramInt)
      {
        paramInetSocketAddress = new WebSocketWorker();
        decoders.add(paramInetSocketAddress);
        paramInetSocketAddress.start();
        i += 1;
      }
    }
  }
  
  public WebSocketServer(InetSocketAddress paramInetSocketAddress, List<Draft> paramList)
  {
    this(paramInetSocketAddress, DECODERS, paramList);
  }
  
  private void handleFatal(WebSocket paramWebSocket, RuntimeException paramRuntimeException)
  {
    onError(paramWebSocket, paramRuntimeException);
    try
    {
      stop();
      return;
    }
    catch (IOException paramWebSocket)
    {
      onError(null, paramWebSocket);
      return;
    }
    catch (InterruptedException paramWebSocket)
    {
      Thread.currentThread().interrupt();
      onError(null, paramWebSocket);
    }
  }
  
  private void handleIOException(WebSocket paramWebSocket, IOException paramIOException)
  {
    onWebsocketError(paramWebSocket, paramIOException);
    if (paramWebSocket != null) {
      paramWebSocket.close(1006);
    }
  }
  
  private void pushBuffer(ByteBuffer paramByteBuffer)
    throws InterruptedException
  {
    if (buffers.size() > queuesize.intValue()) {
      return;
    }
    buffers.put(paramByteBuffer);
  }
  
  private void queue(WebSocketImpl paramWebSocketImpl)
    throws InterruptedException
  {
    if (workerThread == null)
    {
      workerThread = ((WebSocketWorker)decoders.get(queueinvokes % decoders.size()));
      queueinvokes += 1;
    }
    workerThread.put(paramWebSocketImpl);
  }
  
  private void registerWrite()
    throws CancelledKeyException
  {
    int j = oqueue.size();
    int i = 0;
    while (i < j)
    {
      oqueue.remove()).key.interestOps(5);
      i += 1;
    }
  }
  
  private ByteBuffer takeBuffer()
    throws InterruptedException
  {
    return (ByteBuffer)buffers.take();
  }
  
  protected void allocateBuffers(WebSocket paramWebSocket)
    throws InterruptedException
  {
    if (queuesize.get() >= decoders.size() * 2 + 1) {
      return;
    }
    queuesize.incrementAndGet();
    buffers.put(createBuffer());
  }
  
  public Set<WebSocket> connections()
  {
    return connections;
  }
  
  public ByteBuffer createBuffer()
  {
    return ByteBuffer.allocate(WebSocket.RCVBUF);
  }
  
  public InetSocketAddress getAddress()
  {
    return address;
  }
  
  public List<Draft> getDraft()
  {
    return Collections.unmodifiableList(drafts);
  }
  
  protected String getFlashSecurityPolicy()
  {
    return "<cross-domain-policy><allow-access-from domain=\"*\" to-ports=\"" + getPort() + "\" /></cross-domain-policy>";
  }
  
  public int getPort()
  {
    int j = getAddress().getPort();
    int i = j;
    if (j == 0)
    {
      i = j;
      if (server != null) {
        i = server.socket().getLocalPort();
      }
    }
    return i;
  }
  
  public final WebSocketFactory getWebSocketFactory()
  {
    return wsf;
  }
  
  public abstract void onClose(WebSocket paramWebSocket, int paramInt, String paramString, boolean paramBoolean);
  
  protected boolean onConnect(SelectionKey paramSelectionKey)
  {
    return true;
  }
  
  public abstract void onError(WebSocket paramWebSocket, Exception paramException);
  
  public abstract void onMessage(WebSocket paramWebSocket, String paramString);
  
  public void onMessage(WebSocket paramWebSocket, ByteBuffer paramByteBuffer) {}
  
  public abstract void onOpen(WebSocket paramWebSocket, ClientHandshake paramClientHandshake);
  
  /* Error */
  public final void onWebsocketClose(WebSocket paramWebSocket, int paramInt, String paramString, boolean paramBoolean)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 119	org/java_websocket/server/WebSocketServer:oqueue	Ljava/util/concurrent/BlockingQueue;
    //   4: aload_1
    //   5: checkcast 207	org/java_websocket/WebSocketImpl
    //   8: invokeinterface 322 2 0
    //   13: pop
    //   14: aload_0
    //   15: getfield 324	org/java_websocket/server/WebSocketServer:selector	Ljava/nio/channels/Selector;
    //   18: invokevirtual 330	java/nio/channels/Selector:wakeup	()Ljava/nio/channels/Selector;
    //   21: pop
    //   22: aload_0
    //   23: getfield 84	org/java_websocket/server/WebSocketServer:connections	Ljava/util/Set;
    //   26: astore 5
    //   28: aload 5
    //   30: monitorenter
    //   31: aload_0
    //   32: getfield 84	org/java_websocket/server/WebSocketServer:connections	Ljava/util/Set;
    //   35: aload_1
    //   36: invokeinterface 334 2 0
    //   41: ifeq +12 -> 53
    //   44: aload_0
    //   45: aload_1
    //   46: iload_2
    //   47: aload_3
    //   48: iload 4
    //   50: invokevirtual 336	org/java_websocket/server/WebSocketServer:onClose	(Lorg/java_websocket/WebSocket;ILjava/lang/String;Z)V
    //   53: aload 5
    //   55: monitorexit
    //   56: aload_0
    //   57: aload_1
    //   58: invokevirtual 339	org/java_websocket/server/WebSocketServer:releaseBuffers	(Lorg/java_websocket/WebSocket;)V
    //   61: return
    //   62: astore_3
    //   63: aload 5
    //   65: monitorexit
    //   66: aload_3
    //   67: athrow
    //   68: astore_3
    //   69: aload_0
    //   70: aload_1
    //   71: invokevirtual 339	org/java_websocket/server/WebSocketServer:releaseBuffers	(Lorg/java_websocket/WebSocket;)V
    //   74: aload_3
    //   75: athrow
    //   76: astore_1
    //   77: invokestatic 180	java/lang/Thread:currentThread	()Ljava/lang/Thread;
    //   80: invokevirtual 183	java/lang/Thread:interrupt	()V
    //   83: return
    //   84: astore_1
    //   85: invokestatic 180	java/lang/Thread:currentThread	()Ljava/lang/Thread;
    //   88: invokevirtual 183	java/lang/Thread:interrupt	()V
    //   91: goto -17 -> 74
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	94	0	this	WebSocketServer
    //   0	94	1	paramWebSocket	WebSocket
    //   0	94	2	paramInt	int
    //   0	94	3	paramString	String
    //   0	94	4	paramBoolean	boolean
    //   26	38	5	localSet	Set
    // Exception table:
    //   from	to	target	type
    //   31	53	62	finally
    //   53	56	62	finally
    //   63	66	62	finally
    //   22	31	68	finally
    //   66	68	68	finally
    //   56	61	76	java/lang/InterruptedException
    //   69	74	84	java/lang/InterruptedException
  }
  
  public final void onWebsocketError(WebSocket paramWebSocket, Exception paramException)
  {
    onError(paramWebSocket, paramException);
  }
  
  public final void onWebsocketMessage(WebSocket paramWebSocket, String paramString)
  {
    onMessage(paramWebSocket, paramString);
  }
  
  public final void onWebsocketMessage(WebSocket paramWebSocket, ByteBuffer paramByteBuffer)
  {
    onMessage(paramWebSocket, paramByteBuffer);
  }
  
  public final void onWebsocketOpen(WebSocket paramWebSocket, Handshakedata paramHandshakedata)
  {
    synchronized (connections)
    {
      if (connections.add(paramWebSocket)) {
        onOpen(paramWebSocket, (ClientHandshake)paramHandshakedata);
      }
      return;
    }
  }
  
  public final void onWriteDemand(WebSocket paramWebSocket)
  {
    paramWebSocket = (WebSocketImpl)paramWebSocket;
    oqueue.add(paramWebSocket);
    selector.wakeup();
  }
  
  protected void releaseBuffers(WebSocket paramWebSocket)
    throws InterruptedException
  {}
  
  /* Error */
  public void run()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 357	org/java_websocket/server/WebSocketServer:selectorthread	Ljava/lang/Thread;
    //   6: ifnull +42 -> 48
    //   9: new 359	java/lang/IllegalStateException
    //   12: dup
    //   13: new 275	java/lang/StringBuilder
    //   16: dup
    //   17: invokespecial 276	java/lang/StringBuilder:<init>	()V
    //   20: aload_0
    //   21: invokevirtual 365	java/lang/Object:getClass	()Ljava/lang/Class;
    //   24: invokevirtual 370	java/lang/Class:getName	()Ljava/lang/String;
    //   27: invokevirtual 282	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   30: ldc_w 372
    //   33: invokevirtual 282	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   36: invokevirtual 293	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   39: invokespecial 375	java/lang/IllegalStateException:<init>	(Ljava/lang/String;)V
    //   42: athrow
    //   43: astore_1
    //   44: aload_0
    //   45: monitorexit
    //   46: aload_1
    //   47: athrow
    //   48: aload_0
    //   49: invokestatic 180	java/lang/Thread:currentThread	()Ljava/lang/Thread;
    //   52: putfield 357	org/java_websocket/server/WebSocketServer:selectorthread	Ljava/lang/Thread;
    //   55: aload_0
    //   56: getfield 91	org/java_websocket/server/WebSocketServer:isclosed	Ljava/util/concurrent/atomic/AtomicBoolean;
    //   59: invokevirtual 378	java/util/concurrent/atomic/AtomicBoolean:get	()Z
    //   62: ifeq +6 -> 68
    //   65: aload_0
    //   66: monitorexit
    //   67: return
    //   68: aload_0
    //   69: monitorexit
    //   70: aload_0
    //   71: getfield 357	org/java_websocket/server/WebSocketServer:selectorthread	Ljava/lang/Thread;
    //   74: new 275	java/lang/StringBuilder
    //   77: dup
    //   78: invokespecial 276	java/lang/StringBuilder:<init>	()V
    //   81: ldc_w 380
    //   84: invokevirtual 282	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   87: aload_0
    //   88: getfield 357	org/java_websocket/server/WebSocketServer:selectorthread	Ljava/lang/Thread;
    //   91: invokevirtual 384	java/lang/Thread:getId	()J
    //   94: invokevirtual 387	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   97: invokevirtual 293	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   100: invokevirtual 390	java/lang/Thread:setName	(Ljava/lang/String;)V
    //   103: aload_0
    //   104: invokestatic 394	java/nio/channels/ServerSocketChannel:open	()Ljava/nio/channels/ServerSocketChannel;
    //   107: putfield 298	org/java_websocket/server/WebSocketServer:server	Ljava/nio/channels/ServerSocketChannel;
    //   110: aload_0
    //   111: getfield 298	org/java_websocket/server/WebSocketServer:server	Ljava/nio/channels/ServerSocketChannel;
    //   114: iconst_0
    //   115: invokevirtual 398	java/nio/channels/ServerSocketChannel:configureBlocking	(Z)Ljava/nio/channels/SelectableChannel;
    //   118: pop
    //   119: aload_0
    //   120: getfield 298	org/java_websocket/server/WebSocketServer:server	Ljava/nio/channels/ServerSocketChannel;
    //   123: invokevirtual 304	java/nio/channels/ServerSocketChannel:socket	()Ljava/net/ServerSocket;
    //   126: astore_1
    //   127: aload_1
    //   128: getstatic 257	org/java_websocket/WebSocket:RCVBUF	I
    //   131: invokevirtual 401	java/net/ServerSocket:setReceiveBufferSize	(I)V
    //   134: aload_1
    //   135: aload_0
    //   136: getfield 265	org/java_websocket/server/WebSocketServer:address	Ljava/net/InetSocketAddress;
    //   139: invokevirtual 405	java/net/ServerSocket:bind	(Ljava/net/SocketAddress;)V
    //   142: aload_0
    //   143: invokestatic 407	java/nio/channels/Selector:open	()Ljava/nio/channels/Selector;
    //   146: putfield 324	org/java_websocket/server/WebSocketServer:selector	Ljava/nio/channels/Selector;
    //   149: aload_0
    //   150: getfield 298	org/java_websocket/server/WebSocketServer:server	Ljava/nio/channels/ServerSocketChannel;
    //   153: aload_0
    //   154: getfield 324	org/java_websocket/server/WebSocketServer:selector	Ljava/nio/channels/Selector;
    //   157: aload_0
    //   158: getfield 298	org/java_websocket/server/WebSocketServer:server	Ljava/nio/channels/ServerSocketChannel;
    //   161: invokevirtual 410	java/nio/channels/ServerSocketChannel:validOps	()I
    //   164: invokevirtual 414	java/nio/channels/ServerSocketChannel:register	(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;
    //   167: pop
    //   168: aload_0
    //   169: getfield 357	org/java_websocket/server/WebSocketServer:selectorthread	Ljava/lang/Thread;
    //   172: invokevirtual 417	java/lang/Thread:isInterrupted	()Z
    //   175: istore 8
    //   177: iload 8
    //   179: ifne +739 -> 918
    //   182: aconst_null
    //   183: astore 5
    //   185: aconst_null
    //   186: astore 4
    //   188: aconst_null
    //   189: astore 6
    //   191: aconst_null
    //   192: astore_2
    //   193: aload 6
    //   195: astore_1
    //   196: aload 5
    //   198: astore_3
    //   199: aload_0
    //   200: getfield 324	org/java_websocket/server/WebSocketServer:selector	Ljava/nio/channels/Selector;
    //   203: invokevirtual 420	java/nio/channels/Selector:select	()I
    //   206: pop
    //   207: aload 6
    //   209: astore_1
    //   210: aload 5
    //   212: astore_3
    //   213: aload_0
    //   214: invokespecial 422	org/java_websocket/server/WebSocketServer:registerWrite	()V
    //   217: aload 6
    //   219: astore_1
    //   220: aload 5
    //   222: astore_3
    //   223: aload_0
    //   224: getfield 324	org/java_websocket/server/WebSocketServer:selector	Ljava/nio/channels/Selector;
    //   227: invokevirtual 425	java/nio/channels/Selector:selectedKeys	()Ljava/util/Set;
    //   230: invokeinterface 429 1 0
    //   235: astore 7
    //   237: aload_2
    //   238: astore_1
    //   239: aload 4
    //   241: astore_3
    //   242: aload_2
    //   243: astore 5
    //   245: aload 7
    //   247: invokeinterface 434 1 0
    //   252: ifeq +532 -> 784
    //   255: aload_2
    //   256: astore_1
    //   257: aload 4
    //   259: astore_3
    //   260: aload 7
    //   262: invokeinterface 437 1 0
    //   267: checkcast 231	java/nio/channels/SelectionKey
    //   270: astore 6
    //   272: aload 6
    //   274: astore 4
    //   276: aload_2
    //   277: astore_1
    //   278: aload 6
    //   280: astore_3
    //   281: aload 6
    //   283: invokevirtual 440	java/nio/channels/SelectionKey:isValid	()Z
    //   286: ifeq -49 -> 237
    //   289: aload_2
    //   290: astore_1
    //   291: aload 6
    //   293: astore_3
    //   294: aload 6
    //   296: invokevirtual 443	java/nio/channels/SelectionKey:isAcceptable	()Z
    //   299: ifeq +200 -> 499
    //   302: aload_2
    //   303: astore_1
    //   304: aload 6
    //   306: astore_3
    //   307: aload_0
    //   308: aload 6
    //   310: invokevirtual 445	org/java_websocket/server/WebSocketServer:onConnect	(Ljava/nio/channels/SelectionKey;)Z
    //   313: ifne +32 -> 345
    //   316: aload_2
    //   317: astore_1
    //   318: aload 6
    //   320: astore_3
    //   321: aload 6
    //   323: invokevirtual 448	java/nio/channels/SelectionKey:cancel	()V
    //   326: aload 6
    //   328: astore 4
    //   330: goto -93 -> 237
    //   333: astore_1
    //   334: goto -166 -> 168
    //   337: astore_1
    //   338: aload_0
    //   339: aconst_null
    //   340: aload_1
    //   341: invokevirtual 186	org/java_websocket/server/WebSocketServer:onWebsocketError	(Lorg/java_websocket/WebSocket;Ljava/lang/Exception;)V
    //   344: return
    //   345: aload_2
    //   346: astore_1
    //   347: aload 6
    //   349: astore_3
    //   350: aload_0
    //   351: getfield 298	org/java_websocket/server/WebSocketServer:server	Ljava/nio/channels/ServerSocketChannel;
    //   354: invokevirtual 452	java/nio/channels/ServerSocketChannel:accept	()Ljava/nio/channels/SocketChannel;
    //   357: astore 4
    //   359: aload_2
    //   360: astore_1
    //   361: aload 6
    //   363: astore_3
    //   364: aload 4
    //   366: iconst_0
    //   367: invokevirtual 455	java/nio/channels/SocketChannel:configureBlocking	(Z)Ljava/nio/channels/SelectableChannel;
    //   370: pop
    //   371: aload_2
    //   372: astore_1
    //   373: aload 6
    //   375: astore_3
    //   376: aload_0
    //   377: getfield 103	org/java_websocket/server/WebSocketServer:wsf	Lorg/java_websocket/server/WebSocketServer$WebSocketServerFactory;
    //   380: aload_0
    //   381: aload_0
    //   382: getfield 111	org/java_websocket/server/WebSocketServer:drafts	Ljava/util/List;
    //   385: aload 4
    //   387: invokevirtual 458	java/nio/channels/SocketChannel:socket	()Ljava/net/Socket;
    //   390: invokeinterface 462 4 0
    //   395: astore 5
    //   397: aload_2
    //   398: astore_1
    //   399: aload 6
    //   401: astore_3
    //   402: aload 5
    //   404: aload 4
    //   406: aload_0
    //   407: getfield 324	org/java_websocket/server/WebSocketServer:selector	Ljava/nio/channels/Selector;
    //   410: iconst_1
    //   411: aload 5
    //   413: invokevirtual 465	java/nio/channels/SocketChannel:register	(Ljava/nio/channels/Selector;ILjava/lang/Object;)Ljava/nio/channels/SelectionKey;
    //   416: putfield 229	org/java_websocket/WebSocketImpl:key	Ljava/nio/channels/SelectionKey;
    //   419: aload_2
    //   420: astore_1
    //   421: aload 6
    //   423: astore_3
    //   424: aload 5
    //   426: aload_0
    //   427: getfield 103	org/java_websocket/server/WebSocketServer:wsf	Lorg/java_websocket/server/WebSocketServer$WebSocketServerFactory;
    //   430: aload 5
    //   432: getfield 229	org/java_websocket/WebSocketImpl:key	Ljava/nio/channels/SelectionKey;
    //   435: invokeinterface 469 2 0
    //   440: putfield 473	org/java_websocket/WebSocketImpl:channel	Ljava/nio/channels/ByteChannel;
    //   443: aload_2
    //   444: astore_1
    //   445: aload 6
    //   447: astore_3
    //   448: aload 7
    //   450: invokeinterface 475 1 0
    //   455: aload_2
    //   456: astore_1
    //   457: aload 6
    //   459: astore_3
    //   460: aload_0
    //   461: aload 5
    //   463: invokevirtual 477	org/java_websocket/server/WebSocketServer:allocateBuffers	(Lorg/java_websocket/WebSocket;)V
    //   466: aload 6
    //   468: astore 4
    //   470: goto -233 -> 237
    //   473: astore_2
    //   474: aload_3
    //   475: ifnull +7 -> 482
    //   478: aload_3
    //   479: invokevirtual 448	java/nio/channels/SelectionKey:cancel	()V
    //   482: aload_0
    //   483: aload_1
    //   484: aload_2
    //   485: invokespecial 151	org/java_websocket/server/WebSocketServer:handleIOException	(Lorg/java_websocket/WebSocket;Ljava/io/IOException;)V
    //   488: goto -320 -> 168
    //   491: astore_1
    //   492: aload_0
    //   493: aconst_null
    //   494: aload_1
    //   495: invokespecial 165	org/java_websocket/server/WebSocketServer:handleFatal	(Lorg/java_websocket/WebSocket;Ljava/lang/RuntimeException;)V
    //   498: return
    //   499: aload_2
    //   500: astore_1
    //   501: aload 6
    //   503: astore_3
    //   504: aload_2
    //   505: astore 5
    //   507: aload 6
    //   509: invokevirtual 480	java/nio/channels/SelectionKey:isReadable	()Z
    //   512: ifeq +109 -> 621
    //   515: aload_2
    //   516: astore_1
    //   517: aload 6
    //   519: astore_3
    //   520: aload 6
    //   522: invokevirtual 483	java/nio/channels/SelectionKey:attachment	()Ljava/lang/Object;
    //   525: checkcast 207	org/java_websocket/WebSocketImpl
    //   528: astore_2
    //   529: aload_2
    //   530: astore_1
    //   531: aload 6
    //   533: astore_3
    //   534: aload_0
    //   535: invokespecial 485	org/java_websocket/server/WebSocketServer:takeBuffer	()Ljava/nio/ByteBuffer;
    //   538: astore 4
    //   540: aload 4
    //   542: aload_2
    //   543: aload_2
    //   544: getfield 473	org/java_websocket/WebSocketImpl:channel	Ljava/nio/channels/ByteChannel;
    //   547: invokestatic 491	org/java_websocket/SocketChannelIOHelper:read	(Ljava/nio/ByteBuffer;Lorg/java_websocket/WebSocketImpl;Ljava/nio/channels/ByteChannel;)Z
    //   550: ifeq +180 -> 730
    //   553: aload_2
    //   554: getfield 494	org/java_websocket/WebSocketImpl:inQueue	Ljava/util/concurrent/BlockingQueue;
    //   557: aload 4
    //   559: invokeinterface 203 2 0
    //   564: aload_0
    //   565: aload_2
    //   566: invokespecial 496	org/java_websocket/server/WebSocketServer:queue	(Lorg/java_websocket/WebSocketImpl;)V
    //   569: aload 7
    //   571: invokeinterface 475 1 0
    //   576: aload_2
    //   577: astore 5
    //   579: aload_2
    //   580: getfield 473	org/java_websocket/WebSocketImpl:channel	Ljava/nio/channels/ByteChannel;
    //   583: instanceof 498
    //   586: ifeq +35 -> 621
    //   589: aload_2
    //   590: astore 5
    //   592: aload_2
    //   593: getfield 473	org/java_websocket/WebSocketImpl:channel	Ljava/nio/channels/ByteChannel;
    //   596: checkcast 498	org/java_websocket/WrappedByteChannel
    //   599: invokeinterface 501 1 0
    //   604: ifeq +17 -> 621
    //   607: aload_0
    //   608: getfield 124	org/java_websocket/server/WebSocketServer:iqueue	Ljava/util/List;
    //   611: aload_2
    //   612: invokeinterface 138 2 0
    //   617: pop
    //   618: aload_2
    //   619: astore 5
    //   621: aload 5
    //   623: astore_2
    //   624: aload 6
    //   626: astore 4
    //   628: aload 5
    //   630: astore_1
    //   631: aload 6
    //   633: astore_3
    //   634: aload 6
    //   636: invokevirtual 504	java/nio/channels/SelectionKey:isWritable	()Z
    //   639: ifeq -402 -> 237
    //   642: aload 5
    //   644: astore_1
    //   645: aload 6
    //   647: astore_3
    //   648: aload 6
    //   650: invokevirtual 483	java/nio/channels/SelectionKey:attachment	()Ljava/lang/Object;
    //   653: checkcast 207	org/java_websocket/WebSocketImpl
    //   656: astore 5
    //   658: aload 5
    //   660: astore_2
    //   661: aload 6
    //   663: astore 4
    //   665: aload 5
    //   667: astore_1
    //   668: aload 6
    //   670: astore_3
    //   671: aload 5
    //   673: aload 5
    //   675: getfield 473	org/java_websocket/WebSocketImpl:channel	Ljava/nio/channels/ByteChannel;
    //   678: invokestatic 508	org/java_websocket/SocketChannelIOHelper:batch	(Lorg/java_websocket/WebSocketImpl;Ljava/nio/channels/ByteChannel;)Z
    //   681: ifeq -444 -> 237
    //   684: aload 5
    //   686: astore_2
    //   687: aload 6
    //   689: astore 4
    //   691: aload 5
    //   693: astore_1
    //   694: aload 6
    //   696: astore_3
    //   697: aload 6
    //   699: invokevirtual 440	java/nio/channels/SelectionKey:isValid	()Z
    //   702: ifeq -465 -> 237
    //   705: aload 5
    //   707: astore_1
    //   708: aload 6
    //   710: astore_3
    //   711: aload 6
    //   713: iconst_1
    //   714: invokevirtual 235	java/nio/channels/SelectionKey:interestOps	(I)Ljava/nio/channels/SelectionKey;
    //   717: pop
    //   718: aload 5
    //   720: astore_2
    //   721: aload 6
    //   723: astore 4
    //   725: goto -488 -> 237
    //   728: astore_1
    //   729: return
    //   730: aload_0
    //   731: aload 4
    //   733: invokespecial 159	org/java_websocket/server/WebSocketServer:pushBuffer	(Ljava/nio/ByteBuffer;)V
    //   736: aload_2
    //   737: astore 5
    //   739: goto -118 -> 621
    //   742: astore 5
    //   744: aload_2
    //   745: astore_1
    //   746: aload 6
    //   748: astore_3
    //   749: aload_0
    //   750: aload 4
    //   752: invokespecial 159	org/java_websocket/server/WebSocketServer:pushBuffer	(Ljava/nio/ByteBuffer;)V
    //   755: aload_2
    //   756: astore_1
    //   757: aload 6
    //   759: astore_3
    //   760: aload 5
    //   762: athrow
    //   763: astore 5
    //   765: aload_2
    //   766: astore_1
    //   767: aload 6
    //   769: astore_3
    //   770: aload_0
    //   771: aload 4
    //   773: invokespecial 159	org/java_websocket/server/WebSocketServer:pushBuffer	(Ljava/nio/ByteBuffer;)V
    //   776: aload_2
    //   777: astore_1
    //   778: aload 6
    //   780: astore_3
    //   781: aload 5
    //   783: athrow
    //   784: aload 5
    //   786: astore_1
    //   787: aload 4
    //   789: astore_3
    //   790: aload_0
    //   791: getfield 124	org/java_websocket/server/WebSocketServer:iqueue	Ljava/util/List;
    //   794: invokeinterface 511 1 0
    //   799: ifne -631 -> 168
    //   802: aload 5
    //   804: astore_1
    //   805: aload 4
    //   807: astore_3
    //   808: aload_0
    //   809: getfield 124	org/java_websocket/server/WebSocketServer:iqueue	Ljava/util/List;
    //   812: iconst_0
    //   813: invokeinterface 513 2 0
    //   818: checkcast 207	org/java_websocket/WebSocketImpl
    //   821: astore 5
    //   823: aload 5
    //   825: astore_1
    //   826: aload 4
    //   828: astore_3
    //   829: aload 5
    //   831: getfield 473	org/java_websocket/WebSocketImpl:channel	Ljava/nio/channels/ByteChannel;
    //   834: checkcast 498	org/java_websocket/WrappedByteChannel
    //   837: astore_2
    //   838: aload 5
    //   840: astore_1
    //   841: aload 4
    //   843: astore_3
    //   844: aload_0
    //   845: invokespecial 485	org/java_websocket/server/WebSocketServer:takeBuffer	()Ljava/nio/ByteBuffer;
    //   848: astore 6
    //   850: aload 5
    //   852: astore_1
    //   853: aload 4
    //   855: astore_3
    //   856: aload 6
    //   858: aload 5
    //   860: aload_2
    //   861: invokestatic 517	org/java_websocket/SocketChannelIOHelper:readMore	(Ljava/nio/ByteBuffer;Lorg/java_websocket/WebSocketImpl;Lorg/java_websocket/WrappedByteChannel;)Z
    //   864: ifeq +21 -> 885
    //   867: aload 5
    //   869: astore_1
    //   870: aload 4
    //   872: astore_3
    //   873: aload_0
    //   874: getfield 124	org/java_websocket/server/WebSocketServer:iqueue	Ljava/util/List;
    //   877: aload 5
    //   879: invokeinterface 138 2 0
    //   884: pop
    //   885: aload 5
    //   887: astore_1
    //   888: aload 4
    //   890: astore_3
    //   891: aload 5
    //   893: getfield 494	org/java_websocket/WebSocketImpl:inQueue	Ljava/util/concurrent/BlockingQueue;
    //   896: aload 6
    //   898: invokeinterface 203 2 0
    //   903: aload 5
    //   905: astore_1
    //   906: aload 4
    //   908: astore_3
    //   909: aload_0
    //   910: aload 5
    //   912: invokespecial 496	org/java_websocket/server/WebSocketServer:queue	(Lorg/java_websocket/WebSocketImpl;)V
    //   915: goto -131 -> 784
    //   918: return
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	919	0	this	WebSocketServer
    //   43	4	1	localObject1	Object
    //   126	192	1	localObject2	Object
    //   333	1	1	localCancelledKeyException	CancelledKeyException
    //   337	4	1	localIOException1	IOException
    //   346	138	1	localObject3	Object
    //   491	4	1	localRuntimeException1	RuntimeException
    //   500	208	1	localObject4	Object
    //   728	1	1	localInterruptedException	InterruptedException
    //   745	161	1	localObject5	Object
    //   192	264	2	localObject6	Object
    //   473	43	2	localIOException2	IOException
    //   528	333	2	localObject7	Object
    //   198	711	3	localObject8	Object
    //   186	721	4	localObject9	Object
    //   183	555	5	localObject10	Object
    //   742	19	5	localIOException3	IOException
    //   763	40	5	localRuntimeException2	RuntimeException
    //   821	90	5	localWebSocketImpl	WebSocketImpl
    //   189	708	6	localObject11	Object
    //   235	335	7	localIterator	Iterator
    //   175	3	8	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   2	43	43	finally
    //   44	46	43	finally
    //   48	67	43	finally
    //   68	70	43	finally
    //   199	207	333	java/nio/channels/CancelledKeyException
    //   213	217	333	java/nio/channels/CancelledKeyException
    //   223	237	333	java/nio/channels/CancelledKeyException
    //   245	255	333	java/nio/channels/CancelledKeyException
    //   260	272	333	java/nio/channels/CancelledKeyException
    //   281	289	333	java/nio/channels/CancelledKeyException
    //   294	302	333	java/nio/channels/CancelledKeyException
    //   307	316	333	java/nio/channels/CancelledKeyException
    //   321	326	333	java/nio/channels/CancelledKeyException
    //   350	359	333	java/nio/channels/CancelledKeyException
    //   364	371	333	java/nio/channels/CancelledKeyException
    //   376	397	333	java/nio/channels/CancelledKeyException
    //   402	419	333	java/nio/channels/CancelledKeyException
    //   424	443	333	java/nio/channels/CancelledKeyException
    //   448	455	333	java/nio/channels/CancelledKeyException
    //   460	466	333	java/nio/channels/CancelledKeyException
    //   507	515	333	java/nio/channels/CancelledKeyException
    //   520	529	333	java/nio/channels/CancelledKeyException
    //   534	540	333	java/nio/channels/CancelledKeyException
    //   540	576	333	java/nio/channels/CancelledKeyException
    //   579	589	333	java/nio/channels/CancelledKeyException
    //   592	618	333	java/nio/channels/CancelledKeyException
    //   634	642	333	java/nio/channels/CancelledKeyException
    //   648	658	333	java/nio/channels/CancelledKeyException
    //   671	684	333	java/nio/channels/CancelledKeyException
    //   697	705	333	java/nio/channels/CancelledKeyException
    //   711	718	333	java/nio/channels/CancelledKeyException
    //   730	736	333	java/nio/channels/CancelledKeyException
    //   749	755	333	java/nio/channels/CancelledKeyException
    //   760	763	333	java/nio/channels/CancelledKeyException
    //   770	776	333	java/nio/channels/CancelledKeyException
    //   781	784	333	java/nio/channels/CancelledKeyException
    //   790	802	333	java/nio/channels/CancelledKeyException
    //   808	823	333	java/nio/channels/CancelledKeyException
    //   829	838	333	java/nio/channels/CancelledKeyException
    //   844	850	333	java/nio/channels/CancelledKeyException
    //   856	867	333	java/nio/channels/CancelledKeyException
    //   873	885	333	java/nio/channels/CancelledKeyException
    //   891	903	333	java/nio/channels/CancelledKeyException
    //   909	915	333	java/nio/channels/CancelledKeyException
    //   103	168	337	java/io/IOException
    //   199	207	473	java/io/IOException
    //   213	217	473	java/io/IOException
    //   223	237	473	java/io/IOException
    //   245	255	473	java/io/IOException
    //   260	272	473	java/io/IOException
    //   281	289	473	java/io/IOException
    //   294	302	473	java/io/IOException
    //   307	316	473	java/io/IOException
    //   321	326	473	java/io/IOException
    //   350	359	473	java/io/IOException
    //   364	371	473	java/io/IOException
    //   376	397	473	java/io/IOException
    //   402	419	473	java/io/IOException
    //   424	443	473	java/io/IOException
    //   448	455	473	java/io/IOException
    //   460	466	473	java/io/IOException
    //   507	515	473	java/io/IOException
    //   520	529	473	java/io/IOException
    //   534	540	473	java/io/IOException
    //   634	642	473	java/io/IOException
    //   648	658	473	java/io/IOException
    //   671	684	473	java/io/IOException
    //   697	705	473	java/io/IOException
    //   711	718	473	java/io/IOException
    //   749	755	473	java/io/IOException
    //   760	763	473	java/io/IOException
    //   770	776	473	java/io/IOException
    //   781	784	473	java/io/IOException
    //   790	802	473	java/io/IOException
    //   808	823	473	java/io/IOException
    //   829	838	473	java/io/IOException
    //   844	850	473	java/io/IOException
    //   856	867	473	java/io/IOException
    //   873	885	473	java/io/IOException
    //   891	903	473	java/io/IOException
    //   909	915	473	java/io/IOException
    //   168	177	491	java/lang/RuntimeException
    //   199	207	491	java/lang/RuntimeException
    //   213	217	491	java/lang/RuntimeException
    //   223	237	491	java/lang/RuntimeException
    //   245	255	491	java/lang/RuntimeException
    //   260	272	491	java/lang/RuntimeException
    //   281	289	491	java/lang/RuntimeException
    //   294	302	491	java/lang/RuntimeException
    //   307	316	491	java/lang/RuntimeException
    //   321	326	491	java/lang/RuntimeException
    //   350	359	491	java/lang/RuntimeException
    //   364	371	491	java/lang/RuntimeException
    //   376	397	491	java/lang/RuntimeException
    //   402	419	491	java/lang/RuntimeException
    //   424	443	491	java/lang/RuntimeException
    //   448	455	491	java/lang/RuntimeException
    //   460	466	491	java/lang/RuntimeException
    //   478	482	491	java/lang/RuntimeException
    //   482	488	491	java/lang/RuntimeException
    //   507	515	491	java/lang/RuntimeException
    //   520	529	491	java/lang/RuntimeException
    //   534	540	491	java/lang/RuntimeException
    //   634	642	491	java/lang/RuntimeException
    //   648	658	491	java/lang/RuntimeException
    //   671	684	491	java/lang/RuntimeException
    //   697	705	491	java/lang/RuntimeException
    //   711	718	491	java/lang/RuntimeException
    //   749	755	491	java/lang/RuntimeException
    //   760	763	491	java/lang/RuntimeException
    //   770	776	491	java/lang/RuntimeException
    //   781	784	491	java/lang/RuntimeException
    //   790	802	491	java/lang/RuntimeException
    //   808	823	491	java/lang/RuntimeException
    //   829	838	491	java/lang/RuntimeException
    //   844	850	491	java/lang/RuntimeException
    //   856	867	491	java/lang/RuntimeException
    //   873	885	491	java/lang/RuntimeException
    //   891	903	491	java/lang/RuntimeException
    //   909	915	491	java/lang/RuntimeException
    //   199	207	728	java/lang/InterruptedException
    //   213	217	728	java/lang/InterruptedException
    //   223	237	728	java/lang/InterruptedException
    //   245	255	728	java/lang/InterruptedException
    //   260	272	728	java/lang/InterruptedException
    //   281	289	728	java/lang/InterruptedException
    //   294	302	728	java/lang/InterruptedException
    //   307	316	728	java/lang/InterruptedException
    //   321	326	728	java/lang/InterruptedException
    //   350	359	728	java/lang/InterruptedException
    //   364	371	728	java/lang/InterruptedException
    //   376	397	728	java/lang/InterruptedException
    //   402	419	728	java/lang/InterruptedException
    //   424	443	728	java/lang/InterruptedException
    //   448	455	728	java/lang/InterruptedException
    //   460	466	728	java/lang/InterruptedException
    //   507	515	728	java/lang/InterruptedException
    //   520	529	728	java/lang/InterruptedException
    //   534	540	728	java/lang/InterruptedException
    //   540	576	728	java/lang/InterruptedException
    //   579	589	728	java/lang/InterruptedException
    //   592	618	728	java/lang/InterruptedException
    //   634	642	728	java/lang/InterruptedException
    //   648	658	728	java/lang/InterruptedException
    //   671	684	728	java/lang/InterruptedException
    //   697	705	728	java/lang/InterruptedException
    //   711	718	728	java/lang/InterruptedException
    //   730	736	728	java/lang/InterruptedException
    //   749	755	728	java/lang/InterruptedException
    //   760	763	728	java/lang/InterruptedException
    //   770	776	728	java/lang/InterruptedException
    //   781	784	728	java/lang/InterruptedException
    //   790	802	728	java/lang/InterruptedException
    //   808	823	728	java/lang/InterruptedException
    //   829	838	728	java/lang/InterruptedException
    //   844	850	728	java/lang/InterruptedException
    //   856	867	728	java/lang/InterruptedException
    //   873	885	728	java/lang/InterruptedException
    //   891	903	728	java/lang/InterruptedException
    //   909	915	728	java/lang/InterruptedException
    //   540	576	742	java/io/IOException
    //   579	589	742	java/io/IOException
    //   592	618	742	java/io/IOException
    //   730	736	742	java/io/IOException
    //   540	576	763	java/lang/RuntimeException
    //   579	589	763	java/lang/RuntimeException
    //   592	618	763	java/lang/RuntimeException
    //   730	736	763	java/lang/RuntimeException
  }
  
  public void setAddress(InetSocketAddress paramInetSocketAddress)
  {
    address = paramInetSocketAddress;
  }
  
  public final void setWebSocketFactory(WebSocketServerFactory paramWebSocketServerFactory)
  {
    wsf = paramWebSocketServerFactory;
  }
  
  public void start()
  {
    if (selectorthread != null) {
      throw new IllegalStateException(getClass().getName() + " can only be started once.");
    }
    new Thread(this).start();
  }
  
  public void stop()
    throws IOException, InterruptedException
  {
    stop(0);
  }
  
  public void stop(int paramInt)
    throws IOException, InterruptedException
  {
    if (!isclosed.compareAndSet(false, true)) {
      return;
    }
    synchronized (connections)
    {
      Iterator localIterator = connections.iterator();
      if (localIterator.hasNext()) {
        ((WebSocket)localIterator.next()).close(1000);
      }
    }
    try
    {
      if (selectorthread != null)
      {
        if (Thread.currentThread() != selectorthread) {}
        selectorthread.interrupt();
        selectorthread.join();
      }
      if (decoders != null)
      {
        ??? = decoders.iterator();
        while (((Iterator)???).hasNext()) {
          ((WebSocketWorker)((Iterator)???).next()).interrupt();
        }
      }
      if (server == null) {
        break label157;
      }
    }
    finally {}
    server.close();
    label157:
  }
  
  public static abstract interface WebSocketServerFactory
    extends WebSocketFactory
  {
    public abstract WebSocketImpl createWebSocket(WebSocketAdapter paramWebSocketAdapter, List<Draft> paramList, Socket paramSocket);
    
    public abstract WebSocketImpl createWebSocket(WebSocketAdapter paramWebSocketAdapter, Draft paramDraft, Socket paramSocket);
    
    public abstract ByteChannel wrapChannel(SelectionKey paramSelectionKey)
      throws IOException;
  }
  
  public class WebSocketWorker
    extends Thread
  {
    private BlockingQueue<WebSocketImpl> iqueue = new LinkedBlockingQueue();
    
    static
    {
      if (!WebSocketServer.class.desiredAssertionStatus()) {}
      for (boolean bool = true;; bool = false)
      {
        $assertionsDisabled = bool;
        return;
      }
    }
    
    public WebSocketWorker()
    {
      setName("WebSocketWorker-" + getId());
      setUncaughtExceptionHandler(new Thread.UncaughtExceptionHandler()
      {
        public void uncaughtException(Thread paramAnonymousThread, Throwable paramAnonymousThrowable)
        {
          Thread.getDefaultUncaughtExceptionHandler().uncaughtException(paramAnonymousThread, paramAnonymousThrowable);
        }
      });
    }
    
    public void put(WebSocketImpl paramWebSocketImpl)
      throws InterruptedException
    {
      iqueue.put(paramWebSocketImpl);
    }
    
    /* Error */
    public void run()
    {
      // Byte code:
      //   0: aconst_null
      //   1: astore_1
      //   2: aload_1
      //   3: astore_2
      //   4: aload_0
      //   5: getfield 38	org/java_websocket/server/WebSocketServer$WebSocketWorker:iqueue	Ljava/util/concurrent/BlockingQueue;
      //   8: invokeinterface 90 1 0
      //   13: checkcast 92	org/java_websocket/WebSocketImpl
      //   16: astore_1
      //   17: aload_1
      //   18: astore_2
      //   19: aload_1
      //   20: getfield 95	org/java_websocket/WebSocketImpl:inQueue	Ljava/util/concurrent/BlockingQueue;
      //   23: invokeinterface 98 1 0
      //   28: checkcast 100	java/nio/ByteBuffer
      //   31: astore_3
      //   32: aload_1
      //   33: astore_2
      //   34: getstatic 26	org/java_websocket/server/WebSocketServer$WebSocketWorker:$assertionsDisabled	Z
      //   37: ifne +28 -> 65
      //   40: aload_3
      //   41: ifnonnull +24 -> 65
      //   44: aload_1
      //   45: astore_2
      //   46: new 102	java/lang/AssertionError
      //   49: dup
      //   50: invokespecial 103	java/lang/AssertionError:<init>	()V
      //   53: athrow
      //   54: astore_1
      //   55: aload_0
      //   56: getfield 31	org/java_websocket/server/WebSocketServer$WebSocketWorker:this$0	Lorg/java_websocket/server/WebSocketServer;
      //   59: aload_2
      //   60: aload_1
      //   61: invokestatic 107	org/java_websocket/server/WebSocketServer:access$200	(Lorg/java_websocket/server/WebSocketServer;Lorg/java_websocket/WebSocket;Ljava/lang/RuntimeException;)V
      //   64: return
      //   65: aload_1
      //   66: aload_3
      //   67: invokevirtual 111	org/java_websocket/WebSocketImpl:decode	(Ljava/nio/ByteBuffer;)V
      //   70: aload_1
      //   71: astore_2
      //   72: aload_0
      //   73: getfield 31	org/java_websocket/server/WebSocketServer$WebSocketWorker:this$0	Lorg/java_websocket/server/WebSocketServer;
      //   76: aload_3
      //   77: invokestatic 115	org/java_websocket/server/WebSocketServer:access$100	(Lorg/java_websocket/server/WebSocketServer;Ljava/nio/ByteBuffer;)V
      //   80: goto -78 -> 2
      //   83: astore_1
      //   84: return
      //   85: astore_2
      //   86: aload_0
      //   87: getfield 31	org/java_websocket/server/WebSocketServer$WebSocketWorker:this$0	Lorg/java_websocket/server/WebSocketServer;
      //   90: aload_1
      //   91: aload_2
      //   92: invokestatic 119	org/java_websocket/server/WebSocketServer:access$000	(Lorg/java_websocket/server/WebSocketServer;Lorg/java_websocket/WebSocket;Ljava/io/IOException;)V
      //   95: aload_1
      //   96: astore_2
      //   97: aload_0
      //   98: getfield 31	org/java_websocket/server/WebSocketServer$WebSocketWorker:this$0	Lorg/java_websocket/server/WebSocketServer;
      //   101: aload_3
      //   102: invokestatic 115	org/java_websocket/server/WebSocketServer:access$100	(Lorg/java_websocket/server/WebSocketServer;Ljava/nio/ByteBuffer;)V
      //   105: goto -103 -> 2
      //   108: astore_1
      //   109: aload_1
      //   110: invokevirtual 122	java/lang/Throwable:printStackTrace	()V
      //   113: return
      //   114: astore 4
      //   116: aload_1
      //   117: astore_2
      //   118: aload_0
      //   119: getfield 31	org/java_websocket/server/WebSocketServer$WebSocketWorker:this$0	Lorg/java_websocket/server/WebSocketServer;
      //   122: aload_3
      //   123: invokestatic 115	org/java_websocket/server/WebSocketServer:access$100	(Lorg/java_websocket/server/WebSocketServer;Ljava/nio/ByteBuffer;)V
      //   126: aload_1
      //   127: astore_2
      //   128: aload 4
      //   130: athrow
      // Local variable table:
      //   start	length	slot	name	signature
      //   0	131	0	this	WebSocketWorker
      //   1	44	1	localWebSocketImpl	WebSocketImpl
      //   54	17	1	localRuntimeException	RuntimeException
      //   83	13	1	localInterruptedException	InterruptedException
      //   108	19	1	localThrowable	Throwable
      //   3	69	2	localObject1	Object
      //   85	7	2	localIOException	IOException
      //   96	32	2	localObject2	Object
      //   31	92	3	localByteBuffer	ByteBuffer
      //   114	15	4	localObject3	Object
      // Exception table:
      //   from	to	target	type
      //   4	17	54	java/lang/RuntimeException
      //   19	32	54	java/lang/RuntimeException
      //   34	40	54	java/lang/RuntimeException
      //   46	54	54	java/lang/RuntimeException
      //   72	80	54	java/lang/RuntimeException
      //   97	105	54	java/lang/RuntimeException
      //   118	126	54	java/lang/RuntimeException
      //   128	131	54	java/lang/RuntimeException
      //   4	17	83	java/lang/InterruptedException
      //   19	32	83	java/lang/InterruptedException
      //   34	40	83	java/lang/InterruptedException
      //   46	54	83	java/lang/InterruptedException
      //   72	80	83	java/lang/InterruptedException
      //   97	105	83	java/lang/InterruptedException
      //   118	126	83	java/lang/InterruptedException
      //   128	131	83	java/lang/InterruptedException
      //   65	70	85	java/io/IOException
      //   4	17	108	java/lang/Throwable
      //   19	32	108	java/lang/Throwable
      //   34	40	108	java/lang/Throwable
      //   46	54	108	java/lang/Throwable
      //   72	80	108	java/lang/Throwable
      //   97	105	108	java/lang/Throwable
      //   118	126	108	java/lang/Throwable
      //   128	131	108	java/lang/Throwable
      //   65	70	114	finally
      //   86	95	114	finally
    }
  }
}

/* Location:
 * Qualified Name:     org.java_websocket.server.WebSocketServer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */