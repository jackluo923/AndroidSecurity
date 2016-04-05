package com.inmobi.androidsdk.impl.imai;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Handler;
import com.inmobi.androidsdk.IMBrowserActivity;
import com.inmobi.androidsdk.bootstrapper.ConfigParams;
import com.inmobi.androidsdk.bootstrapper.IMAIConfigParams;
import com.inmobi.androidsdk.bootstrapper.Initializer;
import com.inmobi.androidsdk.impl.SDKUtil;
import com.inmobi.androidsdk.impl.imai.db.ClickDatabaseManager;
import com.inmobi.androidsdk.impl.net.RequestResponseManager;
import com.inmobi.commons.internal.InternalSDKUtil;
import com.inmobi.commons.internal.Log;
import com.inmobi.re.container.IMWebView;
import com.inmobi.re.container.IMWebView.ViewState;
import java.lang.ref.WeakReference;
import java.util.Random;

public class IMAICore
{
  static Random a = new Random();
  
  public static void fireErrorEvent(WeakReference<IMWebView> paramWeakReference, String paramString1, String paramString2, String paramString3)
  {
    if (paramWeakReference != null) {}
    try
    {
      if (paramWeakReference.get() != null)
      {
        Log.debug("[InMobi]-[Network]-4.4.1", "Fire error event IMAI for action: " + paramString2 + " " + paramString1);
        injectJavaScript((IMWebView)paramWeakReference.get(), "window._im_imai.broadcastEvent('error','" + paramString1 + "','" + paramString2 + "','" + paramString3 + "')");
      }
      return;
    }
    catch (Exception paramWeakReference)
    {
      Log.internal("[InMobi]-[Network]-4.4.1", "Exception", paramWeakReference);
    }
  }
  
  public static void fireOpenEmbeddedSuccessful(WeakReference<IMWebView> paramWeakReference, String paramString)
  {
    if (paramWeakReference != null) {}
    try
    {
      if (paramWeakReference.get() != null)
      {
        Log.debug("[InMobi]-[Network]-4.4.1", "fireOpenEmbeddedSuccessful");
        if ((!getmWebViewIsBrowserActivity) && (!getmIsInterstitialAd))
        {
          IMBrowserActivity.requestOnAdDismiss(((IMWebView)paramWeakReference.get()).getWebviewHandler().obtainMessage(((IMWebView)paramWeakReference.get()).getDismissMessage()));
          ((IMWebView)paramWeakReference.get()).fireOnShowAdScreen();
        }
        injectJavaScript((IMWebView)paramWeakReference.get(), "window._im_imai.broadcastEvent('openEmbeddedSuccessful','" + paramString + "')");
      }
      return;
    }
    catch (Exception paramWeakReference)
    {
      Log.internal("[InMobi]-[Network]-4.4.1", "Exception", paramWeakReference);
    }
  }
  
  public static void fireOpenExternalSuccessful(WeakReference<IMWebView> paramWeakReference, String paramString)
  {
    if (paramWeakReference != null) {}
    try
    {
      if (paramWeakReference.get() != null)
      {
        Log.debug("[InMobi]-[Network]-4.4.1", "fireOpenExternalSuccessful");
        ((IMWebView)paramWeakReference.get()).fireOnLeaveApplication();
        injectJavaScript((IMWebView)paramWeakReference.get(), "window._im_imai.broadcastEvent('openExternalSuccessful','" + paramString + "')");
      }
      return;
    }
    catch (Exception paramWeakReference)
    {
      Log.internal("[InMobi]-[Network]-4.4.1", "Exception", paramWeakReference);
    }
  }
  
  public static void firePingInWebViewSuccessful(WeakReference<IMWebView> paramWeakReference, String paramString)
  {
    if (paramWeakReference != null) {}
    try
    {
      if (paramWeakReference.get() != null)
      {
        Log.debug("[InMobi]-[Network]-4.4.1", "firePingInWebViewSuccessful");
        injectJavaScript((IMWebView)paramWeakReference.get(), "window._im_imai.broadcastEvent('pingInWebViewSuccessful','" + paramString + "')");
      }
      return;
    }
    catch (Exception paramWeakReference)
    {
      Log.internal("[InMobi]-[Network]-4.4.1", "Exception", paramWeakReference);
    }
  }
  
  public static void firePingSuccessful(WeakReference<IMWebView> paramWeakReference, String paramString)
  {
    if (paramWeakReference != null) {}
    try
    {
      if (paramWeakReference.get() != null)
      {
        Log.debug("[InMobi]-[Network]-4.4.1", "firePingSuccessful");
        injectJavaScript((IMWebView)paramWeakReference.get(), "window._im_imai.broadcastEvent('pingSuccessful','" + paramString + "')");
      }
      return;
    }
    catch (Exception paramWeakReference)
    {
      Log.internal("[InMobi]-[Network]-4.4.1", "Exception", paramWeakReference);
    }
  }
  
  public static int getRandomNumber()
  {
    return a.nextInt();
  }
  
  public static void initialize()
  {
    new RequestResponseManager().init();
    ClickDatabaseManager.getInstance().setDBLimit(Initializer.getConfigParams().getImai().getmMaxDb());
  }
  
  public static void injectJavaScript(IMWebView paramIMWebView, String paramString)
  {
    try
    {
      paramIMWebView.getActivity().runOnUiThread(new IMAICore.c(paramIMWebView, paramString));
      return;
    }
    catch (Exception paramIMWebView)
    {
      Log.internal("[InMobi]-[Network]-4.4.1", "Error injecting javascript ", paramIMWebView);
    }
  }
  
  public static void launchEmbeddedBrowser(WeakReference<IMWebView> paramWeakReference, String paramString)
  {
    Intent localIntent = new Intent(((IMWebView)paramWeakReference.get()).getActivity(), IMBrowserActivity.class);
    localIntent.putExtra("extra_url", paramString);
    localIntent.putExtra("extra_browser_type", 100);
    localIntent.setFlags(268435456);
    IMBrowserActivity.setWebViewListener(getmListener);
    if ((!getmWebViewIsBrowserActivity) && (!getmIsInterstitialAd) && (((IMWebView)paramWeakReference.get()).getStateVariable() == IMWebView.ViewState.DEFAULT))
    {
      localIntent.putExtra("FIRST_INSTANCE", true);
      localIntent.putExtra("QAMODE", SDKUtil.getQAMode());
    }
    ((IMWebView)paramWeakReference.get()).getActivity().getApplicationContext().startActivity(localIntent);
  }
  
  public static void launchExternalApp(String paramString)
  {
    Intent localIntent = new Intent("android.intent.action.VIEW");
    localIntent.setData(Uri.parse(paramString));
    localIntent.setFlags(268435456);
    InternalSDKUtil.getContext().startActivity(localIntent);
  }
  
  public static void ping(WeakReference<IMWebView> paramWeakReference, String paramString, boolean paramBoolean)
  {
    try
    {
      ((IMWebView)paramWeakReference.get()).getActivity().runOnUiThread(new IMAICore.a(paramString, paramBoolean, paramWeakReference));
      return;
    }
    catch (Exception paramWeakReference)
    {
      Log.internal("[InMobi]-[Network]-4.4.1", "Failed to ping", paramWeakReference);
    }
  }
  
  public static void pingInWebview(WeakReference<IMWebView> paramWeakReference, String paramString, boolean paramBoolean)
  {
    try
    {
      ((IMWebView)paramWeakReference.get()).getActivity().runOnUiThread(new IMAICore.b(paramString, paramBoolean, paramWeakReference));
      return;
    }
    catch (Exception paramWeakReference)
    {
      Log.internal("[InMobi]-[Network]-4.4.1", "Failed to ping in webview", paramWeakReference);
    }
  }
  
  public static boolean validateURL(String paramString)
  {
    if ((paramString == null) || ("".equals(paramString.trim())))
    {
      Log.internal("[InMobi]-[Network]-4.4.1", "Null url passed");
      return false;
    }
    return true;
  }
}

/* Location:
 * Qualified Name:     com.inmobi.androidsdk.impl.imai.IMAICore
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */