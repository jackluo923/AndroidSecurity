package com.inmobi.commons.analytics.iat.impl.net;

import android.webkit.JavascriptInterface;
import com.inmobi.commons.internal.FileOperations;
import com.inmobi.commons.internal.InternalSDKUtil;
import com.inmobi.commons.internal.Log;

public class AdTrackerWebViewLoader$JSInterface
{
  @JavascriptInterface
  public String getParams()
  {
    String str3 = FileOperations.getPreferences(InternalSDKUtil.getContext(), "IMAdTrackerStatusUpload", "referrer");
    String str2 = AdTrackerRequestResponseBuilder.getWebViewRequestParam();
    String str1 = str2;
    if (str3 != null) {
      str1 = str2 + "&referrer=" + str3;
    }
    Log.debug("[InMobi]-[AdTracker]-4.4.1", "Request param for webview" + str1);
    return str1;
  }
}

/* Location:
 * Qualified Name:     com.inmobi.commons.analytics.iat.impl.net.AdTrackerWebViewLoader.JSInterface
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */