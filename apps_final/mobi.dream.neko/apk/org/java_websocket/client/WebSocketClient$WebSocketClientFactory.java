package org.java_websocket.client;

import java.io.IOException;
import java.nio.channels.ByteChannel;
import java.nio.channels.SelectionKey;
import org.java_websocket.WebSocketFactory;

public abstract interface WebSocketClient$WebSocketClientFactory
  extends WebSocketFactory
{
  public abstract ByteChannel wrapChannel(SelectionKey paramSelectionKey, String paramString, int paramInt)
    throws IOException;
}

/* Location:
 * Qualified Name:     org.java_websocket.client.WebSocketClient.WebSocketClientFactory
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */