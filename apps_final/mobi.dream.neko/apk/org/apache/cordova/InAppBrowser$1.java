package org.apache.cordova;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.net.Uri;
import android.util.Log;
import java.util.HashMap;
import org.apache.cordova.api.CallbackContext;
import org.apache.cordova.api.CordovaInterface;
import org.apache.cordova.api.LOG;
import org.apache.cordova.api.PluginResult;
import org.apache.cordova.api.PluginResult.Status;

class InAppBrowser$1
  implements Runnable
{
  InAppBrowser$1(InAppBrowser paramInAppBrowser, String paramString1, String paramString2, HashMap paramHashMap, CallbackContext paramCallbackContext) {}
  
  public void run()
  {
    Object localObject = "";
    if ("_self".equals(val$target))
    {
      Log.d("InAppBrowser", "in self");
      if ((val$url.startsWith("file://")) || (val$url.startsWith("javascript:")) || (Config.isUrlWhiteListed(val$url))) {
        this$0.webView.loadUrl(val$url);
      }
    }
    for (;;)
    {
      localObject = new PluginResult(PluginResult.Status.OK, (String)localObject);
      ((PluginResult)localObject).setKeepCallback(true);
      val$callbackContext.sendPluginResult((PluginResult)localObject);
      return;
      if (val$url.startsWith("tel:"))
      {
        try
        {
          Intent localIntent = new Intent("android.intent.action.DIAL");
          localIntent.setData(Uri.parse(val$url));
          this$0.cordova.getActivity().startActivity(localIntent);
        }
        catch (ActivityNotFoundException localActivityNotFoundException)
        {
          LOG.e("InAppBrowser", "Error dialing " + val$url + ": " + localActivityNotFoundException.toString());
        }
      }
      else
      {
        localObject = this$0.showWebPage(val$url, val$features);
        continue;
        if ("_system".equals(val$target))
        {
          Log.d("InAppBrowser", "in system");
          localObject = this$0.openExternal(val$url);
        }
        else
        {
          Log.d("InAppBrowser", "in blank");
          localObject = this$0.showWebPage(val$url, val$features);
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     org.apache.cordova.InAppBrowser.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */