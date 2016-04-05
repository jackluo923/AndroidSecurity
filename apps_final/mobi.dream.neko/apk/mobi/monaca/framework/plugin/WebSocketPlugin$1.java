package mobi.monaca.framework.plugin;

import java.net.InetSocketAddress;
import java.util.HashMap;
import mobi.monaca.framework.MonacaApplication;
import mobi.monaca.framework.psedo.R.string;
import org.apache.cordova.api.CallbackContext;
import org.apache.cordova.api.PluginResult;
import org.apache.cordova.api.PluginResult.Status;
import org.java_websocket.WebSocket;
import org.java_websocket.handshake.ClientHandshake;
import org.java_websocket.server.WebSocketServer;
import org.json.JSONException;
import org.json.JSONObject;

class WebSocketPlugin$1
  extends WebSocketServer
{
  WebSocketPlugin$1(WebSocketPlugin paramWebSocketPlugin, InetSocketAddress paramInetSocketAddress)
  {
    super(paramInetSocketAddress);
  }
  
  private String getClientId(WebSocket paramWebSocket)
  {
    if (paramWebSocket != null) {
      return paramWebSocket.getRemoteSocketAddress().toString();
    }
    return null;
  }
  
  public void onClose(WebSocket paramWebSocket, int paramInt, String paramString, boolean paramBoolean)
  {
    paramWebSocket = getClientId(paramWebSocket);
    this$0.sockets.remove(paramWebSocket);
    try
    {
      paramWebSocket = WebSocketPlugin.access$000(this$0, "disconnected", paramWebSocket);
      paramWebSocket.put(MonacaApplication.getStringFromResource(R.string.key_message), paramString);
      paramWebSocket = new PluginResult(PluginResult.Status.OK, paramWebSocket);
      paramWebSocket.setKeepCallback(true);
      this$0.callbackContext.sendPluginResult(paramWebSocket);
      return;
    }
    catch (JSONException paramWebSocket)
    {
      paramWebSocket.printStackTrace();
    }
  }
  
  public void onError(WebSocket paramWebSocket, Exception paramException)
  {
    paramWebSocket = getClientId(paramWebSocket);
    try
    {
      paramWebSocket = WebSocketPlugin.access$000(this$0, "error", paramWebSocket);
      paramWebSocket.put(MonacaApplication.getStringFromResource(R.string.key_message), paramException.toString());
      paramWebSocket = new PluginResult(PluginResult.Status.OK, paramWebSocket);
      paramWebSocket.setKeepCallback(true);
      this$0.callbackContext.sendPluginResult(paramWebSocket);
      return;
    }
    catch (JSONException paramWebSocket)
    {
      paramWebSocket.printStackTrace();
    }
  }
  
  public void onMessage(WebSocket paramWebSocket, String paramString)
  {
    paramWebSocket = getClientId(paramWebSocket);
    try
    {
      paramWebSocket = WebSocketPlugin.access$000(this$0, MonacaApplication.getStringFromResource(R.string.key_message), paramWebSocket);
      paramWebSocket.put(MonacaApplication.getStringFromResource(R.string.key_message), paramString);
      paramWebSocket = new PluginResult(PluginResult.Status.OK, paramWebSocket);
      paramWebSocket.setKeepCallback(true);
      this$0.callbackContext.sendPluginResult(paramWebSocket);
      return;
    }
    catch (JSONException paramWebSocket)
    {
      paramWebSocket.printStackTrace();
    }
  }
  
  public void onOpen(WebSocket paramWebSocket, ClientHandshake paramClientHandshake)
  {
    paramClientHandshake = getClientId(paramWebSocket);
    this$0.sockets.put(paramClientHandshake, paramWebSocket);
    try
    {
      paramWebSocket = WebSocketPlugin.access$000(this$0, "connected", paramClientHandshake);
      paramWebSocket = new PluginResult(PluginResult.Status.OK, paramWebSocket);
      paramWebSocket.setKeepCallback(true);
      this$0.callbackContext.sendPluginResult(paramWebSocket);
      return;
    }
    catch (JSONException paramWebSocket)
    {
      paramWebSocket.printStackTrace();
    }
  }
}

/* Location:
 * Qualified Name:     mobi.monaca.framework.plugin.WebSocketPlugin.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */