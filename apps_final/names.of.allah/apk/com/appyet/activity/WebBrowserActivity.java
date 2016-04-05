package com.appyet.activity;

import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.TransitionDrawable;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.text.ClipboardManager;
import android.view.KeyEvent;
import android.view.View;
import android.view.Window;
import android.webkit.ValueCallback;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.widget.ProgressBar;
import android.widget.Toast;
import com.actionbarsherlock.app.ActionBar;
import com.actionbarsherlock.app.SherlockActivity;
import com.actionbarsherlock.view.Menu;
import com.actionbarsherlock.view.MenuInflater;
import com.actionbarsherlock.view.MenuItem;
import com.actionbarsherlock.widget.ShareActionProvider;
import com.actionbarsherlock.widget.ShareActionProvider.OnShareTargetSelectedListener;
import com.appyet.context.ApplicationContext;
import com.appyet.d.d;
import com.appyet.manager.ap;
import com.appyet.manager.ar;
import com.appyet.manager.bw;
import com.appyet.metadata.MetadataTheme;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.Map;

public class WebBrowserActivity
  extends SherlockActivity
  implements ShareActionProvider.OnShareTargetSelectedListener
{
  boolean a = true;
  boolean b = false;
  private ApplicationContext c;
  private WebView d;
  private String e;
  private String f;
  private ProgressBar g;
  private ValueCallback<Uri> h;
  private Drawable i = null;
  private int j;
  
  private Intent a()
  {
    try
    {
      Intent localIntent = new Intent("android.intent.action.SEND");
      localIntent.setType("text/plain");
      if (e == null)
      {
        localIntent.putExtra("android.intent.extra.SUBJECT", f);
        localIntent.putExtra("android.intent.extra.TEXT", f);
        return localIntent;
      }
      localIntent.putExtra("android.intent.extra.SUBJECT", e);
      localIntent.putExtra("android.intent.extra.TEXT", e + " " + f);
      return localIntent;
    }
    catch (Exception localException)
    {
      d.a(localException);
    }
    return null;
  }
  
  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    if ((paramInt1 != 1) || (h == null)) {
      return;
    }
    if ((paramIntent == null) || (paramInt2 != -1)) {}
    for (paramIntent = null;; paramIntent = paramIntent.getData())
    {
      h.onReceiveValue(paramIntent);
      h = null;
      return;
    }
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
    ar.a(this);
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    if (Build.VERSION.SDK_INT >= 16) {
      getWindow().setFlags(16777216, 16777216);
    }
    c = ((ApplicationContext)getApplicationContext());
    c.m.a(this);
    super.onCreate(paramBundle);
    setContentView(2130903142);
    for (;;)
    {
      try
      {
        getWindow().getDecorView().findViewById(16908290);
        int k = Color.parseColor(c.m.a.ActionBarBgColor);
        localObject2 = new ColorDrawable(k);
        if (c.m.a.ActionBarFgColor)
        {
          localObject1 = getResources().getDrawable(2130837618);
          localObject1 = new LayerDrawable(new Drawable[] { localObject2, localObject1 });
          if (i != null) {
            continue;
          }
          getSupportActionBar().setBackgroundDrawable((Drawable)localObject1);
          i = ((Drawable)localObject1);
          j = k;
          g = ((ProgressBar)findViewById(2131362028));
          g.setMax(100);
          localObject1 = getSupportActionBar();
          ((ActionBar)localObject1).setDisplayHomeAsUpEnabled(true);
          ((ActionBar)localObject1).setHomeButtonEnabled(true);
          d = ((WebView)findViewById(2131362027));
          if (Build.VERSION.SDK_INT >= 7) {
            d.getSettings().setDomStorageEnabled(true);
          }
          d.getSettings().setJavaScriptEnabled(true);
          d.getSettings().setJavaScriptCanOpenWindowsAutomatically(true);
          d.getSettings().setSupportMultipleWindows(false);
          d.getSettings().setSupportZoom(true);
          d.getSettings().setBuiltInZoomControls(true);
          if (Build.VERSION.SDK_INT >= 11) {
            d.getSettings().setDisplayZoomControls(false);
          }
          d.getSettings().setUseWideViewPort(true);
          d.getSettings().setUserAgentString(c.v);
          d.setScrollBarStyle(0);
          d.setWebChromeClient(new an(this, this));
          d.setWebViewClient(new ao(this));
          d.requestFocus(130);
          d.setOnTouchListener(new am(this));
        }
      }
      catch (Exception paramBundle)
      {
        Object localObject2;
        Object localObject1;
        d.a(paramBundle);
        return;
      }
      try
      {
        localObject1 = getIntent().getExtras();
        if (localObject1 != null)
        {
          if (!((Bundle)localObject1).containsKey("URL")) {
            break label543;
          }
          f = ((Bundle)localObject1).getString("URL");
          if (((Bundle)localObject1).containsKey("TITLE")) {
            e = ((Bundle)localObject1).getString("TITLE");
          }
        }
      }
      catch (Exception localException)
      {
        d.a(localException);
        continue;
        paramBundle = new HashMap();
        paramBundle.put("Accept-Language", ar.c(c));
        d.loadUrl(f, paramBundle);
        continue;
      }
      if (paramBundle == null) {
        break;
      }
      d.restoreState(paramBundle);
      c.e.a("WebBrowser");
      return;
      localObject1 = getResources().getDrawable(2130837619);
      continue;
      localObject2 = new TransitionDrawable(new Drawable[] { i, localObject1 });
      getSupportActionBar().setBackgroundDrawable((Drawable)localObject2);
      ((TransitionDrawable)localObject2).startTransition(200);
      continue;
      label543:
      finish();
    }
  }
  
  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    getSupportMenuInflater().inflate(2131689486, paramMenu);
    Object localObject = (ShareActionProvider)paramMenu.findItem(2131362035).getActionProvider();
    ((ShareActionProvider)localObject).setShareHistoryFileName("share_history.xml");
    ((ShareActionProvider)localObject).setOnShareTargetSelectedListener(this);
    ((ShareActionProvider)localObject).setShareIntent(a());
    localObject = paramMenu.findItem(2131362037);
    MenuItem localMenuItem1 = paramMenu.findItem(2131362071);
    MenuItem localMenuItem2 = paramMenu.findItem(2131362073);
    MenuItem localMenuItem3 = paramMenu.findItem(2131362072);
    if (c.m.a.PrimaryBgColor.equals("DARK"))
    {
      ((MenuItem)localObject).setIcon(2130837703);
      localMenuItem1.setIcon(2130837701);
      localMenuItem2.setIcon(2130837702);
      localMenuItem3.setIcon(2130837700);
    }
    for (;;)
    {
      return super.onCreateOptionsMenu(paramMenu);
      ((MenuItem)localObject).setIcon(2130837721);
      localMenuItem1.setIcon(2130837719);
      localMenuItem2.setIcon(2130837720);
      localMenuItem3.setIcon(2130837718);
    }
  }
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if ((paramInt == 4) && (d.canGoBack()))
    {
      d.goBack();
      return true;
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    for (;;)
    {
      try
      {
        int k = paramMenuItem.getItemId();
        switch (k)
        {
        }
      }
      catch (Exception localException1)
      {
        d.a(localException1);
        continue;
        Intent localIntent = new Intent("android.intent.action.VIEW");
        localIntent.setData(Uri.parse(d.getUrl()));
        startActivity(localIntent);
        continue;
        d.reload();
        supportInvalidateOptionsMenu();
        continue;
        d.stopLoading();
        supportInvalidateOptionsMenu();
        continue;
        d.goForward();
        supportInvalidateOptionsMenu();
        continue;
        d.goBack();
        supportInvalidateOptionsMenu();
        continue;
        try
        {
          ((ClipboardManager)c.getSystemService("clipboard")).setText(d.getUrl().toString());
          Toast.makeText(c, String.format(getString(2131230850), new Object[] { d.getUrl().toString() }), 1).show();
        }
        catch (Exception localException2)
        {
          d.a(localException2);
        }
        catch (Error localError)
        {
          d.a(localError);
        }
        continue;
      }
      return super.onOptionsItemSelected(paramMenuItem);
      finish();
    }
  }
  
  public void onPause()
  {
    super.onPause();
    if (d != null)
    {
      if (Build.VERSION.SDK_INT >= 11) {
        d.onPause();
      }
    }
    else {
      return;
    }
    try
    {
      Class.forName("android.webkit.WebView").getMethod("onPause", null).invoke(d, null);
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
  
  public boolean onPrepareOptionsMenu(Menu paramMenu)
  {
    if (d.canGoBack())
    {
      paramMenu.findItem(2131362072).setVisible(true);
      if (!d.canGoForward()) {
        break label123;
      }
      paramMenu.findItem(2131362073).setVisible(true);
      label52:
      if ((!a) || (b)) {
        break label142;
      }
      paramMenu.findItem(2131362071).setVisible(false);
      paramMenu.findItem(2131362037).setVisible(true);
    }
    for (;;)
    {
      return super.onPrepareOptionsMenu(paramMenu);
      paramMenu.findItem(2131362072).setVisible(false);
      break;
      label123:
      paramMenu.findItem(2131362073).setVisible(false);
      break label52;
      label142:
      paramMenu.findItem(2131362071).setVisible(true);
      paramMenu.findItem(2131362037).setVisible(false);
    }
  }
  
  protected void onResume()
  {
    ar.a(this);
    if (d != null)
    {
      if (Build.VERSION.SDK_INT < 11) {
        break label31;
      }
      d.onResume();
    }
    for (;;)
    {
      super.onResume();
      return;
      try
      {
        label31:
        Class.forName("android.webkit.WebView").getMethod("onResume", null).invoke(d, null);
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
      }
    }
  }
  
  protected void onSaveInstanceState(Bundle paramBundle)
  {
    d.saveState(paramBundle);
  }
  
  public boolean onShareTargetSelected(ShareActionProvider paramShareActionProvider, Intent paramIntent)
  {
    if ((c.y == 3) || (c.y == 4)) {
      return false;
    }
    c.startActivity(paramIntent);
    c.e.a("Share", paramIntent.getAction(), "WebLink");
    return true;
  }
}

/* Location:
 * Qualified Name:     com.appyet.activity.WebBrowserActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */