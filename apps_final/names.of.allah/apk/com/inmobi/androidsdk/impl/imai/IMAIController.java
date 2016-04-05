package com.inmobi.androidsdk.impl.imai;

import android.os.Build.VERSION;
import android.webkit.JavascriptInterface;
import com.inmobi.commons.InMobi;
import com.inmobi.commons.internal.ApiStatCollector;
import com.inmobi.commons.internal.ApiStatCollector.ApiEventType;
import com.inmobi.commons.internal.Log;
import com.inmobi.commons.metric.EventLog;
import com.inmobi.commons.metric.Logger;
import com.inmobi.re.container.IMWebView;
import java.lang.ref.WeakReference;

public class IMAIController
{
  public static final String IMAI_BRIDGE = "imaiController";
  private transient WeakReference<IMWebView> a;
  
  public IMAIController(IMWebView paramIMWebView)
  {
    IMAICore.initialize();
    a = new WeakReference(paramIMWebView);
  }
  
  @JavascriptInterface
  public String getPlatformVersion()
  {
    Log.debug("[InMobi]-[Network]-4.4.1", "get platform version");
    return Integer.toString(Build.VERSION.SDK_INT);
  }
  
  @JavascriptInterface
  public String getSdkVersion()
  {
    Log.debug("[InMobi]-[Network]-4.4.1", "get sdk version");
    return InMobi.getVersion();
  }
  
  @JavascriptInterface
  public void log(String paramString)
  {
    Log.debug("[InMobi]-[Network]-4.4.1", paramString);
  }
  
  @JavascriptInterface
  public void openEmbedded(String paramString)
  {
    ApiStatCollector.getLogger().logEvent(new EventLog(new ApiStatCollector.ApiEventType(1001), null));
    try
    {
      Log.debug("[InMobi]-[Network]-4.4.1", "IMAI open Embedded");
      if (!IMAICore.validateURL(paramString))
      {
        IMAICore.fireErrorEvent(a, "Null url passed", "openEmbedded", paramString);
        return;
      }
      if ((paramString.startsWith("http")) || (paramString.startsWith("https")))
      {
        IMAICore.launchEmbeddedBrowser(a, paramString);
        IMAICore.fireOpenEmbeddedSuccessful(a, paramString);
        return;
      }
    }
    catch (Exception localException)
    {
      IMAICore.fireErrorEvent(a, localException.getMessage(), "openEmbedded", paramString);
      Log.internal("[InMobi]-[Network]-4.4.1", "IMAI openEmbedded failed", localException);
      return;
    }
    openExternal(paramString);
  }
  
  @JavascriptInterface
  public void openExternal(String paramString)
  {
    ApiStatCollector.getLogger().logEvent(new EventLog(new ApiStatCollector.ApiEventType(1002), null));
    try
    {
      Log.debug("[InMobi]-[Network]-4.4.1", "IMAI open external");
      if (!IMAICore.validateURL(paramString))
      {
        IMAICore.fireErrorEvent(a, "Null url passed", "openExternal", paramString);
        return;
      }
      IMAICore.launchExternalApp(paramString);
      IMAICore.fireOpenExternalSuccessful(a, paramString);
      return;
    }
    catch (Exception localException)
    {
      IMAICore.fireErrorEvent(a, localException.getMessage(), "openExternal", paramString);
      Log.internal("[InMobi]-[Network]-4.4.1", "IMAI openExternal failed", localException);
    }
  }
  
  @JavascriptInterface
  public void ping(String paramString, boolean paramBoolean)
  {
    ApiStatCollector.getLogger().logEvent(new EventLog(new ApiStatCollector.ApiEventType(1003), null));
    try
    {
      Log.debug("[InMobi]-[Network]-4.4.1", "IMAI ping");
      if (!IMAICore.validateURL(paramString))
      {
        IMAICore.fireErrorEvent(a, "Null url passed", "ping", paramString);
        return;
      }
      if ((paramString.contains("http")) || (paramString.contains("https")))
      {
        IMAICore.ping(a, paramString, paramBoolean);
        return;
      }
    }
    catch (Exception localException)
    {
      IMAICore.fireErrorEvent(a, localException.getMessage(), "ping", paramString);
      Log.internal("[InMobi]-[Network]-4.4.1", "IMAI ping failed", localException);
      return;
    }
    IMAICore.fireErrorEvent(a, "Invalid url passed", "ping", paramString);
  }
  
  @JavascriptInterface
  public void pingInWebView(String paramString, boolean paramBoolean)
  {
    ApiStatCollector.getLogger().logEvent(new EventLog(new ApiStatCollector.ApiEventType(1004), null));
    try
    {
      Log.debug("[InMobi]-[Network]-4.4.1", "IMAI ping in webview");
      if (!IMAICore.validateURL(paramString))
      {
        IMAICore.fireErrorEvent(a, "Null url passed", "pingInWebView", paramString);
        return;
      }
      if ((paramString.contains("http")) || (paramString.contains("https")))
      {
        IMAICore.pingInWebview(a, paramString, paramBoolean);
        return;
      }
    }
    catch (Exception localException)
    {
      IMAICore.fireErrorEvent(a, localException.getMessage(), "pingInWebView", paramString);
      Log.internal("[InMobi]-[Network]-4.4.1", "IMAI pingInWebView failed", localException);
      return;
    }
    IMAICore.fireErrorEvent(a, "Invalid url passed", "pingInWebView", paramString);
  }
}

/* Location:
 * Qualified Name:     com.inmobi.androidsdk.impl.imai.IMAIController
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */