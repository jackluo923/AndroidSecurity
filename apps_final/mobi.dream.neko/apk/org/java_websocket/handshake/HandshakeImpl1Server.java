package org.java_websocket.handshake;

public class HandshakeImpl1Server
  extends HandshakedataImpl1
  implements ServerHandshakeBuilder
{
  private short httpstatus;
  private String httpstatusmessage;
  
  public short getHttpStatus()
  {
    return httpstatus;
  }
  
  public String getHttpStatusMessage()
  {
    return httpstatusmessage;
  }
  
  public void setHttpStatus(short paramShort)
  {
    httpstatus = paramShort;
  }
  
  public void setHttpStatusMessage(String paramString)
  {
    httpstatusmessage = paramString;
  }
}

/* Location:
 * Qualified Name:     org.java_websocket.handshake.HandshakeImpl1Server
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */