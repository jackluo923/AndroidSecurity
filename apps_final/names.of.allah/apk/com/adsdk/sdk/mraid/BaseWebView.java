package com.adsdk.sdk.mraid;

import android.content.Context;
import android.util.Log;
import android.view.ViewGroup;
import android.webkit.WebView;
import java.lang.reflect.Method;

public class BaseWebView
  extends WebView
{
  public BaseWebView(Context paramContext)
  {
    super(paramContext.getApplicationContext());
    enablePlugins(false);
    WebViews.setDisableJSChromeClient(this);
  }
  
  public void destroy()
  {
    if ((getParent() != null) && ((getParent() instanceof ViewGroup))) {
      ((ViewGroup)getParent()).removeView(this);
    }
    super.destroy();
  }
  
  protected void enablePlugins(boolean paramBoolean)
  {
    if (VersionCode.currentApiLevel().isAtLeast(VersionCode.JELLY_BEAN_MR2)) {
      return;
    }
    Object localObject2;
    Object localObject1;
    if (VersionCode.currentApiLevel().isBelow(VersionCode.FROYO))
    {
      try
      {
        Class.forName("android.webkit.WebSettings").getDeclaredMethod("setPluginsEnabled", new Class[] { Boolean.TYPE }).invoke(getSettings(), new Object[] { Boolean.valueOf(paramBoolean) });
        return;
      }
      catch (Exception localException1)
      {
        localObject2 = new StringBuilder("Unable to ");
        if (!paramBoolean) {}
      }
      for (localObject1 = "enable";; localObject1 = "disable")
      {
        Log.d("MoPub", (String)localObject1 + "WebSettings plugins for BaseWebView.");
        return;
      }
    }
    for (;;)
    {
      try
      {
        Class localClass = Class.forName("android.webkit.WebSettings$PluginState");
        localObject2 = getSettings().getClass().getDeclaredMethod("setPluginState", new Class[] { localClass });
        if (paramBoolean)
        {
          localObject1 = "ON";
          localObject1 = Enum.valueOf(localClass, (String)localObject1);
          ((Method)localObject2).invoke(getSettings(), new Object[] { localObject1 });
          return;
        }
      }
      catch (Exception localException2)
      {
        Log.d("MoPub", "Unable to modify WebView plugin state.");
        return;
      }
      String str = "OFF";
    }
  }
}

/* Location:
 * Qualified Name:     com.adsdk.sdk.mraid.BaseWebView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */