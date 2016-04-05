package com.appyet.c.a;

import android.view.View;
import android.view.Window;
import android.webkit.WebChromeClient;
import android.webkit.WebChromeClient.CustomViewCallback;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ProgressBar;
import com.actionbarsherlock.app.ActionBar;
import com.appyet.activity.MainActivity;
import com.appyet.context.ApplicationContext;

final class p
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
  
  public p(l paraml, MainActivity paramMainActivity)
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
 * Qualified Name:     com.appyet.c.a.p
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */