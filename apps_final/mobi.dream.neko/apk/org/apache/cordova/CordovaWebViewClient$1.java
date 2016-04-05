package org.apache.cordova;

import android.app.Activity;
import org.apache.cordova.api.CordovaInterface;

class CordovaWebViewClient$1
  implements Runnable
{
  CordovaWebViewClient$1(CordovaWebViewClient paramCordovaWebViewClient) {}
  
  public void run()
  {
    try
    {
      Thread.sleep(2000L);
      this$0.cordova.getActivity().runOnUiThread(new Runnable()
      {
        public void run()
        {
          this$0.appView.postMessage("spinner", "stop");
        }
      });
      return;
    }
    catch (InterruptedException localInterruptedException) {}
  }
}

/* Location:
 * Qualified Name:     org.apache.cordova.CordovaWebViewClient.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */