package org.java_websocket;

import java.net.InetSocketAddress;
import java.nio.ByteBuffer;
import java.nio.channels.NotYetConnectedException;
import org.java_websocket.drafts.Draft;
import org.java_websocket.exceptions.InvalidDataException;
import org.java_websocket.exceptions.InvalidHandshakeException;
import org.java_websocket.framing.Framedata;
import org.java_websocket.handshake.ClientHandshakeBuilder;

public abstract class WebSocket
{
  public static boolean DEBUG = false;
  public static final int DEFAULT_PORT = 80;
  public static final int DEFAULT_WSS_PORT = 443;
  public static int RCVBUF = 16384;
  public static final int READY_STATE_CLOSED = 3;
  public static final int READY_STATE_CLOSING = 2;
  public static final int READY_STATE_CONNECTING = 0;
  public static final int READY_STATE_OPEN = 1;
  
  public abstract void close(int paramInt);
  
  public abstract void close(int paramInt, String paramString);
  
  protected abstract void close(InvalidDataException paramInvalidDataException);
  
  public abstract Draft getDraft();
  
  public abstract InetSocketAddress getLocalSocketAddress();
  
  public abstract int getReadyState();
  
  public abstract InetSocketAddress getRemoteSocketAddress();
  
  public abstract boolean hasBufferedData();
  
  public abstract boolean isClosed();
  
  public abstract boolean isClosing();
  
  public abstract boolean isConnecting();
  
  public abstract boolean isOpen();
  
  public abstract void send(String paramString)
    throws NotYetConnectedException;
  
  public abstract void send(ByteBuffer paramByteBuffer)
    throws IllegalArgumentException, NotYetConnectedException;
  
  public abstract void send(byte[] paramArrayOfByte)
    throws IllegalArgumentException, NotYetConnectedException;
  
  public abstract void sendFrame(Framedata paramFramedata);
  
  public abstract void startHandshake(ClientHandshakeBuilder paramClientHandshakeBuilder)
    throws InvalidHandshakeException;
  
  public static enum Role
  {
    CLIENT,  SERVER;
    
    private Role() {}
  }
}

/* Location:
 * Qualified Name:     org.java_websocket.WebSocket
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */