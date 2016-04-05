package com.inmobi.androidsdk.impl.net;

import android.webkit.WebView;
import com.inmobi.commons.internal.Log;
import java.util.concurrent.atomic.AtomicBoolean;

class WebviewLoader$a
  implements Runnable
{
  WebviewLoader$a(WebviewLoader paramWebviewLoader) {}
  
  public void run()
  {
    try
    {
      if (WebviewLoader.a(a) != null) {
        WebviewLoader.b.set(false);
      }
      WebviewLoader.a(a).stopLoading();
      return;
    }
    catch (Exception localException)
    {
      Log.internal("[InMobi]-[Network]-4.4.1", "Exception stop loading", localException);
    }
  }
}

/* Location:
 * Qualified Name:     com.inmobi.androidsdk.impl.net.WebviewLoader.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */