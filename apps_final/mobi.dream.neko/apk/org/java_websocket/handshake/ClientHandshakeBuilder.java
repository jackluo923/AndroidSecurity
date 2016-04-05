package org.java_websocket.handshake;

public abstract interface ClientHandshakeBuilder
  extends HandshakeBuilder, ClientHandshake
{
  public abstract void setResourceDescriptor(String paramString);
}

/* Location:
 * Qualified Name:     org.java_websocket.handshake.ClientHandshakeBuilder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */