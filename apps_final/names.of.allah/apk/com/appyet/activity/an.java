package com.appyet.activity;

import android.content.res.Resources;
import android.os.Message;
import android.text.TextUtils.TruncateAt;
import android.view.View;
import android.view.Window;
import android.webkit.WebChromeClient;
import android.webkit.WebChromeClient.CustomViewCallback;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebView.WebViewTransport;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.actionbarsherlock.app.ActionBar;
import com.appyet.context.ApplicationContext;
import com.appyet.d.d;
import com.appyet.manager.bw;
import com.appyet.metadata.MetadataTheme;

final class an
  extends WebChromeClient
{
  private ApplicationContext b;
  private View c;
  private FrameLayout d;
  private FrameLayout e;
  private WebChromeClient.CustomViewCallback f;
  private WebBrowserActivity g;
  private ProgressBar h;
  private final FrameLayout.LayoutParams i = new FrameLayout.LayoutParams(-1, -1, 17);
  
  public an(WebBrowserActivity paramWebBrowserActivity1, WebBrowserActivity paramWebBrowserActivity2)
  {
    g = paramWebBrowserActivity2;
    b = ((ApplicationContext)g.getApplicationContext());
  }
  
  public final View getVideoLoadingProgressView()
  {
    if (h == null) {
      h = new ProgressBar(b);
    }
    return h;
  }
  
  public final boolean onCreateWindow(WebView paramWebView, boolean paramBoolean1, boolean paramBoolean2, Message paramMessage)
  {
    paramWebView = new WebView(paramWebView.getContext());
    paramWebView.getSettings().setJavaScriptEnabled(true);
    paramWebView.setWebChromeClient(this);
    paramWebView.getSettings().setJavaScriptCanOpenWindowsAutomatically(true);
    ((WebView.WebViewTransport)obj).setWebView(paramWebView);
    paramMessage.sendToTarget();
    return true;
  }
  
  public final void onHideCustomView()
  {
    if (c == null) {
      return;
    }
    c.setVisibility(8);
    e.removeView(c);
    c = null;
    e.setVisibility(8);
    f.onCustomViewHidden();
    d.setVisibility(0);
    g.getSupportActionBar().show();
    g.setRequestedOrientation(-1);
    g.getWindow().clearFlags(1024);
  }
  
  public final void onProgressChanged(WebView paramWebView, int paramInt)
  {
    if (paramInt < 100)
    {
      WebBrowserActivity.a(a).setVisibility(0);
      WebBrowserActivity.a(a).setProgress(paramInt);
      return;
    }
    WebBrowserActivity.a(a).setVisibility(8);
    WebBrowserActivity.a(a).setProgress(0);
  }
  
  public final void onReceivedTitle(WebView paramWebView, String paramString)
  {
    super.onReceivedTitle(paramWebView, paramString);
    if (paramString != null) {
      try
      {
        if (paramString.length() > 0)
        {
          a.setTitle(paramString);
          int k = Resources.getSystem().getIdentifier("action_bar_title", "id", "android");
          int j = k;
          if (k == 0) {
            j = 2131361857;
          }
          paramWebView = (TextView)a.getWindow().findViewById(j);
          paramWebView.setEllipsize(TextUtils.TruncateAt.MARQUEE);
          paramWebView.setSelected(true);
          paramWebView.setMarqueeRepeatLimit(-1);
          if (b.m.a.PrimaryBgColor.equals("DARK"))
          {
            paramWebView.setTextColor(a.getResources().getColor(2131296333));
            return;
          }
          paramWebView.setTextColor(a.getResources().getColor(2131296335));
          return;
        }
      }
      catch (Exception paramWebView)
      {
        d.a(paramWebView);
      }
    }
  }
  
  public final void onShowCustomView(View paramView, WebChromeClient.CustomViewCallback paramCustomViewCallback)
  {
    if (c != null)
    {
      paramCustomViewCallback.onCustomViewHidden();
      return;
    }
    d = ((FrameLayout)g.findViewById(2131362026));
    e = ((FrameLayout)g.findViewById(2131362029));
    e.addView(paramView, i);
    c = paramView;
    f = paramCustomViewCallback;
    d.setVisibility(8);
    g.getSupportActionBar().hide();
    g.setRequestedOrientation(0);
    g.getWindow().addFlags(1024);
    e.setVisibility(0);
    e.bringToFront();
  }
}

/* Location:
 * Qualified Name:     com.appyet.activity.an
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */