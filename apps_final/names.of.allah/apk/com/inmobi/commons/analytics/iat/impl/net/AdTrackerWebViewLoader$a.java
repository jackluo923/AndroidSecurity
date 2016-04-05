package com.inmobi.commons.analytics.iat.impl.net;

import android.webkit.WebView;
import java.util.concurrent.atomic.AtomicBoolean;

class AdTrackerWebViewLoader$a
  implements Runnable
{
  AdTrackerWebViewLoader$a(AdTrackerWebViewLoader paramAdTrackerWebViewLoader) {}
  
  public void run()
  {
    if (AdTrackerWebViewLoader.a() != null)
    {
      AdTrackerWebViewLoader.a().stopLoading();
      AdTrackerWebViewLoader.a().destroy();
      AdTrackerWebViewLoader.a(null);
      AdTrackerWebViewLoader.b().set(false);
    }
  }
}

/* Location:
 * Qualified Name:     com.inmobi.commons.analytics.iat.impl.net.AdTrackerWebViewLoader.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */