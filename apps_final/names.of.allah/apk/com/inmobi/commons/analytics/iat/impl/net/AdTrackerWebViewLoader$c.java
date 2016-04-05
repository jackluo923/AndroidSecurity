package com.inmobi.commons.analytics.iat.impl.net;

import android.webkit.WebView;
import com.inmobi.commons.internal.Log;
import java.util.concurrent.atomic.AtomicBoolean;

class AdTrackerWebViewLoader$c
  implements Runnable
{
  AdTrackerWebViewLoader$c(AdTrackerWebViewLoader paramAdTrackerWebViewLoader) {}
  
  public void run()
  {
    AdTrackerWebViewLoader.b(a, System.currentTimeMillis());
    AdTrackerWebViewLoader.b().set(true);
    Log.internal("[InMobi]-[AdTracker]-4.4.1", "Load Webview: " + AdTrackerNetworkInterface.b());
    AdTrackerWebViewLoader.a().loadUrl(AdTrackerNetworkInterface.b());
  }
}

/* Location:
 * Qualified Name:     com.inmobi.commons.analytics.iat.impl.net.AdTrackerWebViewLoader.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */