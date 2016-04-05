package org.java_websocket.client;

import java.io.IOException;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.net.URI;
import java.nio.ByteBuffer;
import java.nio.channels.ByteChannel;
import java.nio.channels.CancelledKeyException;
import java.nio.channels.NotYetConnectedException;
import java.nio.channels.SelectionKey;
import java.nio.channels.Selector;
import java.nio.channels.SocketChannel;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.concurrent.CountDownLatch;
import org.java_websocket.WebSocket;
import org.java_websocket.WebSocketAdapter;
import org.java_websocket.WebSocketFactory;
import org.java_websocket.WebSocketImpl;
import org.java_websocket.drafts.Draft;
import org.java_websocket.drafts.Draft_10;
import org.java_websocket.exceptions.InvalidHandshakeException;
import org.java_websocket.handshake.ClientHandshakeBuilder;
import org.java_websocket.handshake.HandshakeImpl1Client;
import org.java_websocket.handshake.Handshakedata;
import org.java_websocket.handshake.ServerHandshake;

public abstract class WebSocketClient
  extends WebSocketAdapter
  implements Runnable
{
  private SocketChannel channel = null;
  private CountDownLatch closeLatch = new CountDownLatch(1);
  private WebSocketImpl conn = null;
  private CountDownLatch connectLatch = new CountDownLatch(1);
  private Draft draft;
  private Map<String, String> headers;
  private SelectionKey key = null;
  private Selector selector = null;
  private Thread thread;
  private URI uri = null;
  WebSocketClientFactory wf = new WebSocketClientFactory()
  {
    public WebSocket createWebSocket(WebSocketAdapter paramAnonymousWebSocketAdapter, List<Draft> paramAnonymousList, Socket paramAnonymousSocket)
    {
      return new WebSocketImpl(WebSocketClient.this, paramAnonymousList, paramAnonymousSocket);
    }
    
    public WebSocket createWebSocket(WebSocketAdapter paramAnonymousWebSocketAdapter, Draft paramAnonymousDraft, Socket paramAnonymousSocket)
    {
      return new WebSocketImpl(WebSocketClient.this, paramAnonymousDraft, paramAnonymousSocket);
    }
    
    public ByteChannel wrapChannel(SelectionKey paramAnonymousSelectionKey, String paramAnonymousString, int paramAnonymousInt)
    {
      return (ByteChannel)paramAnonymousSelectionKey.channel();
    }
  };
  private ByteChannel wrappedchannel = null;
  
  static
  {
    if (!WebSocketClient.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }
  
  public WebSocketClient(URI paramURI)
  {
    this(paramURI, new Draft_10());
  }
  
  public WebSocketClient(URI paramURI, Draft paramDraft)
  {
    this(paramURI, paramDraft, null);
  }
  
  public WebSocketClient(URI paramURI, Draft paramDraft, Map<String, String> paramMap)
  {
    if (paramURI == null) {
      throw new IllegalArgumentException();
    }
    if (paramDraft == null) {
      throw new IllegalArgumentException("null as draft is permitted for `WebSocketServer` only!");
    }
    uri = paramURI;
    draft = paramDraft;
    headers = paramMap;
  }
  
  private void finishConnect(SelectionKey paramSelectionKey)
    throws IOException, InvalidHandshakeException
  {
    if (channel.isConnectionPending()) {
      channel.finishConnect();
    }
    conn.key = paramSelectionKey.interestOps(5);
    WebSocketImpl localWebSocketImpl = conn;
    paramSelectionKey = wf.wrapChannel(paramSelectionKey, uri.getHost(), getPort());
    wrappedchannel = paramSelectionKey;
    channel = paramSelectionKey;
    sendHandshake();
  }
  
  private int getPort()
  {
    int j = uri.getPort();
    int i = j;
    String str;
    if (j == -1)
    {
      str = uri.getScheme();
      if (str.equals("wss")) {
        i = 443;
      }
    }
    else
    {
      return i;
    }
    if (str.equals("ws")) {
      return 80;
    }
    throw new RuntimeException("unkonow scheme" + str);
  }
  
  /* Error */
  private final void interruptableRun()
  {
    // Byte code:
    //   0: aload_0
    //   1: new 183	java/net/InetSocketAddress
    //   4: dup
    //   5: aload_0
    //   6: getfield 63	org/java_websocket/client/WebSocketClient:uri	Ljava/net/URI;
    //   9: invokevirtual 129	java/net/URI:getHost	()Ljava/lang/String;
    //   12: aload_0
    //   13: invokespecial 133	org/java_websocket/client/WebSocketClient:getPort	()I
    //   16: invokespecial 186	java/net/InetSocketAddress:<init>	(Ljava/lang/String;I)V
    //   19: invokespecial 190	org/java_websocket/client/WebSocketClient:tryToConnect	(Ljava/net/InetSocketAddress;)V
    //   22: aload_0
    //   23: aload_0
    //   24: getfield 87	org/java_websocket/client/WebSocketClient:wf	Lorg/java_websocket/client/WebSocketClient$WebSocketClientFactory;
    //   27: aload_0
    //   28: aload_0
    //   29: getfield 97	org/java_websocket/client/WebSocketClient:draft	Lorg/java_websocket/drafts/Draft;
    //   32: aload_0
    //   33: getfield 67	org/java_websocket/client/WebSocketClient:channel	Ljava/nio/channels/SocketChannel;
    //   36: invokevirtual 194	java/nio/channels/SocketChannel:socket	()Ljava/net/Socket;
    //   39: invokeinterface 198 4 0
    //   44: checkcast 122	org/java_websocket/WebSocketImpl
    //   47: putfield 65	org/java_websocket/client/WebSocketClient:conn	Lorg/java_websocket/WebSocketImpl;
    //   50: getstatic 204	org/java_websocket/WebSocket:RCVBUF	I
    //   53: invokestatic 210	java/nio/ByteBuffer:allocate	(I)Ljava/nio/ByteBuffer;
    //   56: astore_1
    //   57: aload_0
    //   58: getfield 67	org/java_websocket/client/WebSocketClient:channel	Ljava/nio/channels/SocketChannel;
    //   61: invokevirtual 213	java/nio/channels/SocketChannel:isOpen	()Z
    //   64: ifeq +74 -> 138
    //   67: aload_0
    //   68: getfield 73	org/java_websocket/client/WebSocketClient:selector	Ljava/nio/channels/Selector;
    //   71: invokevirtual 218	java/nio/channels/Selector:select	()I
    //   74: pop
    //   75: aload_0
    //   76: getfield 73	org/java_websocket/client/WebSocketClient:selector	Ljava/nio/channels/Selector;
    //   79: invokevirtual 222	java/nio/channels/Selector:selectedKeys	()Ljava/util/Set;
    //   82: invokeinterface 228 1 0
    //   87: astore_2
    //   88: aload_2
    //   89: invokeinterface 233 1 0
    //   94: ifeq +218 -> 312
    //   97: aload_2
    //   98: invokeinterface 237 1 0
    //   103: checkcast 116	java/nio/channels/SelectionKey
    //   106: astore_3
    //   107: aload_2
    //   108: invokeinterface 240 1 0
    //   113: aload_3
    //   114: invokevirtual 243	java/nio/channels/SelectionKey:isValid	()Z
    //   117: ifne +63 -> 180
    //   120: aload_0
    //   121: getfield 65	org/java_websocket/client/WebSocketClient:conn	Lorg/java_websocket/WebSocketImpl;
    //   124: invokevirtual 246	org/java_websocket/WebSocketImpl:eot	()V
    //   127: goto -39 -> 88
    //   130: astore_1
    //   131: aload_0
    //   132: getfield 65	org/java_websocket/client/WebSocketClient:conn	Lorg/java_websocket/WebSocketImpl;
    //   135: invokevirtual 246	org/java_websocket/WebSocketImpl:eot	()V
    //   138: return
    //   139: astore_1
    //   140: aload_0
    //   141: aconst_null
    //   142: aload_1
    //   143: invokevirtual 250	org/java_websocket/client/WebSocketClient:onWebsocketError	(Lorg/java_websocket/WebSocket;Ljava/lang/Exception;)V
    //   146: return
    //   147: astore_1
    //   148: aload_0
    //   149: aload_0
    //   150: getfield 65	org/java_websocket/client/WebSocketClient:conn	Lorg/java_websocket/WebSocketImpl;
    //   153: aload_1
    //   154: invokevirtual 250	org/java_websocket/client/WebSocketClient:onWebsocketError	(Lorg/java_websocket/WebSocket;Ljava/lang/Exception;)V
    //   157: return
    //   158: astore_1
    //   159: aload_0
    //   160: aload_0
    //   161: getfield 65	org/java_websocket/client/WebSocketClient:conn	Lorg/java_websocket/WebSocketImpl;
    //   164: aload_1
    //   165: invokevirtual 250	org/java_websocket/client/WebSocketClient:onWebsocketError	(Lorg/java_websocket/WebSocket;Ljava/lang/Exception;)V
    //   168: return
    //   169: astore_1
    //   170: aload_0
    //   171: aload_0
    //   172: getfield 65	org/java_websocket/client/WebSocketClient:conn	Lorg/java_websocket/WebSocketImpl;
    //   175: aload_1
    //   176: invokevirtual 250	org/java_websocket/client/WebSocketClient:onWebsocketError	(Lorg/java_websocket/WebSocket;Ljava/lang/Exception;)V
    //   179: return
    //   180: aload_3
    //   181: invokevirtual 253	java/nio/channels/SelectionKey:isReadable	()Z
    //   184: ifeq +26 -> 210
    //   187: aload_1
    //   188: aload_0
    //   189: getfield 65	org/java_websocket/client/WebSocketClient:conn	Lorg/java_websocket/WebSocketImpl;
    //   192: aload_0
    //   193: getfield 69	org/java_websocket/client/WebSocketClient:wrappedchannel	Ljava/nio/channels/ByteChannel;
    //   196: invokestatic 259	org/java_websocket/SocketChannelIOHelper:read	(Ljava/nio/ByteBuffer;Lorg/java_websocket/WebSocketImpl;Ljava/nio/channels/ByteChannel;)Z
    //   199: ifeq +11 -> 210
    //   202: aload_0
    //   203: getfield 65	org/java_websocket/client/WebSocketClient:conn	Lorg/java_websocket/WebSocketImpl;
    //   206: aload_1
    //   207: invokevirtual 263	org/java_websocket/WebSocketImpl:decode	(Ljava/nio/ByteBuffer;)V
    //   210: aload_3
    //   211: invokevirtual 266	java/nio/channels/SelectionKey:isConnectable	()Z
    //   214: istore 5
    //   216: iload 5
    //   218: ifeq +8 -> 226
    //   221: aload_0
    //   222: aload_3
    //   223: invokespecial 268	org/java_websocket/client/WebSocketClient:finishConnect	(Ljava/nio/channels/SelectionKey;)V
    //   226: aload_3
    //   227: invokevirtual 271	java/nio/channels/SelectionKey:isWritable	()Z
    //   230: ifeq -142 -> 88
    //   233: aload_0
    //   234: getfield 65	org/java_websocket/client/WebSocketClient:conn	Lorg/java_websocket/WebSocketImpl;
    //   237: aload_0
    //   238: getfield 69	org/java_websocket/client/WebSocketClient:wrappedchannel	Ljava/nio/channels/ByteChannel;
    //   241: invokestatic 275	org/java_websocket/SocketChannelIOHelper:batch	(Lorg/java_websocket/WebSocketImpl;Ljava/nio/channels/ByteChannel;)Z
    //   244: ifeq +59 -> 303
    //   247: aload_3
    //   248: invokevirtual 243	java/nio/channels/SelectionKey:isValid	()Z
    //   251: ifeq -163 -> 88
    //   254: aload_3
    //   255: iconst_1
    //   256: invokevirtual 120	java/nio/channels/SelectionKey:interestOps	(I)Ljava/nio/channels/SelectionKey;
    //   259: pop
    //   260: goto -172 -> 88
    //   263: astore_1
    //   264: aload_0
    //   265: getfield 65	org/java_websocket/client/WebSocketClient:conn	Lorg/java_websocket/WebSocketImpl;
    //   268: invokevirtual 246	org/java_websocket/WebSocketImpl:eot	()V
    //   271: return
    //   272: astore 4
    //   274: aload_0
    //   275: getfield 65	org/java_websocket/client/WebSocketClient:conn	Lorg/java_websocket/WebSocketImpl;
    //   278: aload 4
    //   280: invokevirtual 279	org/java_websocket/WebSocketImpl:close	(Lorg/java_websocket/exceptions/InvalidDataException;)V
    //   283: goto -57 -> 226
    //   286: astore_1
    //   287: aload_0
    //   288: aload_1
    //   289: invokevirtual 283	org/java_websocket/client/WebSocketClient:onError	(Ljava/lang/Exception;)V
    //   292: aload_0
    //   293: getfield 65	org/java_websocket/client/WebSocketClient:conn	Lorg/java_websocket/WebSocketImpl;
    //   296: sipush 1006
    //   299: invokevirtual 285	org/java_websocket/WebSocketImpl:close	(I)V
    //   302: return
    //   303: aload_3
    //   304: iconst_5
    //   305: invokevirtual 120	java/nio/channels/SelectionKey:interestOps	(I)Ljava/nio/channels/SelectionKey;
    //   308: pop
    //   309: goto -221 -> 88
    //   312: aload_0
    //   313: getfield 69	org/java_websocket/client/WebSocketClient:wrappedchannel	Ljava/nio/channels/ByteChannel;
    //   316: instanceof 287
    //   319: ifeq -262 -> 57
    //   322: aload_0
    //   323: getfield 69	org/java_websocket/client/WebSocketClient:wrappedchannel	Ljava/nio/channels/ByteChannel;
    //   326: checkcast 287	org/java_websocket/WrappedByteChannel
    //   329: astore_2
    //   330: aload_2
    //   331: invokeinterface 290 1 0
    //   336: ifeq -279 -> 57
    //   339: aload_1
    //   340: aload_0
    //   341: getfield 65	org/java_websocket/client/WebSocketClient:conn	Lorg/java_websocket/WebSocketImpl;
    //   344: aload_2
    //   345: invokestatic 259	org/java_websocket/SocketChannelIOHelper:read	(Ljava/nio/ByteBuffer;Lorg/java_websocket/WebSocketImpl;Ljava/nio/channels/ByteChannel;)Z
    //   348: ifeq -291 -> 57
    //   351: aload_0
    //   352: getfield 65	org/java_websocket/client/WebSocketClient:conn	Lorg/java_websocket/WebSocketImpl;
    //   355: aload_1
    //   356: invokevirtual 263	org/java_websocket/WebSocketImpl:decode	(Ljava/nio/ByteBuffer;)V
    //   359: goto -20 -> 339
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	362	0	this	WebSocketClient
    //   56	1	1	localByteBuffer	ByteBuffer
    //   130	1	1	localCancelledKeyException	CancelledKeyException
    //   139	4	1	localClosedByInterruptException	java.nio.channels.ClosedByInterruptException
    //   147	7	1	localIOException1	IOException
    //   158	7	1	localSecurityException	SecurityException
    //   169	38	1	localUnresolvedAddressException	java.nio.channels.UnresolvedAddressException
    //   263	1	1	localIOException2	IOException
    //   286	70	1	localRuntimeException	RuntimeException
    //   87	258	2	localObject	Object
    //   106	198	3	localSelectionKey	SelectionKey
    //   272	7	4	localInvalidHandshakeException	InvalidHandshakeException
    //   214	3	5	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   57	88	130	java/nio/channels/CancelledKeyException
    //   88	127	130	java/nio/channels/CancelledKeyException
    //   180	210	130	java/nio/channels/CancelledKeyException
    //   210	216	130	java/nio/channels/CancelledKeyException
    //   221	226	130	java/nio/channels/CancelledKeyException
    //   226	260	130	java/nio/channels/CancelledKeyException
    //   274	283	130	java/nio/channels/CancelledKeyException
    //   303	309	130	java/nio/channels/CancelledKeyException
    //   312	339	130	java/nio/channels/CancelledKeyException
    //   339	359	130	java/nio/channels/CancelledKeyException
    //   0	22	139	java/nio/channels/ClosedByInterruptException
    //   0	22	147	java/io/IOException
    //   0	22	158	java/lang/SecurityException
    //   0	22	169	java/nio/channels/UnresolvedAddressException
    //   57	88	263	java/io/IOException
    //   88	127	263	java/io/IOException
    //   180	210	263	java/io/IOException
    //   210	216	263	java/io/IOException
    //   221	226	263	java/io/IOException
    //   226	260	263	java/io/IOException
    //   274	283	263	java/io/IOException
    //   303	309	263	java/io/IOException
    //   312	339	263	java/io/IOException
    //   339	359	263	java/io/IOException
    //   221	226	272	org/java_websocket/exceptions/InvalidHandshakeException
    //   57	88	286	java/lang/RuntimeException
    //   88	127	286	java/lang/RuntimeException
    //   180	210	286	java/lang/RuntimeException
    //   210	216	286	java/lang/RuntimeException
    //   221	226	286	java/lang/RuntimeException
    //   226	260	286	java/lang/RuntimeException
    //   274	283	286	java/lang/RuntimeException
    //   303	309	286	java/lang/RuntimeException
    //   312	339	286	java/lang/RuntimeException
    //   339	359	286	java/lang/RuntimeException
  }
  
  private void sendHandshake()
    throws InvalidHandshakeException
  {
    Object localObject1 = uri.getPath();
    Object localObject3 = uri.getQuery();
    Object localObject2;
    int i;
    if ((localObject1 == null) || (((String)localObject1).length() == 0))
    {
      localObject1 = "/";
      localObject2 = localObject1;
      if (localObject3 != null) {
        localObject2 = (String)localObject1 + "?" + (String)localObject3;
      }
      i = getPort();
      localObject3 = new StringBuilder().append(uri.getHost());
      if (i == 80) {
        break label214;
      }
    }
    label214:
    for (localObject1 = ":" + i;; localObject1 = "")
    {
      localObject3 = (String)localObject1;
      localObject1 = new HandshakeImpl1Client();
      ((HandshakeImpl1Client)localObject1).setResourceDescriptor((String)localObject2);
      ((HandshakeImpl1Client)localObject1).put("Host", (String)localObject3);
      if (headers == null) {
        break label221;
      }
      localObject2 = headers.entrySet().iterator();
      while (((Iterator)localObject2).hasNext())
      {
        localObject3 = (Map.Entry)((Iterator)localObject2).next();
        ((HandshakeImpl1Client)localObject1).put((String)((Map.Entry)localObject3).getKey(), (String)((Map.Entry)localObject3).getValue());
      }
      break;
    }
    label221:
    conn.startHandshake((ClientHandshakeBuilder)localObject1);
  }
  
  private void tryToConnect(InetSocketAddress paramInetSocketAddress)
    throws IOException
  {
    channel = SocketChannel.open();
    channel.configureBlocking(false);
    channel.connect(paramInetSocketAddress);
    selector = Selector.open();
    key = channel.register(selector, 8);
  }
  
  public void close()
  {
    if ((thread != null) && (conn != null)) {
      conn.close(1000);
    }
  }
  
  public void closeBlocking()
    throws InterruptedException
  {
    close();
    closeLatch.await();
  }
  
  public void connect()
  {
    if (thread != null) {
      throw new IllegalStateException("WebSocketClient objects are not reuseable");
    }
    thread = new Thread(this);
    thread.start();
  }
  
  public boolean connectBlocking()
    throws InterruptedException
  {
    connect();
    connectLatch.await();
    return conn.isOpen();
  }
  
  public WebSocket getConnection()
  {
    return conn;
  }
  
  public Draft getDraft()
  {
    return draft;
  }
  
  public int getReadyState()
  {
    if (conn == null) {
      return 0;
    }
    return conn.getReadyState();
  }
  
  public URI getURI()
  {
    return uri;
  }
  
  public final WebSocketFactory getWebSocketFactory()
  {
    return wf;
  }
  
  public abstract void onClose(int paramInt, String paramString, boolean paramBoolean);
  
  public abstract void onError(Exception paramException);
  
  public abstract void onMessage(String paramString);
  
  public void onMessage(ByteBuffer paramByteBuffer) {}
  
  public abstract void onOpen(ServerHandshake paramServerHandshake);
  
  public final void onWebsocketClose(WebSocket paramWebSocket, int paramInt, String paramString, boolean paramBoolean)
  {
    connectLatch.countDown();
    closeLatch.countDown();
    onClose(paramInt, paramString, paramBoolean);
  }
  
  public final void onWebsocketError(WebSocket paramWebSocket, Exception paramException)
  {
    onError(paramException);
  }
  
  public final void onWebsocketMessage(WebSocket paramWebSocket, String paramString)
  {
    onMessage(paramString);
  }
  
  public final void onWebsocketMessage(WebSocket paramWebSocket, ByteBuffer paramByteBuffer)
  {
    onMessage(paramByteBuffer);
  }
  
  public final void onWebsocketOpen(WebSocket paramWebSocket, Handshakedata paramHandshakedata)
  {
    connectLatch.countDown();
    onOpen((ServerHandshake)paramHandshakedata);
  }
  
  public final void onWriteDemand(WebSocket paramWebSocket)
  {
    try
    {
      key.interestOps(5);
      selector.wakeup();
      return;
    }
    catch (CancelledKeyException paramWebSocket) {}
  }
  
  public void run()
  {
    if (thread == null) {
      thread = Thread.currentThread();
    }
    interruptableRun();
    assert (!channel.isOpen());
    try
    {
      if (selector != null) {
        selector.close();
      }
      return;
    }
    catch (IOException localIOException)
    {
      onError(localIOException);
    }
  }
  
  public void send(String paramString)
    throws NotYetConnectedException
  {
    if (conn != null) {
      conn.send(paramString);
    }
  }
  
  public void send(byte[] paramArrayOfByte)
    throws NotYetConnectedException
  {
    if (conn != null) {
      conn.send(paramArrayOfByte);
    }
  }
  
  public final void setWebSocketFactory(WebSocketClientFactory paramWebSocketClientFactory)
  {
    wf = paramWebSocketClientFactory;
  }
  
  public static abstract interface WebSocketClientFactory
    extends WebSocketFactory
  {
    public abstract ByteChannel wrapChannel(SelectionKey paramSelectionKey, String paramString, int paramInt)
      throws IOException;
  }
}

/* Location:
 * Qualified Name:     org.java_websocket.client.WebSocketClient
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */