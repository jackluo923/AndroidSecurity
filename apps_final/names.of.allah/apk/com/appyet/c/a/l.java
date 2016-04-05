package com.appyet.c.a;

import android.content.res.Configuration;
import android.content.res.Resources;
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
import android.widget.TextView;
import com.actionbarsherlock.app.SherlockFragment;
import com.appyet.activity.MainActivity;
import com.appyet.context.ApplicationContext;
import com.appyet.d.d;
import com.appyet.f.h;
import com.appyet.manager.ar;
import com.appyet.manager.bw;
import com.appyet.metadata.MetadataTheme;
import java.lang.reflect.Method;

public final class l
  extends SherlockFragment
{
  private int a;
  private ApplicationContext b;
  private WebView c;
  private TextView d;
  private FrameLayout e;
  private ProgressBar f;
  private String g = "http://APPYET_BASE";
  private String h = "IMG_APPYET";
  private String i = "COMMENT_APPYET";
  private String j = null;
  private Long k;
  private n l;
  
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
  
  /* Error */
  private String b()
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 91	com/appyet/c/a/l:getResources	()Landroid/content/res/Resources;
    //   4: invokevirtual 97	android/content/res/Resources:getAssets	()Landroid/content/res/AssetManager;
    //   7: ldc 99
    //   9: invokevirtual 105	android/content/res/AssetManager:open	(Ljava/lang/String;)Ljava/io/InputStream;
    //   12: astore_2
    //   13: new 107	java/io/ByteArrayOutputStream
    //   16: dup
    //   17: invokespecial 108	java/io/ByteArrayOutputStream:<init>	()V
    //   20: astore_1
    //   21: aload_2
    //   22: invokevirtual 114	java/io/InputStream:read	()I
    //   25: istore_3
    //   26: iload_3
    //   27: iconst_m1
    //   28: if_icmpeq +23 -> 51
    //   31: aload_1
    //   32: iload_3
    //   33: invokevirtual 118	java/io/ByteArrayOutputStream:write	(I)V
    //   36: aload_2
    //   37: invokevirtual 114	java/io/InputStream:read	()I
    //   40: istore_3
    //   41: goto -15 -> 26
    //   44: astore_1
    //   45: aload_1
    //   46: invokevirtual 119	java/io/IOException:printStackTrace	()V
    //   49: aconst_null
    //   50: areturn
    //   51: aload_2
    //   52: invokevirtual 122	java/io/InputStream:close	()V
    //   55: aload_1
    //   56: invokevirtual 125	java/io/ByteArrayOutputStream:toString	()Ljava/lang/String;
    //   59: areturn
    //   60: astore_2
    //   61: aload_2
    //   62: invokevirtual 119	java/io/IOException:printStackTrace	()V
    //   65: goto -10 -> 55
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	68	0	this	l
    //   20	12	1	localByteArrayOutputStream	java.io.ByteArrayOutputStream
    //   44	12	1	localIOException1	java.io.IOException
    //   12	40	2	localInputStream	java.io.InputStream
    //   60	2	2	localIOException2	java.io.IOException
    //   25	16	3	m	int
    // Exception table:
    //   from	to	target	type
    //   0	13	44	java/io/IOException
    //   21	26	60	java/io/IOException
    //   31	41	60	java/io/IOException
    //   51	55	60	java/io/IOException
  }
  
  public final void a(int paramInt)
  {
    a = paramInt;
  }
  
  public final void a(Long paramLong)
  {
    k = paramLong;
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
    j = b();
    super.onCreate(paramBundle);
  }
  
  public final View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    return paramLayoutInflater.inflate(2130903114, null);
  }
  
  public final void onDestroy()
  {
    super.onDestroy();
  }
  
  public final void onPause()
  {
    try
    {
      if ((l != null) && ((l.d() == h.a) || (l.d() == h.b)))
      {
        l.e();
        f.setVisibility(8);
      }
    }
    catch (Exception localException)
    {
      for (;;)
      {
        d.a(localException);
      }
    }
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
        d = ((TextView)localView.findViewById(2131361959));
        d.setVisibility(8);
        if (c != null)
        {
          a();
          c.stopLoading();
          c.destroy();
        }
        c = new WebView(getSherlockActivity());
        if (!b.m.a.PrimaryBgColor.equals("DARK")) {
          continue;
        }
        c.setBackgroundColor(getResources().getColor(2131296317));
        d.setTextColor(getResources().getColor(2131296319));
        f = ((ProgressBar)localView.findViewById(2131361907));
        c.setFocusableInTouchMode(true);
        c.setFocusable(true);
        c.setVerticalScrollBarEnabled(false);
        c.setOnTouchListener(new m(this));
        if (Build.VERSION.SDK_INT >= 7) {
          c.getSettings().setDomStorageEnabled(true);
        }
        c.setHorizontalScrollBarEnabled(false);
        c.setWebChromeClient(new p(this, (MainActivity)getActivity()));
        c.setWebViewClient(new q(this, (MainActivity)getActivity()));
        c.setScrollBarStyle(0);
        c.addJavascriptInterface(new o(this, getActivity()), "AppYet");
        WebSettings localWebSettings = c.getSettings();
        localWebSettings.setSaveFormData(false);
        localWebSettings.setSavePassword(false);
        localWebSettings.setUserAgentString(b.v);
        localWebSettings.setJavaScriptEnabled(true);
        localWebSettings.setPluginState(WebSettings.PluginState.OFF);
        localWebSettings.setJavaScriptCanOpenWindowsAutomatically(false);
        localWebSettings.setSupportMultipleWindows(false);
        localWebSettings.setSupportZoom(false);
        localWebSettings.setUseWideViewPort(false);
        localWebSettings.setLoadWithOverviewMode(false);
        localWebSettings.setGeolocationEnabled(false);
        localWebSettings.setCacheMode(-1);
        e = ((FrameLayout)paramView.findViewById(2131361928));
        e.removeAllViews();
        e.addView(c);
        l = new n(this, c, localView);
        l.a(new Void[0]);
      }
      catch (Exception localException)
      {
        d.a(localException);
        continue;
      }
      super.onViewCreated(paramView, paramBundle);
      return;
      c.setBackgroundColor(getResources().getColor(2131296316));
      d.setTextColor(getResources().getColor(2131296318));
    }
  }
}

/* Location:
 * Qualified Name:     com.appyet.c.a.l
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */