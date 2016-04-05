package com.adsdk.sdk.mraid;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.util.Log;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import java.net.URI;

class MraidView$MraidWebViewClient
  extends WebViewClient
{
  private MraidView$MraidWebViewClient(MraidView paramMraidView) {}
  
  public void onLoadResource(WebView paramWebView, String paramString)
  {
    Log.d("MraidView", "Loaded resource: " + paramString);
  }
  
  public void onPageFinished(WebView paramWebView, String paramString)
  {
    if (!MraidView.access$1(this$0))
    {
      MraidView.access$2(this$0).initializeJavaScriptState();
      this$0.fireChangeEventForProperty(MraidPlacementTypeProperty.createWithType(MraidView.access$3(this$0)));
      this$0.fireReadyEvent();
      if (this$0.getMraidListener() != null) {
        this$0.getMraidListener().onReady(this$0);
      }
      MraidView.access$4(this$0, true);
    }
  }
  
  public void onReceivedError(WebView paramWebView, int paramInt, String paramString1, String paramString2)
  {
    Log.d("MraidView", "Error: " + paramString1);
    super.onReceivedError(paramWebView, paramInt, paramString1, paramString2);
  }
  
  public boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
  {
    paramWebView = Uri.parse(paramString).getScheme();
    if (paramWebView.equals("mopub")) {
      return true;
    }
    if (paramWebView.equals("mraid"))
    {
      MraidView.access$0(this$0, URI.create(paramString));
      return true;
    }
    if (this$0.wasClicked())
    {
      paramWebView = new Intent();
      paramWebView.setAction("android.intent.action.VIEW");
      paramWebView.setData(Uri.parse(paramString));
      paramWebView.addFlags(268435456);
      try
      {
        this$0.getContext().startActivity(paramWebView);
        return true;
      }
      catch (ActivityNotFoundException paramWebView)
      {
        return false;
      }
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.adsdk.sdk.mraid.MraidView.MraidWebViewClient
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */