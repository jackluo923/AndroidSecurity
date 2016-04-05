package org.apache.cordova;

import org.apache.cordova.api.LOG;

class CordovaWebView$2
  implements Runnable
{
  CordovaWebView$2(CordovaWebView paramCordovaWebView1, CordovaWebView paramCordovaWebView2, String paramString) {}
  
  public void run()
  {
    val$me.stopLoading();
    LOG.e("CordovaWebView", "CordovaWebView: TIMEOUT ERROR!");
    if (this$0.viewClient != null) {
      this$0.viewClient.onReceivedError(val$me, -6, "The connection to the server was unsuccessful.", val$url);
    }
  }
}

/* Location:
 * Qualified Name:     org.apache.cordova.CordovaWebView.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */