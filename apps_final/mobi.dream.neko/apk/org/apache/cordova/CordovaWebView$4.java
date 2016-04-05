package org.apache.cordova;

class CordovaWebView$4
  implements Runnable
{
  CordovaWebView$4(CordovaWebView paramCordovaWebView1, Runnable paramRunnable, CordovaWebView paramCordovaWebView2, String paramString) {}
  
  public void run()
  {
    new Thread(val$timeoutCheck).start();
    val$me.loadUrlNow(val$url);
  }
}

/* Location:
 * Qualified Name:     org.apache.cordova.CordovaWebView.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */