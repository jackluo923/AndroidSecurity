package org.apache.cordova;

import android.webkit.WebView;

class InAppBrowser$3
  implements Runnable
{
  InAppBrowser$3(InAppBrowser paramInAppBrowser, String paramString) {}
  
  public void run()
  {
    InAppBrowser.access$100(this$0).loadUrl("javascript:" + val$finalScriptToInject);
  }
}

/* Location:
 * Qualified Name:     org.apache.cordova.InAppBrowser.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */