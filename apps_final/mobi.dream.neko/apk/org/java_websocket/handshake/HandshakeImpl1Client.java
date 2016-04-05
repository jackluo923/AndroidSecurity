package org.java_websocket.handshake;

public class HandshakeImpl1Client
  extends HandshakedataImpl1
  implements ClientHandshakeBuilder
{
  private String resourcedescriptor;
  
  public String getResourceDescriptor()
  {
    return resourcedescriptor;
  }
  
  public void setResourceDescriptor(String paramString)
    throws IllegalArgumentException
  {
    resourcedescriptor = paramString;
  }
}

/* Location:
 * Qualified Name:     org.java_websocket.handshake.HandshakeImpl1Client
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */