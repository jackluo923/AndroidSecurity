package org.apache.cordova.api;

import java.util.concurrent.ExecutorService;
import org.apache.cordova.CordovaWebView;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@Deprecated
public abstract class Plugin
  extends CordovaPlugin
{
  public LegacyContext ctx;
  
  public void error(String paramString1, String paramString2)
  {
    webView.sendPluginResult(new PluginResult(PluginResult.Status.ERROR, paramString1), paramString2);
  }
  
  public void error(PluginResult paramPluginResult, String paramString)
  {
    webView.sendPluginResult(paramPluginResult, paramString);
  }
  
  public void error(JSONObject paramJSONObject, String paramString)
  {
    webView.sendPluginResult(new PluginResult(PluginResult.Status.ERROR, paramJSONObject), paramString);
  }
  
  public abstract PluginResult execute(String paramString1, JSONArray paramJSONArray, String paramString2);
  
  public boolean execute(final String paramString, final JSONArray paramJSONArray, CallbackContext paramCallbackContext)
    throws JSONException
  {
    final String str = paramCallbackContext.getCallbackId();
    if (!isSynch(paramString)) {}
    for (int i = 1; i != 0; i = 0)
    {
      cordova.getThreadPool().execute(new Runnable()
      {
        public void run()
        {
          try
          {
            PluginResult localPluginResult1 = execute(paramString, paramJSONArray, str);
            sendPluginResult(localPluginResult1, str);
            return;
          }
          catch (Throwable localThrowable)
          {
            for (;;)
            {
              PluginResult localPluginResult2 = new PluginResult(PluginResult.Status.ERROR, localThrowable.getMessage());
            }
          }
        }
      });
      return true;
    }
    paramJSONArray = execute(paramString, paramJSONArray, str);
    paramString = paramJSONArray;
    if (paramJSONArray == null) {
      paramString = new PluginResult(PluginResult.Status.NO_RESULT);
    }
    paramCallbackContext.sendPluginResult(paramString);
    return true;
  }
  
  public void initialize(CordovaInterface paramCordovaInterface, CordovaWebView paramCordovaWebView)
  {
    super.initialize(paramCordovaInterface, paramCordovaWebView);
    setContext(paramCordovaInterface);
    setView(paramCordovaWebView);
  }
  
  public boolean isSynch(String paramString)
  {
    return false;
  }
  
  public void sendJavascript(String paramString)
  {
    webView.sendJavascript(paramString);
  }
  
  public void sendPluginResult(PluginResult paramPluginResult, String paramString)
  {
    webView.sendPluginResult(paramPluginResult, paramString);
  }
  
  public void setContext(CordovaInterface paramCordovaInterface)
  {
    cordova = paramCordovaInterface;
    ctx = new LegacyContext(cordova);
  }
  
  public void setView(CordovaWebView paramCordovaWebView)
  {
    webView = paramCordovaWebView;
  }
  
  public void success(String paramString1, String paramString2)
  {
    webView.sendPluginResult(new PluginResult(PluginResult.Status.OK, paramString1), paramString2);
  }
  
  public void success(PluginResult paramPluginResult, String paramString)
  {
    webView.sendPluginResult(paramPluginResult, paramString);
  }
  
  public void success(JSONObject paramJSONObject, String paramString)
  {
    webView.sendPluginResult(new PluginResult(PluginResult.Status.OK, paramJSONObject), paramString);
  }
}

/* Location:
 * Qualified Name:     org.apache.cordova.api.Plugin
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */