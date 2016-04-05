package org.java_websocket;

import java.net.Socket;
import java.util.List;
import org.java_websocket.drafts.Draft;

public abstract interface WebSocketFactory
{
  public abstract WebSocket createWebSocket(WebSocketAdapter paramWebSocketAdapter, List<Draft> paramList, Socket paramSocket);
  
  public abstract WebSocket createWebSocket(WebSocketAdapter paramWebSocketAdapter, Draft paramDraft, Socket paramSocket);
}

/* Location:
 * Qualified Name:     org.java_websocket.WebSocketFactory
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */