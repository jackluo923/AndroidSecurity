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
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.Window;
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
import com.appyet.d.e;
import com.appyet.manager.ap;
import com.appyet.manager.ar;
import com.appyet.manager.bw;
import com.appyet.metadata.Metadata;
import com.appyet.metadata.MetadataApplication;
import com.appyet.metadata.MetadataTheme;
import java.lang.reflect.Method;
import java.net.URLEncoder;
import java.util.Locale;

public class DisqusCommentActivity
  extends SherlockActivity
  implements ShareActionProvider.OnShareTargetSelectedListener
{
  boolean a = true;
  boolean b = false;
  private ApplicationContext c;
  private WebView d;
  private String e = "appyet";
  private String f;
  private String g;
  private String h;
  private ProgressBar i;
  private Drawable j = null;
  private int k;
  
  private Intent a()
  {
    try
    {
      Intent localIntent = new Intent("android.intent.action.SEND");
      localIntent.setType("text/plain");
      if (f == null)
      {
        localIntent.putExtra("android.intent.extra.SUBJECT", g);
        localIntent.putExtra("android.intent.extra.TEXT", g);
        return localIntent;
      }
      localIntent.putExtra("android.intent.extra.SUBJECT", f);
      localIntent.putExtra("android.intent.extra.TEXT", f + " " + g);
      return localIntent;
    }
    catch (Exception localException)
    {
      d.a(localException);
    }
    return null;
  }
  
  private String b()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("<html><head><meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0, user-scalable=no\" /><title>" + TextUtils.htmlEncode(f) + "</title>");
    localStringBuilder.append("</head><body>");
    localStringBuilder.append("<div id=\"disqus_thread\"></div><script type=\"text/javascript\">var disqus_shortname = \"").append(e).append("\";");
    if (!TextUtils.isEmpty(h)) {
      localStringBuilder.append("var disqus_identifier = \"").append(h.replace("\"", "\\\"")).append("\";");
    }
    if (!TextUtils.isEmpty(g)) {
      localStringBuilder.append("var disqus_url = \"").append(g.replace("\"", "\\\"")).append("\";");
    }
    if (!TextUtils.isEmpty(f)) {
      localStringBuilder.append("var disqus_title = \"").append(f.replace("\"", "\\\"")).append("\";");
    }
    localStringBuilder.append("var disqus_config = function () {this.language = \"" + c() + "\";};");
    localStringBuilder.append("(function() {var dsq = document.createElement('script'); dsq.type = 'text/javascript'; dsq.async = true;dsq.src = 'http://' + disqus_shortname + '.disqus.com/embed.js';(document.getElementsByTagName('head')[0] || document.getElementsByTagName('body')[0]).appendChild(dsq);})();</script><noscript>Please enable JavaScript to view comments</a></noscript>");
    localStringBuilder.append("</body></html>");
    return localStringBuilder.toString();
  }
  
  private static String c()
  {
    String str3 = Locale.getDefault().getLanguage();
    String str4 = Locale.getDefault().getCountry();
    String str2 = null;
    String str1 = str2;
    if (str3 != null)
    {
      str1 = str2;
      if (str4 != null)
      {
        str1 = str2;
        if (str3.equalsIgnoreCase("zh"))
        {
          if (!str4.equalsIgnoreCase("HK")) {
            break label83;
          }
          str1 = "TW";
        }
      }
    }
    for (;;)
    {
      str2 = str3;
      if (str1 != null) {
        str2 = str3 + "_" + str1;
      }
      return str2;
      label83:
      str1 = str2;
      if (str4.equalsIgnoreCase("TW")) {
        str1 = "TW";
      }
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
    setTitle(2131230915);
    for (;;)
    {
      try
      {
        int m = Color.parseColor(c.m.a.ActionBarBgColor);
        localObject2 = new ColorDrawable(m);
        if (c.m.a.ActionBarFgColor)
        {
          localObject1 = getResources().getDrawable(2130837618);
          localObject1 = new LayerDrawable(new Drawable[] { localObject2, localObject1 });
          if (j != null) {
            continue;
          }
          getSupportActionBar().setBackgroundDrawable((Drawable)localObject1);
          j = ((Drawable)localObject1);
          k = m;
          i = ((ProgressBar)findViewById(2131362028));
          i.setMax(100);
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
          d.getSettings().setAppCacheEnabled(false);
          d.getSettings().setCacheMode(2);
          if (Build.VERSION.SDK_INT >= 11) {
            d.getSettings().setDisplayZoomControls(false);
          }
          d.getSettings().setUseWideViewPort(true);
          d.getSettings().setUserAgentString(c.v);
          d.setScrollBarStyle(0);
          d.setWebChromeClient(new g(this, this));
          d.setWebViewClient(new h(this));
          d.requestFocus(130);
          d.setOnTouchListener(new f(this));
          localObject2 = null;
          localObject1 = null;
        }
      }
      catch (Exception paramBundle)
      {
        Object localObject2;
        Object localObject1;
        Bundle localBundle;
        d.a(paramBundle);
        return;
      }
      try
      {
        localBundle = getIntent().getExtras();
        if (localBundle != null)
        {
          if (!localBundle.containsKey("ArticleUrl")) {
            break label707;
          }
          localObject1 = localBundle.getString("ArticleUrl");
          if (localBundle.containsKey("ArticleTitle")) {
            f = localBundle.getString("ArticleTitle");
          }
          localObject2 = localObject1;
          if (localBundle.containsKey("DisQusShortName"))
          {
            e = localBundle.getString("DisQusShortName");
            localObject2 = localObject1;
          }
        }
        h = e.a((String)localObject2);
        g = ("http://www.appyet.com/Handler/Disqus.ashx?guid=" + c.q.MetadataApplication.Guid + "&id=" + h + "&shortname=" + e + "&locale=" + c() + "&title=" + URLEncoder.encode(f, "UTF-8") + "&url=" + URLEncoder.encode((String)localObject2, "UTF-8"));
      }
      catch (Exception localException)
      {
        d.a(localException);
        continue;
        d.loadDataWithBaseURL("http://base", b(), "text/html", "UTF-8", "http://comment");
        continue;
      }
      if (paramBundle == null) {
        break;
      }
      d.restoreState(paramBundle);
      c.e.a("DisQusComment");
      return;
      localObject1 = getResources().getDrawable(2130837619);
      continue;
      localObject2 = new TransitionDrawable(new Drawable[] { j, localObject1 });
      getSupportActionBar().setBackgroundDrawable((Drawable)localObject2);
      ((TransitionDrawable)localObject2).startTransition(200);
      continue;
      label707:
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
        int m = paramMenuItem.getItemId();
        switch (m)
        {
        }
      }
      catch (Exception localException1)
      {
        d.a(localException1);
        continue;
        Intent localIntent = new Intent("android.intent.action.VIEW");
        localIntent.setData(Uri.parse(g));
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
          ((ClipboardManager)c.getSystemService("clipboard")).setText(g);
          Toast.makeText(c, String.format(getString(2131230850), new Object[] { g.toString() }), 1).show();
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
 * Qualified Name:     com.appyet.activity.DisqusCommentActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */