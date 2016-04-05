package com.appyet.c;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebSettings;
import android.webkit.WebSettings.PluginState;
import android.webkit.WebView;
import android.widget.FrameLayout;
import android.widget.ProgressBar;
import com.actionbarsherlock.app.SherlockFragment;
import com.appyet.activity.MainActivity;
import com.appyet.context.ApplicationContext;
import com.appyet.context.f;
import com.appyet.d.d;
import com.appyet.data.Feed;
import com.appyet.data.FeedItem;
import com.appyet.f.aa;
import com.appyet.manager.ar;
import com.appyet.manager.bw;
import com.appyet.metadata.MetadataModuleFeed;
import com.appyet.metadata.MetadataTheme;
import java.lang.reflect.Method;
import java.util.Hashtable;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class k
  extends SherlockFragment
{
  private int a;
  private ApplicationContext b;
  private WebView c;
  private FrameLayout d;
  private ProgressBar e;
  private String f = "http://APPYET_BASE";
  private String g = "IMG_APPYET";
  private String h = "COMMENT_APPYET";
  private MetadataModuleFeed i;
  private FeedItem j;
  private Feed k;
  
  public static String a(String paramString1, String paramString2)
  {
    StringBuffer localStringBuffer;
    try
    {
      localStringBuffer = new StringBuffer();
      Matcher localMatcher = Pattern.compile("<img[^>]+src\\s*=\\s*['\"]([^'\"]+)['\"][^>]*>").matcher(paramString1);
      while (localMatcher.find())
      {
        String str1 = localMatcher.group(0);
        String str2 = localMatcher.group(1);
        localMatcher.appendReplacement(localStringBuffer, "<a href=\"" + paramString2 + "///" + str2 + "\">" + str1 + "</a><br>");
      }
      localMatcher.appendTail(localStringBuffer);
    }
    catch (Exception paramString2)
    {
      d.a(paramString2);
      return paramString1;
    }
    paramString2 = localStringBuffer.toString();
    return paramString2;
  }
  
  private void a()
  {
    if (c != null)
    {
      if (Build.VERSION.SDK_INT >= 11) {
        c.onPause();
      }
    }
    else {
      return;
    }
    try
    {
      Class.forName("android.webkit.WebView").getMethod("onPause", null).invoke(c, null);
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
  
  public static boolean a(Context paramContext, String paramString)
  {
    boolean bool = false;
    paramString = new Intent("android.intent.action.VIEW", Uri.parse(paramString));
    if (paramContext.getPackageManager().resolveActivity(paramString, 0) != null) {
      bool = true;
    }
    return bool;
  }
  
  public final void a(int paramInt)
  {
    a = paramInt;
  }
  
  public final void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    if (paramBundle != null) {}
    try
    {
      if (c != null) {
        c.restoreState(paramBundle);
      }
      return;
    }
    catch (Exception paramBundle)
    {
      d.a(paramBundle);
    }
  }
  
  public final void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
  }
  
  public final void onCreate(Bundle paramBundle)
  {
    if ((paramBundle != null) && (paramBundle.containsKey("position"))) {
      a = paramBundle.getInt("position", 0);
    }
    b = ((ApplicationContext)getActivity().getApplicationContext());
    super.onCreate(paramBundle);
  }
  
  public final View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    return paramLayoutInflater.inflate(2130903103, null);
  }
  
  public final void onDestroy()
  {
    super.onDestroy();
  }
  
  public final void onPause()
  {
    a();
    super.onPause();
  }
  
  public final void onResume()
  {
    ar.a(getActivity());
    if (c != null)
    {
      if (Build.VERSION.SDK_INT < 11) {
        break label34;
      }
      c.onResume();
    }
    for (;;)
    {
      super.onResume();
      return;
      try
      {
        label34:
        Class.forName("android.webkit.WebView").getMethod("onResume", null).invoke(c, null);
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
      }
    }
  }
  
  public final void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putInt("position", a);
    if (c != null) {
      c.saveState(paramBundle);
    }
  }
  
  public final void onViewCreated(View paramView, Bundle paramBundle)
  {
    for (;;)
    {
      try
      {
        View localView = getView();
        if (c != null)
        {
          a();
          c.stopLoading();
          c.destroy();
        }
        j = ((FeedItem)b.n.b.get(a));
        Object localObject = aa.a(j.getLink());
        if (localObject != null) {
          f = ((String)localObject);
        }
        k = ((Feed)b.n.c.get(j.getFeed().getFeedId()));
        i = ((MetadataModuleFeed)b.n.d.get(j.getFeed().getFeedId()));
        c = new WebView(getSherlockActivity());
        if (!b.m.a.PrimaryBgColor.equals("DARK")) {
          continue;
        }
        c.setBackgroundColor(getResources().getColor(2131296317));
        e = ((ProgressBar)localView.findViewById(2131361907));
        c.setFocusableInTouchMode(true);
        c.setFocusable(true);
        c.setVerticalScrollBarEnabled(false);
        c.setOnTouchListener(new l(this));
        if (Build.VERSION.SDK_INT >= 7) {
          c.getSettings().setDomStorageEnabled(true);
        }
        c.setHorizontalScrollBarEnabled(false);
        c.setWebChromeClient(new p(this, (MainActivity)getActivity()));
        c.setWebViewClient(new q(this, (MainActivity)getActivity()));
        c.setScrollBarStyle(0);
        c.addJavascriptInterface(new o(this, getActivity()), "AppYet");
        localObject = c.getSettings();
        ((WebSettings)localObject).setSaveFormData(false);
        ((WebSettings)localObject).setSavePassword(false);
        ((WebSettings)localObject).setUserAgentString(b.v);
        ((WebSettings)localObject).setJavaScriptEnabled(true);
        ((WebSettings)localObject).setPluginState(WebSettings.PluginState.OFF);
        ((WebSettings)localObject).setJavaScriptCanOpenWindowsAutomatically(false);
        ((WebSettings)localObject).setSupportMultipleWindows(false);
        ((WebSettings)localObject).setSupportZoom(false);
        ((WebSettings)localObject).setUseWideViewPort(false);
        ((WebSettings)localObject).setLoadWithOverviewMode(false);
        ((WebSettings)localObject).setGeolocationEnabled(false);
        ((WebSettings)localObject).setCacheMode(-1);
        d = ((FrameLayout)paramView.findViewById(2131361928));
        d.removeAllViews();
        d.addView(c);
        new m(this, c, localView).a(new Void[0]);
      }
      catch (Exception localException)
      {
        d.a(localException);
        continue;
      }
      super.onViewCreated(paramView, paramBundle);
      return;
      c.setBackgroundColor(getResources().getColor(2131296316));
    }
  }
}

/* Location:
 * Qualified Name:     com.appyet.c.k
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */