package org.java_websocket.handshake;

public abstract interface HandshakeBuilder
  extends Handshakedata
{
  public abstract void put(String paramString1, String paramString2);
  
  public abstract void setContent(byte[] paramArrayOfByte);
}

/* Location:
 * Qualified Name:     org.java_websocket.handshake.HandshakeBuilder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */