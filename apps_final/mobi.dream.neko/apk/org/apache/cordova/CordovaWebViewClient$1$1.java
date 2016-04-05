package org.apache.cordova;

class CordovaWebViewClient$1$1
  implements Runnable
{
  CordovaWebViewClient$1$1(CordovaWebViewClient.1 param1) {}
  
  public void run()
  {
    this$1.this$0.appView.postMessage("spinner", "stop");
  }
}

/* Location:
 * Qualified Name:     org.apache.cordova.CordovaWebViewClient.1.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */