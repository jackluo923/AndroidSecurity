package com.appyet.c;

import android.content.res.Resources;
import android.text.TextUtils.TruncateAt;
import android.view.View;
import android.view.Window;
import android.webkit.WebChromeClient;
import android.webkit.WebChromeClient.CustomViewCallback;
import android.webkit.WebView;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.actionbarsherlock.app.ActionBar;
import com.actionbarsherlock.app.SherlockFragmentActivity;
import com.appyet.activity.MainActivity;
import com.appyet.context.ApplicationContext;
import com.appyet.d.d;
import com.appyet.manager.bw;
import com.appyet.metadata.MetadataTheme;

final class bh
  extends WebChromeClient
{
  private ApplicationContext b;
  private View c;
  private FrameLayout d;
  private FrameLayout e;
  private WebChromeClient.CustomViewCallback f;
  private MainActivity g;
  private ProgressBar h;
  private final FrameLayout.LayoutParams i = new FrameLayout.LayoutParams(-1, -1, 17);
  
  public bh(be parambe, MainActivity paramMainActivity)
  {
    g = paramMainActivity;
    b = ((ApplicationContext)g.getApplicationContext());
  }
  
  public final View getVideoLoadingProgressView()
  {
    if (h == null) {
      h = new ProgressBar(b);
    }
    return h;
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
      be.a(a).setVisibility(0);
      be.a(a).setProgress(paramInt);
      return;
    }
    be.a(a).setVisibility(8);
    be.a(a).setProgress(0);
  }
  
  public final void onReceivedTitle(WebView paramWebView, String paramString)
  {
    super.onReceivedTitle(paramWebView, paramString);
    if (paramString != null) {
      try
      {
        if ((paramString.length() > 0) && (a.getSherlockActivity() != null))
        {
          a.getSherlockActivity().getSupportActionBar().setTitle(paramString);
          int k = Resources.getSystem().getIdentifier("action_bar_title", "id", "android");
          int j = k;
          if (k == 0) {
            j = 2131361857;
          }
          paramWebView = (TextView)a.getSherlockActivity().getWindow().findViewById(j);
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
    d = ((FrameLayout)g.findViewById(2131361986));
    e = ((FrameLayout)g.findViewById(2131361987));
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
 * Qualified Name:     com.appyet.c.bh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */