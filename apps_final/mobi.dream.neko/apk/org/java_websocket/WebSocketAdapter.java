package org.java_websocket;

import java.net.InetSocketAddress;
import java.nio.ByteBuffer;
import org.java_websocket.drafts.Draft;
import org.java_websocket.exceptions.InvalidDataException;
import org.java_websocket.framing.Framedata;
import org.java_websocket.framing.Framedata.Opcode;
import org.java_websocket.framing.FramedataImpl1;
import org.java_websocket.handshake.ClientHandshake;
import org.java_websocket.handshake.HandshakeImpl1Server;
import org.java_websocket.handshake.Handshakedata;
import org.java_websocket.handshake.ServerHandshake;
import org.java_websocket.handshake.ServerHandshakeBuilder;

public abstract class WebSocketAdapter
  implements WebSocketListener
{
  public String getFlashPolicy(WebSocket paramWebSocket)
  {
    return "<cross-domain-policy><allow-access-from domain=\"*\" to-ports=\"" + paramWebSocket.getLocalSocketAddress().getPort() + "\" /></cross-domain-policy>\000";
  }
  
  public void onWebsocketClose(WebSocket paramWebSocket, int paramInt, String paramString, boolean paramBoolean) {}
  
  public void onWebsocketError(WebSocket paramWebSocket, Exception paramException) {}
  
  public void onWebsocketHandshakeReceivedAsClient(WebSocket paramWebSocket, ClientHandshake paramClientHandshake, ServerHandshake paramServerHandshake)
    throws InvalidDataException
  {}
  
  public ServerHandshakeBuilder onWebsocketHandshakeReceivedAsServer(WebSocket paramWebSocket, Draft paramDraft, ClientHandshake paramClientHandshake)
    throws InvalidDataException
  {
    return new HandshakeImpl1Server();
  }
  
  public void onWebsocketHandshakeSentAsClient(WebSocket paramWebSocket, ClientHandshake paramClientHandshake)
    throws InvalidDataException
  {}
  
  public void onWebsocketMessage(WebSocket paramWebSocket, String paramString) {}
  
  public void onWebsocketMessage(WebSocket paramWebSocket, ByteBuffer paramByteBuffer) {}
  
  public void onWebsocketOpen(WebSocket paramWebSocket, Handshakedata paramHandshakedata) {}
  
  public void onWebsocketPing(WebSocket paramWebSocket, Framedata paramFramedata)
  {
    paramFramedata = new FramedataImpl1(paramFramedata);
    paramFramedata.setOptcode(Framedata.Opcode.PONG);
    paramWebSocket.sendFrame(paramFramedata);
  }
  
  public void onWebsocketPong(WebSocket paramWebSocket, Framedata paramFramedata) {}
}

/* Location:
 * Qualified Name:     org.java_websocket.WebSocketAdapter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */