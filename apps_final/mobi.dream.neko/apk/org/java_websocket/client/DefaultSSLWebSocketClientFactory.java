package org.java_websocket.client;

import java.io.IOException;
import java.net.Socket;
import java.nio.channels.ByteChannel;
import java.nio.channels.SelectionKey;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLEngine;
import org.java_websocket.SSLSocketChannel2;
import org.java_websocket.WebSocketAdapter;
import org.java_websocket.WebSocketImpl;
import org.java_websocket.drafts.Draft;

public class DefaultSSLWebSocketClientFactory
  implements WebSocketClient.WebSocketClientFactory
{
  protected ExecutorService exec;
  protected SSLContext sslcontext;
  
  public DefaultSSLWebSocketClientFactory(SSLContext paramSSLContext)
  {
    this(paramSSLContext, Executors.newSingleThreadScheduledExecutor());
  }
  
  public DefaultSSLWebSocketClientFactory(SSLContext paramSSLContext, ExecutorService paramExecutorService)
  {
    if ((paramSSLContext == null) || (paramExecutorService == null)) {
      throw new IllegalArgumentException();
    }
    sslcontext = paramSSLContext;
    exec = paramExecutorService;
  }
  
  public WebSocketImpl createWebSocket(WebSocketAdapter paramWebSocketAdapter, List<Draft> paramList, Socket paramSocket)
  {
    return new WebSocketImpl(paramWebSocketAdapter, paramList, paramSocket);
  }
  
  public WebSocketImpl createWebSocket(WebSocketAdapter paramWebSocketAdapter, Draft paramDraft, Socket paramSocket)
  {
    return new WebSocketImpl(paramWebSocketAdapter, paramDraft, paramSocket);
  }
  
  public ByteChannel wrapChannel(SelectionKey paramSelectionKey, String paramString, int paramInt)
    throws IOException
  {
    paramString = sslcontext.createSSLEngine(paramString, paramInt);
    paramString.setUseClientMode(true);
    return new SSLSocketChannel2(paramSelectionKey, paramString, exec);
  }
}

/* Location:
 * Qualified Name:     org.java_websocket.client.DefaultSSLWebSocketClientFactory
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */