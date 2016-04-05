package com.millennialmedia.android;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.webkit.GeolocationPermissions.Callback;
import android.webkit.JsResult;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.widget.Toast;

class MMWebView$MyWebChromeClient
  extends WebChromeClient
{
  private static final String KEY_USE_GEO = "mm_use_geo_location";
  
  private MMWebView$MyWebChromeClient(MMWebView paramMMWebView) {}
  
  private String getApplicationName(Context paramContext)
  {
    PackageManager localPackageManager = paramContext.getApplicationContext().getPackageManager();
    try
    {
      paramContext = localPackageManager.getApplicationInfo(paramContext.getPackageName(), 0);
      if (paramContext != null)
      {
        paramContext = localPackageManager.getApplicationLabel(paramContext);
        return (String)paramContext;
      }
    }
    catch (PackageManager.NameNotFoundException paramContext)
    {
      for (;;)
      {
        paramContext = null;
        continue;
        paramContext = "This app";
      }
    }
  }
  
  private boolean isFirstGeoRequest()
  {
    boolean bool = false;
    if (!this$0.getContext().getSharedPreferences("MillennialMediaSettings", 0).contains("mm_use_geo_location")) {
      bool = true;
    }
    return bool;
  }
  
  private boolean retrieveUseGeo()
  {
    return this$0.getContext().getSharedPreferences("MillennialMediaSettings", 0).getBoolean("mm_use_geo_location", false);
  }
  
  private void saveUseGeo(boolean paramBoolean)
  {
    SharedPreferences.Editor localEditor = this$0.getContext().getSharedPreferences("MillennialMediaSettings", 0).edit();
    localEditor.putBoolean("mm_use_geo_location", paramBoolean);
    localEditor.commit();
  }
  
  public void onConsoleMessage(String paramString1, int paramInt, String paramString2)
  {
    MMSDK.Log.d(paramString1 + " at " + paramString2 + " -- line " + paramInt);
    super.onConsoleMessage(paramString1, paramInt, paramString2);
  }
  
  public void onGeolocationPermissionsShowPrompt(String paramString, GeolocationPermissions.Callback paramCallback)
  {
    if (isFirstGeoRequest())
    {
      if (retrieveUseGeo()) {
        paramCallback.invoke(paramString, true, true);
      }
      Activity localActivity;
      do
      {
        return;
        localActivity = this$0.getActivity();
      } while (localActivity == null);
      AlertDialog.Builder localBuilder = new AlertDialog.Builder(localActivity);
      localBuilder.setTitle(getApplicationName(localActivity));
      localBuilder.setMessage("Would like to use your Current Location.").setPositiveButton("Allow", new MMWebView.MyWebChromeClient.2(this, paramCallback, paramString)).setNegativeButton("Don't Allow", new MMWebView.MyWebChromeClient.1(this, paramCallback, paramString));
      localBuilder.create().show();
      return;
    }
    paramCallback.invoke(paramString, false, false);
  }
  
  public boolean onJsAlert(WebView paramWebView, String paramString1, String paramString2, JsResult paramJsResult)
  {
    if (this$0.getContext() != this$0.getContext().getApplicationContext()) {
      return super.onJsAlert(paramWebView, paramString1, paramString2, paramJsResult);
    }
    Toast.makeText(this$0.getContext(), paramString2, 0).show();
    return true;
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.android.MMWebView.MyWebChromeClient
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */