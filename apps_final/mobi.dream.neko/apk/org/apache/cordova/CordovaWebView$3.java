package org.apache.cordova;

import android.app.Activity;
import org.apache.cordova.api.CordovaInterface;

class CordovaWebView$3
  implements Runnable
{
  CordovaWebView$3(CordovaWebView paramCordovaWebView1, int paramInt1, CordovaWebView paramCordovaWebView2, int paramInt2, Runnable paramRunnable) {}
  
  public void run()
  {
    for (;;)
    {
      try {}catch (InterruptedException localInterruptedException)
      {
        localInterruptedException.printStackTrace();
        continue;
      }
      try
      {
        wait(val$loadUrlTimeoutValue);
        if (val$me.loadUrlTimeout == val$currentLoadUrlTimeout) {
          CordovaWebView.access$100(val$me).getActivity().runOnUiThread(val$loadError);
        }
        return;
      }
      finally {}
    }
  }
}

/* Location:
 * Qualified Name:     org.apache.cordova.CordovaWebView.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */