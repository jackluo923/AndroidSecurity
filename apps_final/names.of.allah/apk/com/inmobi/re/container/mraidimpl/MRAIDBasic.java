package com.inmobi.re.container.mraidimpl;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.webkit.URLUtil;
import com.inmobi.androidsdk.IMBrowserActivity;
import com.inmobi.commons.internal.Log;
import com.inmobi.re.container.IMWebView;
import com.inmobi.re.container.IMWebView.ViewState;

public class MRAIDBasic
{
  private IMWebView a;
  private Activity b;
  
  public MRAIDBasic(IMWebView paramIMWebView, Activity paramActivity)
  {
    a = paramIMWebView;
    b = paramActivity;
  }
  
  public void getCurrentPosition()
  {
    throw new Runtime("d2j fail translate: java.lang.RuntimeException: can not merge F and I\n\tat com.googlecode.dex2jar.ir.TypeClass.merge(TypeClass.java:100)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeRef.updateTypeClass(TypeTransformer.java:174)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.copyTypes(TypeTransformer.java:311)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.fixTypes(TypeTransformer.java:226)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.analyze(TypeTransformer.java:207)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer.transform(TypeTransformer.java:44)\n\tat com.googlecode.d2j.dex.Dex2jar$2.optimize(Dex2jar.java:162)\n\tat com.googlecode.d2j.dex.Dex2Asm.convertCode(Dex2Asm.java:414)\n\tat com.googlecode.d2j.dex.ExDex2Asm.convertCode(ExDex2Asm.java:42)\n\tat com.googlecode.d2j.dex.Dex2jar$2.convertCode(Dex2jar.java:128)\n\tat com.googlecode.d2j.dex.Dex2Asm.convertMethod(Dex2Asm.java:509)\n\tat com.googlecode.d2j.dex.Dex2Asm.convertClass(Dex2Asm.java:406)\n\tat com.googlecode.d2j.dex.Dex2Asm.convertDex(Dex2Asm.java:422)\n\tat com.googlecode.d2j.dex.Dex2jar.doTranslate(Dex2jar.java:172)\n\tat com.googlecode.d2j.dex.Dex2jar.to(Dex2jar.java:272)\n\tat com.googlecode.dex2jar.tools.Dex2jarCmd.doCommandLine(Dex2jarCmd.java:108)\n\tat com.googlecode.dex2jar.tools.BaseCmd.doMain(BaseCmd.java:288)\n\tat com.googlecode.dex2jar.tools.Dex2jarCmd.main(Dex2jarCmd.java:32)\n");
  }
  
  public void getDefaultPosition()
  {
    throw new Runtime("d2j fail translate: java.lang.RuntimeException: can not merge F and I\n\tat com.googlecode.dex2jar.ir.TypeClass.merge(TypeClass.java:100)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeRef.updateTypeClass(TypeTransformer.java:174)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.copyTypes(TypeTransformer.java:311)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.fixTypes(TypeTransformer.java:226)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer$TypeAnalyze.analyze(TypeTransformer.java:207)\n\tat com.googlecode.dex2jar.ir.ts.TypeTransformer.transform(TypeTransformer.java:44)\n\tat com.googlecode.d2j.dex.Dex2jar$2.optimize(Dex2jar.java:162)\n\tat com.googlecode.d2j.dex.Dex2Asm.convertCode(Dex2Asm.java:414)\n\tat com.googlecode.d2j.dex.ExDex2Asm.convertCode(ExDex2Asm.java:42)\n\tat com.googlecode.d2j.dex.Dex2jar$2.convertCode(Dex2jar.java:128)\n\tat com.googlecode.d2j.dex.Dex2Asm.convertMethod(Dex2Asm.java:509)\n\tat com.googlecode.d2j.dex.Dex2Asm.convertClass(Dex2Asm.java:406)\n\tat com.googlecode.d2j.dex.Dex2Asm.convertDex(Dex2Asm.java:422)\n\tat com.googlecode.d2j.dex.Dex2jar.doTranslate(Dex2jar.java:172)\n\tat com.googlecode.d2j.dex.Dex2jar.to(Dex2jar.java:272)\n\tat com.googlecode.dex2jar.tools.Dex2jarCmd.doCommandLine(Dex2jarCmd.java:108)\n\tat com.googlecode.dex2jar.tools.BaseCmd.doMain(BaseCmd.java:288)\n\tat com.googlecode.dex2jar.tools.Dex2jarCmd.main(Dex2jarCmd.java:32)\n");
  }
  
  public void open(String paramString)
  {
    try
    {
      Intent localIntent;
      if ((paramString.startsWith("http://")) || ((paramString.contains("https")) && (!paramString.contains("play.google.com")) && (!paramString.contains("market.android.com")) && (!paramString.contains("market%3A%2F%2F"))))
      {
        if (!URLUtil.isValidUrl(paramString))
        {
          a.raiseError("Invalid url", "open");
          return;
        }
        localIntent = new Intent(b, IMBrowserActivity.class);
        Log.debug("[InMobi]-[RE]-4.4.1", "IMWebView-> open:" + paramString);
        localIntent.putExtra("extra_url", paramString);
        localIntent.putExtra("extra_browser_type", 100);
        if ((a.getStateVariable() == IMWebView.ViewState.DEFAULT) && (!a.mIsInterstitialAd) && (!a.mWebViewIsBrowserActivity)) {
          localIntent.putExtra("FIRST_INSTANCE", true);
        }
        IMBrowserActivity.setWebViewListener(a.mListener);
      }
      new Thread(new MRAIDBasic.a(this, paramString)).start();
    }
    catch (ActivityNotFoundException paramString)
    {
      try
      {
        b.startActivity(localIntent);
        if (a.mWebViewIsBrowserActivity) {
          return;
        }
        a.fireOnShowAdScreen();
        return;
      }
      catch (Exception paramString)
      {
        a.raiseError("Invalid url", "open");
        return;
      }
      paramString = paramString;
      Log.debug("[InMobi]-[RE]-4.4.1", "Failed to perform mraid Open");
      return;
    }
    catch (Exception paramString)
    {
      a.raiseError("Invalid url", "open");
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.inmobi.re.container.mraidimpl.MRAIDBasic
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */