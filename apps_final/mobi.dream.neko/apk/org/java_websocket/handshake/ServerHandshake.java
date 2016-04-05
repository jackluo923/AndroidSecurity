package org.java_websocket.handshake;

public abstract interface ServerHandshake
  extends Handshakedata
{
  public abstract short getHttpStatus();
  
  public abstract String getHttpStatusMessage();
}

/* Location:
 * Qualified Name:     org.java_websocket.handshake.ServerHandshake
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */