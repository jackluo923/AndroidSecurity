package com.inmobi.re.container;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.view.View;
import android.webkit.GeolocationPermissions.Callback;
import android.webkit.JsResult;
import android.webkit.WebChromeClient;
import android.webkit.WebChromeClient.CustomViewCallback;
import android.webkit.WebView;
import android.widget.AbsoluteLayout.LayoutParams;
import android.widget.FrameLayout;
import android.widget.MediaController;
import android.widget.VideoView;
import com.inmobi.commons.internal.Log;

class a
  extends WebChromeClient
{
  a(IMWebView paramIMWebView) {}
  
  public void onGeolocationPermissionsShowPrompt(String paramString, GeolocationPermissions.Callback paramCallback)
  {
    try
    {
      AlertDialog.Builder localBuilder = new AlertDialog.Builder(IMWebView.h(a));
      localBuilder.setTitle("Locations access");
      localBuilder.setMessage("Allow location access").setCancelable(true).setPositiveButton("Accept", new a.g(this, paramCallback, paramString)).setNegativeButton("Decline", new a.f(this, paramCallback, paramString));
      localBuilder.create().show();
      super.onGeolocationPermissionsShowPrompt(paramString, paramCallback);
      return;
    }
    catch (Exception localException)
    {
      Log.internal("[InMobi]-[RE]-4.4.1", "Exception while accessing location from creative ", localException);
      paramCallback.invoke(paramString, false, false);
    }
  }
  
  public boolean onJsAlert(WebView paramWebView, String paramString1, String paramString2, JsResult paramJsResult)
  {
    Log.debug("[InMobi]-[RE]-4.4.1", "IMWebView-> onJsAlert, " + paramString2);
    try
    {
      if ((a.isExpanded()) || (a.mIsInterstitialAd)) {}
      for (paramWebView = a.getExpandedActivity();; paramWebView = paramWebView.getContext())
      {
        new AlertDialog.Builder(paramWebView).setTitle(paramString1).setMessage(paramString2).setPositiveButton(17039370, new a.c(this, paramJsResult)).setCancelable(false).create().show();
        break;
      }
      return true;
    }
    catch (Exception paramWebView)
    {
      Log.internal("[InMobi]-[RE]-4.4.1", "webchrome client exception onJSAlert ", paramWebView);
    }
  }
  
  public void onShowCustomView(View paramView, WebChromeClient.CustomViewCallback paramCustomViewCallback)
  {
    IMWebView.a(a, paramView);
    IMWebView.a(a, paramCustomViewCallback);
    Log.debug("[InMobi]-[RE]-4.4.1", "onShowCustomView ******************************" + paramView);
    try
    {
      IMWebView.a(a, IMWebView.g(a), new a.b(this));
      IMWebView.g(a).setOnTouchListener(new a.e(this));
      if ((paramView instanceof FrameLayout))
      {
        IMWebView.a(a, (FrameLayout)paramView);
        paramCustomViewCallback = (FrameLayout)IMWebView.h(a).findViewById(16908290);
        if ((IMWebView.i(a).getFocusedChild() instanceof VideoView))
        {
          IMWebView.a(a, (VideoView)IMWebView.i(a).getFocusedChild());
          if ((a.isExpanded()) || (a.mIsInterstitialAd)) {}
          for (paramView = a.getExpandedActivity();; paramView = paramView.getContext())
          {
            IMWebView.j(a).setMediaController(new MediaController(paramView));
            IMWebView.i(a).setBackgroundColor(-16777216);
            IMWebView.j(a).setOnCompletionListener(IMWebView.k(a));
            IMWebView.j(a).setOnFocusChangeListener(new a.d(this));
            paramCustomViewCallback.addView(IMWebView.g(a), new AbsoluteLayout.LayoutParams(-1, -1, 0, 0));
            Log.debug("[InMobi]-[RE]-4.4.1", "Registering");
            IMWebView.a(a, IMWebView.g(a), new a.h(this));
            return;
          }
        }
        IMWebView.a(a, paramView);
        paramView.setBackgroundColor(-16777216);
        Log.debug("[InMobi]-[RE]-4.4.1", "adding " + paramView);
        paramCustomViewCallback.addView(paramView, new AbsoluteLayout.LayoutParams(-1, -1, 0, 0));
        IMWebView.a(a, IMWebView.g(a), new a.a(this));
        return;
      }
    }
    catch (Exception paramView)
    {
      Log.internal("[InMobi]-[RE]-4.4.1", "IMWebview onShowCustomView exception ", paramView);
    }
  }
}

/* Location:
 * Qualified Name:     com.inmobi.re.container.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */