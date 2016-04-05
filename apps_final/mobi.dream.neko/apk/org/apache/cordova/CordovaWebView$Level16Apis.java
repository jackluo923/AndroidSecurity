package org.apache.cordova;

import android.annotation.TargetApi;
import android.webkit.WebSettings;

@TargetApi(16)
class CordovaWebView$Level16Apis
{
  static void enableUniversalAccess(WebSettings paramWebSettings)
  {
    paramWebSettings.setAllowUniversalAccessFromFileURLs(true);
  }
}

/* Location:
 * Qualified Name:     org.apache.cordova.CordovaWebView.Level16Apis
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */