package com.inmobi.commons.analytics.iat.impl.net;

import android.webkit.WebView;
import java.util.concurrent.atomic.AtomicBoolean;

class AdTrackerWebViewLoader$b
  implements Runnable
{
  AdTrackerWebViewLoader$b(AdTrackerWebViewLoader paramAdTrackerWebViewLoader) {}
  
  public void run()
  {
    if (AdTrackerWebViewLoader.a() != null) {
      AdTrackerWebViewLoader.b().set(false);
    }
    AdTrackerWebViewLoader.a().stopLoading();
  }
}

/* Location:
 * Qualified Name:     com.inmobi.commons.analytics.iat.impl.net.AdTrackerWebViewLoader.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */