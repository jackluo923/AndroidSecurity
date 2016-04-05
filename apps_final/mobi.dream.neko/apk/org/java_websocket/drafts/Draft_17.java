package org.java_websocket.drafts;

import org.java_websocket.exceptions.InvalidHandshakeException;
import org.java_websocket.handshake.ClientHandshake;
import org.java_websocket.handshake.ClientHandshakeBuilder;

public class Draft_17
  extends Draft_10
{
  public Draft.HandshakeState acceptHandshakeAsServer(ClientHandshake paramClientHandshake)
    throws InvalidHandshakeException
  {
    if (readVersion(paramClientHandshake) == 13) {
      return Draft.HandshakeState.MATCHED;
    }
    return Draft.HandshakeState.NOT_MATCHED;
  }
  
  public ClientHandshakeBuilder postProcessHandshakeRequestAsClient(ClientHandshakeBuilder paramClientHandshakeBuilder)
  {
    super.postProcessHandshakeRequestAsClient(paramClientHandshakeBuilder);
    paramClientHandshakeBuilder.put("Sec-WebSocket-Version", "13");
    return paramClientHandshakeBuilder;
  }
}

/* Location:
 * Qualified Name:     org.java_websocket.drafts.Draft_17
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */