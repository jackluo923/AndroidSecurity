package com.inmobi.androidsdk.impl.net;

import android.webkit.WebView;
import com.inmobi.commons.internal.Log;
import java.util.HashMap;
import java.util.concurrent.atomic.AtomicBoolean;

class WebviewLoader$b
  implements Runnable
{
  WebviewLoader$b(WebviewLoader paramWebviewLoader, String paramString, HashMap paramHashMap) {}
  
  public void run()
  {
    try
    {
      WebviewLoader.b.set(true);
      WebviewLoader.a(c).loadUrl(a, b);
      return;
    }
    catch (Exception localException)
    {
      Log.internal("[InMobi]-[Network]-4.4.1", "Exception load in webview", localException);
    }
  }
}

/* Location:
 * Qualified Name:     com.inmobi.androidsdk.impl.net.WebviewLoader.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */