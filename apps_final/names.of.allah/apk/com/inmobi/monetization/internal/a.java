package com.inmobi.monetization.internal;

import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.inmobi.commons.internal.Log;
import java.util.ArrayList;

class a
  extends WebViewClient
{
  a(TrackerView paramTrackerView) {}
  
  public void onPageFinished(WebView paramWebView, String paramString)
  {
    Log.internal("[InMobi]-[Monetization]", "Native ad context code loaded");
    TrackerView.a(a, true);
    if ((TrackerView.a(a) != null) && (!TrackerView.a(a).isEmpty()))
    {
      int i = 0;
      while (i < TrackerView.a(a).size())
      {
        a.injectJavaScript((String)TrackerView.a(a).get(i));
        i += 1;
      }
      TrackerView.a(a).clear();
      TrackerView.a(a, null);
    }
  }
}

/* Location:
 * Qualified Name:     com.inmobi.monetization.internal.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */