package org.apache.cordova.api;

import org.json.JSONArray;

class Plugin$1
  implements Runnable
{
  Plugin$1(Plugin paramPlugin, String paramString1, JSONArray paramJSONArray, String paramString2) {}
  
  public void run()
  {
    try
    {
      PluginResult localPluginResult1 = this$0.execute(val$action, val$args, val$callbackId);
      this$0.sendPluginResult(localPluginResult1, val$callbackId);
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
}

/* Location:
 * Qualified Name:     org.apache.cordova.api.Plugin.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */