package org.apache.cordova;

import org.apache.cordova.api.CallbackContext;
import org.apache.cordova.api.CordovaPlugin;
import org.json.JSONArray;

public class SplashScreen
  extends CordovaPlugin
{
  public boolean execute(String paramString, JSONArray paramJSONArray, CallbackContext paramCallbackContext)
  {
    if (paramString.equals("hide")) {
      webView.postMessage("splashscreen", "hide");
    }
    for (;;)
    {
      paramCallbackContext.success();
      return true;
      if (!paramString.equals("show")) {
        break;
      }
      webView.postMessage("splashscreen", "show");
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     org.apache.cordova.SplashScreen
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */