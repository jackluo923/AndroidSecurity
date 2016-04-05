package mobi.monaca.framework.plugin;

import java.io.IOException;
import java.net.InetSocketAddress;
import java.net.SocketException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;
import mobi.monaca.framework.MonacaApplication;
import mobi.monaca.framework.psedo.R.string;
import mobi.monaca.framework.util.NetworkUtils;
import org.apache.cordova.api.CallbackContext;
import org.apache.cordova.api.CordovaPlugin;
import org.apache.cordova.api.PluginResult;
import org.apache.cordova.api.PluginResult.Status;
import org.java_websocket.WebSocket;
import org.java_websocket.handshake.ClientHandshake;
import org.java_websocket.server.WebSocketServer;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class WebSocketPlugin
  extends CordovaPlugin
{
  CallbackContext callbackContext;
  int port;
  WebSocketServer server;
  HashMap<String, WebSocket> sockets = new HashMap();
  
  private JSONObject createAddressJSON()
    throws JSONException, SocketException
  {
    JSONObject localJSONObject = new JSONObject();
    localJSONObject.put("networks", NetworkUtils.getIPAddresses());
    localJSONObject.put("port", port);
    return localJSONObject;
  }
  
  private JSONObject createJSONMessage(String paramString1, String paramString2)
    throws JSONException
  {
    JSONObject localJSONObject = new JSONObject();
    localJSONObject.put(MonacaApplication.getStringFromResource(R.string.nc_key_event), paramString1);
    localJSONObject.put("client", paramString2);
    return localJSONObject;
  }
  
  private void createServer(int paramInt)
  {
    server = new WebSocketServer(new InetSocketAddress(paramInt))
    {
      private String getClientId(WebSocket paramAnonymousWebSocket)
      {
        if (paramAnonymousWebSocket != null) {
          return paramAnonymousWebSocket.getRemoteSocketAddress().toString();
        }
        return null;
      }
      
      public void onClose(WebSocket paramAnonymousWebSocket, int paramAnonymousInt, String paramAnonymousString, boolean paramAnonymousBoolean)
      {
        paramAnonymousWebSocket = getClientId(paramAnonymousWebSocket);
        sockets.remove(paramAnonymousWebSocket);
        try
        {
          paramAnonymousWebSocket = WebSocketPlugin.this.createJSONMessage("disconnected", paramAnonymousWebSocket);
          paramAnonymousWebSocket.put(MonacaApplication.getStringFromResource(R.string.key_message), paramAnonymousString);
          paramAnonymousWebSocket = new PluginResult(PluginResult.Status.OK, paramAnonymousWebSocket);
          paramAnonymousWebSocket.setKeepCallback(true);
          callbackContext.sendPluginResult(paramAnonymousWebSocket);
          return;
        }
        catch (JSONException paramAnonymousWebSocket)
        {
          paramAnonymousWebSocket.printStackTrace();
        }
      }
      
      public void onError(WebSocket paramAnonymousWebSocket, Exception paramAnonymousException)
      {
        paramAnonymousWebSocket = getClientId(paramAnonymousWebSocket);
        try
        {
          paramAnonymousWebSocket = WebSocketPlugin.this.createJSONMessage("error", paramAnonymousWebSocket);
          paramAnonymousWebSocket.put(MonacaApplication.getStringFromResource(R.string.key_message), paramAnonymousException.toString());
          paramAnonymousWebSocket = new PluginResult(PluginResult.Status.OK, paramAnonymousWebSocket);
          paramAnonymousWebSocket.setKeepCallback(true);
          callbackContext.sendPluginResult(paramAnonymousWebSocket);
          return;
        }
        catch (JSONException paramAnonymousWebSocket)
        {
          paramAnonymousWebSocket.printStackTrace();
        }
      }
      
      public void onMessage(WebSocket paramAnonymousWebSocket, String paramAnonymousString)
      {
        paramAnonymousWebSocket = getClientId(paramAnonymousWebSocket);
        try
        {
          paramAnonymousWebSocket = WebSocketPlugin.this.createJSONMessage(MonacaApplication.getStringFromResource(R.string.key_message), paramAnonymousWebSocket);
          paramAnonymousWebSocket.put(MonacaApplication.getStringFromResource(R.string.key_message), paramAnonymousString);
          paramAnonymousWebSocket = new PluginResult(PluginResult.Status.OK, paramAnonymousWebSocket);
          paramAnonymousWebSocket.setKeepCallback(true);
          callbackContext.sendPluginResult(paramAnonymousWebSocket);
          return;
        }
        catch (JSONException paramAnonymousWebSocket)
        {
          paramAnonymousWebSocket.printStackTrace();
        }
      }
      
      public void onOpen(WebSocket paramAnonymousWebSocket, ClientHandshake paramAnonymousClientHandshake)
      {
        paramAnonymousClientHandshake = getClientId(paramAnonymousWebSocket);
        sockets.put(paramAnonymousClientHandshake, paramAnonymousWebSocket);
        try
        {
          paramAnonymousWebSocket = WebSocketPlugin.this.createJSONMessage("connected", paramAnonymousClientHandshake);
          paramAnonymousWebSocket = new PluginResult(PluginResult.Status.OK, paramAnonymousWebSocket);
          paramAnonymousWebSocket.setKeepCallback(true);
          callbackContext.sendPluginResult(paramAnonymousWebSocket);
          return;
        }
        catch (JSONException paramAnonymousWebSocket)
        {
          paramAnonymousWebSocket.printStackTrace();
        }
      }
    };
  }
  
  private void stopServer()
    throws IOException, InterruptedException
  {
    server.stop();
    sockets.clear();
    server = null;
  }
  
  public boolean execute(String paramString, JSONArray paramJSONArray, CallbackContext paramCallbackContext)
    throws JSONException
  {
    if (paramString.equalsIgnoreCase("start"))
    {
      if (server == null)
      {
        port = paramJSONArray.getJSONObject(0).getInt("port");
        createServer(port);
        server.start();
      }
      try
      {
        paramString = createAddressJSON();
        paramString.put(MonacaApplication.getStringFromResource(R.string.nc_key_event), "server:started");
        paramString = new PluginResult(PluginResult.Status.OK, paramString);
        paramString.setKeepCallback(true);
        paramCallbackContext.sendPluginResult(paramString);
        callbackContext = paramCallbackContext;
        return true;
      }
      catch (SocketException paramString)
      {
        for (;;)
        {
          paramCallbackContext.error(paramString.getMessage());
          paramString.printStackTrace();
        }
      }
    }
    if (paramString.equalsIgnoreCase("getStatus"))
    {
      if (server == null)
      {
        paramString = new JSONObject();
        paramString.put("status", "stopped");
        paramCallbackContext.success(paramString);
      }
      for (;;)
      {
        return true;
        try
        {
          paramString = createAddressJSON();
          paramString.put("status", "started");
          paramString.put("clients", new JSONArray(sockets.keySet()));
          paramCallbackContext.success(paramString);
        }
        catch (SocketException paramString)
        {
          paramCallbackContext.error(paramString.getMessage());
          paramString.printStackTrace();
        }
      }
    }
    if (paramString.equalsIgnoreCase("getAddress"))
    {
      if (server == null) {
        paramCallbackContext.error("You need to start server first");
      }
      for (;;)
      {
        return true;
        try
        {
          paramCallbackContext.success(createAddressJSON());
        }
        catch (SocketException paramString)
        {
          paramCallbackContext.error(paramString.getMessage());
          paramString.printStackTrace();
        }
      }
    }
    if (paramString.equalsIgnoreCase("getClients"))
    {
      if (server == null) {
        paramCallbackContext.error("You need to start server first");
      }
      for (;;)
      {
        return true;
        paramCallbackContext.success(new JSONArray(sockets.keySet()));
      }
    }
    if (paramString.equalsIgnoreCase("send"))
    {
      if (server == null) {
        paramCallbackContext.error("You need to start server before sending a message");
      }
      for (;;)
      {
        return true;
        paramJSONArray = paramJSONArray.getJSONObject(0);
        paramString = paramJSONArray.getString("clientId");
        paramJSONArray = paramJSONArray.getString(MonacaApplication.getStringFromResource(R.string.key_message));
        if (sockets.containsKey(paramString))
        {
          ((WebSocket)sockets.get(paramString)).send(paramJSONArray);
          paramCallbackContext.success();
        }
        else
        {
          paramCallbackContext.error("client " + paramString + " is not yet connected");
        }
      }
    }
    if (paramString.equalsIgnoreCase("sendToAllClients"))
    {
      if (server == null) {
        paramCallbackContext.error("You need to start server before sending a message");
      }
      for (;;)
      {
        return true;
        paramString = paramJSONArray.getJSONObject(0).getString(MonacaApplication.getStringFromResource(R.string.key_message));
        paramJSONArray = sockets.keySet().iterator();
        while (paramJSONArray.hasNext())
        {
          String str = (String)paramJSONArray.next();
          ((WebSocket)sockets.get(str)).send(paramString);
        }
        paramString = new JSONObject();
        paramString.put("send", "success");
        paramString.put("clientsSent", sockets.size());
        paramCallbackContext.success(paramString);
      }
    }
    if (paramString.equalsIgnoreCase("stop"))
    {
      if (server != null) {}
      for (;;)
      {
        try
        {
          stopServer();
          paramCallbackContext.success();
          return true;
        }
        catch (Exception paramString)
        {
          paramString.printStackTrace();
          paramCallbackContext.error(paramString.getMessage());
          continue;
        }
        paramCallbackContext.error("server not yet started");
      }
    }
    return super.execute(paramString, paramJSONArray, paramCallbackContext);
  }
  
  public void onDestroy()
  {
    if (server != null) {}
    try
    {
      stopServer();
      super.onDestroy();
      return;
    }
    catch (IOException localIOException)
    {
      for (;;)
      {
        localIOException.printStackTrace();
      }
    }
    catch (InterruptedException localInterruptedException)
    {
      for (;;)
      {
        localInterruptedException.printStackTrace();
      }
    }
  }
}

/* Location:
 * Qualified Name:     mobi.monaca.framework.plugin.WebSocketPlugin
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */