package com.google.zxing.client.android;

import android.content.Intent;
import android.net.Uri;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.Button;

final class HelpActivity$HelpClient
  extends WebViewClient
{
  private HelpActivity$HelpClient(HelpActivity paramHelpActivity) {}
  
  public void onPageFinished(WebView paramWebView, String paramString)
  {
    this$0.setTitle(paramWebView.getTitle());
    HelpActivity.access$200(this$0).setEnabled(paramWebView.canGoBack());
  }
  
  public boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
  {
    if (paramString.startsWith("file")) {
      return false;
    }
    this$0.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(paramString)));
    return true;
  }
}

/* Location:
 * Qualified Name:     com.google.zxing.client.android.HelpActivity.HelpClient
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */