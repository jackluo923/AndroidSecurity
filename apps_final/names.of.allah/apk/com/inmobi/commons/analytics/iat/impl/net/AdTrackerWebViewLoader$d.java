package com.inmobi.commons.analytics.iat.impl.net;

import android.webkit.WebSettings;
import android.webkit.WebView;
import com.inmobi.commons.internal.InternalSDKUtil;
import java.util.concurrent.atomic.AtomicBoolean;

class AdTrackerWebViewLoader$d
  implements Runnable
{
  AdTrackerWebViewLoader$d(AdTrackerWebViewLoader paramAdTrackerWebViewLoader) {}
  
  public void run()
  {
    AdTrackerWebViewLoader.a(new AtomicBoolean(false));
    AdTrackerWebViewLoader.a(new WebView(InternalSDKUtil.getContext()));
    AdTrackerWebViewLoader.a().setWebViewClient(new AdTrackerWebViewLoader.MyWebViewClient(a));
    AdTrackerWebViewLoader.a().getSettings().setJavaScriptEnabled(true);
    AdTrackerWebViewLoader.a().getSettings().setCacheMode(2);
    AdTrackerWebViewLoader.a().addJavascriptInterface(new AdTrackerWebViewLoader.JSInterface(), "iatsdk");
  }
}

/* Location:
 * Qualified Name:     com.inmobi.commons.analytics.iat.impl.net.AdTrackerWebViewLoader.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */