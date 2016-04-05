package org.apache.cordova;

import android.app.Dialog;
import android.webkit.WebView;

class InAppBrowser$4
  implements Runnable
{
  InAppBrowser$4(InAppBrowser paramInAppBrowser, WebView paramWebView) {}
  
  public void run()
  {
    val$childView.loadUrl("about:blank");
    if (InAppBrowser.access$000(this$0) != null) {
      InAppBrowser.access$000(this$0).dismiss();
    }
  }
}

/* Location:
 * Qualified Name:     org.apache.cordova.InAppBrowser.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */