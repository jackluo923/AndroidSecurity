package com.adsdk.sdk.banner;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.Window;
import android.webkit.WebSettings;
import android.webkit.WebView;

public class InAppWebView
  extends Activity
{
  public static final String URL_EXTRA = "extra_url";
  
  @SuppressLint({"SetJavaScriptEnabled"})
  private void initializeWebView(Intent paramIntent)
  {
    WebView localWebView = new WebView(this);
    setContentView(localWebView);
    WebSettings localWebSettings = localWebView.getSettings();
    localWebSettings.setJavaScriptEnabled(true);
    localWebSettings.setSupportZoom(true);
    localWebSettings.setBuiltInZoomControls(true);
    localWebSettings.setUseWideViewPort(true);
    localWebView.setWebViewClient(new InAppWebView.1(this));
    localWebView.setWebChromeClient(new InAppWebView.2(this));
    localWebView.loadUrl(paramIntent.getStringExtra("REDIRECT_URI"));
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    getWindow().requestFeature(2);
    getWindow().setFeatureInt(2, -1);
    initializeWebView(getIntent());
  }
}

/* Location:
 * Qualified Name:     com.adsdk.sdk.banner.InAppWebView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */