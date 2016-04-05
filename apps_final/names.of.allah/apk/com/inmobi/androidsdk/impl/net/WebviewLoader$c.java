package com.inmobi.androidsdk.impl.net;

import android.content.Context;
import android.webkit.WebSettings;
import android.webkit.WebSettings.PluginState;
import android.webkit.WebView;
import com.inmobi.commons.internal.Log;
import java.util.concurrent.atomic.AtomicBoolean;

class WebviewLoader$c
  implements Runnable
{
  WebviewLoader$c(WebviewLoader paramWebviewLoader, Context paramContext) {}
  
  public void run()
  {
    try
    {
      WebviewLoader.a(b, new WebView(a));
      WebviewLoader.b = new AtomicBoolean(false);
      WebviewLoader.a(b).setWebViewClient(new WebviewLoader.MyWebViewClient());
      WebviewLoader.a(b).getSettings().setJavaScriptEnabled(true);
      WebviewLoader.a(b).getSettings().setPluginState(WebSettings.PluginState.ON);
      WebviewLoader.a(b).getSettings().setCacheMode(2);
      return;
    }
    catch (Exception localException)
    {
      Log.internal("[InMobi]-[Network]-4.4.1", "Exception init webview", localException);
    }
  }
}

/* Location:
 * Qualified Name:     com.inmobi.androidsdk.impl.net.WebviewLoader.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */