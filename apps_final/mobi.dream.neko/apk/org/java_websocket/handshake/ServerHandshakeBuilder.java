package org.java_websocket.handshake;

public abstract interface ServerHandshakeBuilder
  extends HandshakeBuilder, ServerHandshake
{
  public abstract void setHttpStatus(short paramShort);
  
  public abstract void setHttpStatusMessage(String paramString);
}

/* Location:
 * Qualified Name:     org.java_websocket.handshake.ServerHandshakeBuilder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */