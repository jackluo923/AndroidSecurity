package com.adsdk.sdk.mraid;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.util.Log;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.ImageButton;
import android.widget.Toast;

class MraidBrowser$1
  extends WebViewClient
{
  MraidBrowser$1(MraidBrowser paramMraidBrowser) {}
  
  public void onPageFinished(WebView paramWebView, String paramString)
  {
    super.onPageFinished(paramWebView, paramString);
    if (paramWebView.canGoBack())
    {
      paramString = Drawables.LEFT_ARROW.decodeImage(this$0);
      MraidBrowser.access$1(this$0).setImageDrawable(paramString);
      if (!paramWebView.canGoForward()) {
        break label79;
      }
    }
    label79:
    for (paramWebView = Drawables.RIGHT_ARROW.decodeImage(this$0);; paramWebView = Drawables.UNRIGHT_ARROW.decodeImage(this$0))
    {
      MraidBrowser.access$0(this$0).setImageDrawable(paramWebView);
      return;
      paramString = Drawables.UNLEFT_ARROW.decodeImage(this$0);
      break;
    }
  }
  
  public void onPageStarted(WebView paramWebView, String paramString, Bitmap paramBitmap)
  {
    super.onPageStarted(paramWebView, paramString, paramBitmap);
    MraidBrowser.access$0(this$0).setImageDrawable(Drawables.UNRIGHT_ARROW.decodeImage(this$0));
  }
  
  public void onReceivedError(WebView paramWebView, int paramInt, String paramString1, String paramString2)
  {
    Toast.makeText((Activity)paramWebView.getContext(), "MRAID error: " + paramString1, 0).show();
  }
  
  public boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
  {
    if (paramString == null) {}
    do
    {
      return false;
      paramWebView = Uri.parse(paramString).getHost();
    } while (((paramString.startsWith("http:")) || (paramString.startsWith("https:"))) && (!"play.google.com".equals(paramWebView)) && (!"market.android.com".equals(paramWebView)));
    try
    {
      this$0.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(paramString)));
      this$0.finish();
      return true;
    }
    catch (ActivityNotFoundException paramWebView)
    {
      for (;;)
      {
        Log.w("MoPub", "Unable to start activity for " + paramString + ". Ensure that your phone can handle this intent.");
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.adsdk.sdk.mraid.MraidBrowser.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */