package org.apache.cordova;

import android.webkit.JavascriptInterface;
import org.apache.cordova.api.PluginManager;
import org.json.JSONException;

class ExposedJsApi
{
  private NativeToJsMessageQueue jsMessageQueue;
  private PluginManager pluginManager;
  
  public ExposedJsApi(PluginManager paramPluginManager, NativeToJsMessageQueue paramNativeToJsMessageQueue)
  {
    pluginManager = paramPluginManager;
    jsMessageQueue = paramNativeToJsMessageQueue;
  }
  
  @JavascriptInterface
  public String exec(String paramString1, String paramString2, String paramString3, String paramString4)
    throws JSONException
  {
    if (paramString4 == null) {
      return "@Null arguments.";
    }
    jsMessageQueue.setPaused(true);
    try
    {
      CordovaResourceApi.jsThread = Thread.currentThread();
      pluginManager.exec(paramString1, paramString2, paramString3, paramString4);
      paramString1 = jsMessageQueue.popAndEncode(false);
      return paramString1;
    }
    catch (Throwable paramString1)
    {
      paramString1.printStackTrace();
      return "";
    }
    finally
    {
      jsMessageQueue.setPaused(false);
    }
  }
  
  @JavascriptInterface
  public String retrieveJsMessages(boolean paramBoolean)
  {
    return jsMessageQueue.popAndEncode(paramBoolean);
  }
  
  @JavascriptInterface
  public void setNativeToJsBridgeMode(int paramInt)
  {
    jsMessageQueue.setBridgeMode(paramInt);
  }
}

/* Location:
 * Qualified Name:     org.apache.cordova.ExposedJsApi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */