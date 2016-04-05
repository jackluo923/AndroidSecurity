package org.java_websocket.server;

import java.io.IOException;
import java.net.Socket;
import java.nio.channels.ByteChannel;
import java.nio.channels.SelectionKey;
import java.util.List;
import org.java_websocket.WebSocketAdapter;
import org.java_websocket.WebSocketFactory;
import org.java_websocket.WebSocketImpl;
import org.java_websocket.drafts.Draft;

public abstract interface WebSocketServer$WebSocketServerFactory
  extends WebSocketFactory
{
  public abstract WebSocketImpl createWebSocket(WebSocketAdapter paramWebSocketAdapter, List<Draft> paramList, Socket paramSocket);
  
  public abstract WebSocketImpl createWebSocket(WebSocketAdapter paramWebSocketAdapter, Draft paramDraft, Socket paramSocket);
  
  public abstract ByteChannel wrapChannel(SelectionKey paramSelectionKey)
    throws IOException;
}

/* Location:
 * Qualified Name:     org.java_websocket.server.WebSocketServer.WebSocketServerFactory
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */