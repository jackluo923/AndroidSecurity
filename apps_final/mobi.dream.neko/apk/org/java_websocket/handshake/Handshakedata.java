package org.java_websocket.handshake;

import java.util.Iterator;

public abstract interface Handshakedata
{
  public abstract byte[] getContent();
  
  public abstract String getFieldValue(String paramString);
  
  public abstract boolean hasFieldValue(String paramString);
  
  public abstract Iterator<String> iterateHttpFields();
}

/* Location:
 * Qualified Name:     org.java_websocket.handshake.Handshakedata
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */