package com.appyet.activity;

import android.app.Activity;
import android.content.res.Configuration;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.Window;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.widget.Button;
import android.widget.TextView;
import com.appyet.context.ApplicationContext;
import com.appyet.d.d;
import com.appyet.metadata.Metadata;
import com.appyet.metadata.MetadataSetting;

public class WhatsNewActivity
  extends Activity
{
  private ApplicationContext a;
  private WebView b;
  
  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
    com.appyet.manager.ar.a(this);
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    if (Build.VERSION.SDK_INT >= 16) {
      getWindow().setFlags(16777216, 16777216);
    }
    a = ((ApplicationContext)getApplicationContext());
    super.onCreate(paramBundle);
    setContentView(2130903144);
    try
    {
      ((TextView)findViewById(2131361908)).setText(getString(2131230947));
      ((Button)findViewById(2131362032)).setOnClickListener(new ap(this));
      b = ((WebView)findViewById(2131362027));
      if (Build.VERSION.SDK_INT >= 7) {
        b.getSettings().setDomStorageEnabled(true);
      }
      b.getSettings().setJavaScriptEnabled(true);
      b.getSettings().setJavaScriptCanOpenWindowsAutomatically(true);
      b.getSettings().setSupportMultipleWindows(false);
      b.getSettings().setSupportZoom(true);
      b.getSettings().setBuiltInZoomControls(true);
      if (Build.VERSION.SDK_INT >= 11) {
        b.getSettings().setDisplayZoomControls(false);
      }
      b.getSettings().setUseWideViewPort(true);
      b.getSettings().setUserAgentString(a.v);
      b.setScrollBarStyle(0);
      b.setWebViewClient(new ar(this));
      b.requestFocus(130);
      b.setOnTouchListener(new aq(this));
      b.loadDataWithBaseURL(null, a.q.MetadataSetting.WhatsNew, "text/html", "UTF-8", null);
      a.e.a("WhatsNew");
      return;
    }
    catch (Exception paramBundle)
    {
      d.a(paramBundle);
    }
  }
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if ((paramInt == 4) && (b.canGoBack()))
    {
      b.goBack();
      return true;
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }
  
  public void onPause()
  {
    super.onPause();
  }
  
  protected void onResume()
  {
    com.appyet.manager.ar.a(this);
    super.onResume();
  }
}

/* Location:
 * Qualified Name:     com.appyet.activity.WhatsNewActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */