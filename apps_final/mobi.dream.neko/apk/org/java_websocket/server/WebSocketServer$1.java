package org.java_websocket.server;

import java.net.Socket;
import java.nio.channels.SelectionKey;
import java.nio.channels.SocketChannel;
import java.util.List;
import org.java_websocket.WebSocketAdapter;
import org.java_websocket.WebSocketImpl;
import org.java_websocket.drafts.Draft;

class WebSocketServer$1
  implements WebSocketServer.WebSocketServerFactory
{
  WebSocketServer$1(WebSocketServer paramWebSocketServer) {}
  
  public WebSocketImpl createWebSocket(WebSocketAdapter paramWebSocketAdapter, List<Draft> paramList, Socket paramSocket)
  {
    return new WebSocketImpl(paramWebSocketAdapter, paramList, paramSocket);
  }
  
  public WebSocketImpl createWebSocket(WebSocketAdapter paramWebSocketAdapter, Draft paramDraft, Socket paramSocket)
  {
    return new WebSocketImpl(paramWebSocketAdapter, paramDraft, paramSocket);
  }
  
  public SocketChannel wrapChannel(SelectionKey paramSelectionKey)
  {
    return (SocketChannel)paramSelectionKey.channel();
  }
}

/* Location:
 * Qualified Name:     org.java_websocket.server.WebSocketServer.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */