package com.inmobi.androidsdk.impl.net;

import android.webkit.WebView;
import com.inmobi.commons.internal.Log;
import java.util.concurrent.atomic.AtomicBoolean;

class WebviewLoader$d
  implements Runnable
{
  WebviewLoader$d(WebviewLoader paramWebviewLoader) {}
  
  public void run()
  {
    try
    {
      if (WebviewLoader.a(a) != null)
      {
        WebviewLoader.a(a).stopLoading();
        WebviewLoader.a(a).destroy();
        WebviewLoader.a(a, null);
        WebviewLoader.b.set(false);
      }
      return;
    }
    catch (Exception localException)
    {
      Log.internal("[InMobi]-[Network]-4.4.1", "Exception deinit webview ", localException);
    }
  }
}

/* Location:
 * Qualified Name:     com.inmobi.androidsdk.impl.net.WebviewLoader.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */