package org.java_websocket.client;

import java.net.Socket;
import java.nio.channels.ByteChannel;
import java.nio.channels.SelectionKey;
import java.util.List;
import org.java_websocket.WebSocket;
import org.java_websocket.WebSocketAdapter;
import org.java_websocket.WebSocketImpl;
import org.java_websocket.drafts.Draft;

class WebSocketClient$1
  implements WebSocketClient.WebSocketClientFactory
{
  WebSocketClient$1(WebSocketClient paramWebSocketClient) {}
  
  public WebSocket createWebSocket(WebSocketAdapter paramWebSocketAdapter, List<Draft> paramList, Socket paramSocket)
  {
    return new WebSocketImpl(this$0, paramList, paramSocket);
  }
  
  public WebSocket createWebSocket(WebSocketAdapter paramWebSocketAdapter, Draft paramDraft, Socket paramSocket)
  {
    return new WebSocketImpl(this$0, paramDraft, paramSocket);
  }
  
  public ByteChannel wrapChannel(SelectionKey paramSelectionKey, String paramString, int paramInt)
  {
    return (ByteChannel)paramSelectionKey.channel();
  }
}

/* Location:
 * Qualified Name:     org.java_websocket.client.WebSocketClient.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */