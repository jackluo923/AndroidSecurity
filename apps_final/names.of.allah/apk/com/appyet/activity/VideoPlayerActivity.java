package com.appyet.activity;

import android.content.Intent;
import android.content.res.Configuration;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.view.Window;
import android.view.WindowManager.LayoutParams;
import android.widget.ProgressBar;
import android.widget.VideoView;
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

public class VideoPlayerActivity
  extends SherlockActivity
  implements ShareActionProvider.OnShareTargetSelectedListener
{
  private ApplicationContext a;
  private String b;
  private String c;
  private VideoView d;
  private ProgressBar e;
  private boolean f = false;
  
  private Intent a()
  {
    try
    {
      if (b.startsWith("http"))
      {
        Intent localIntent = new Intent("android.intent.action.SEND");
        localIntent.setType("text/plain");
        if (c == null)
        {
          localIntent.putExtra("android.intent.extra.SUBJECT", b);
          localIntent.putExtra("android.intent.extra.TEXT", b);
          return localIntent;
        }
        localIntent.putExtra("android.intent.extra.SUBJECT", c);
        localIntent.putExtra("android.intent.extra.TEXT", c + " " + b);
        return localIntent;
      }
    }
    catch (Exception localException)
    {
      d.a(localException);
    }
    return null;
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
    a = ((ApplicationContext)getApplicationContext());
    ar.a(this);
    super.onCreate(paramBundle);
    setContentView(2130903141);
    getSupportActionBar().hide();
    for (;;)
    {
      try
      {
        paramBundle = getIntent().getExtras();
        if (paramBundle != null)
        {
          if (!paramBundle.containsKey("URL")) {
            continue;
          }
          b = paramBundle.getString("URL");
          if (paramBundle.containsKey("TITLE")) {
            c = paramBundle.getString("TITLE");
          }
        }
      }
      catch (Exception paramBundle)
      {
        d.a(paramBundle);
        continue;
      }
      paramBundle = getSupportActionBar();
      paramBundle.setDisplayHomeAsUpEnabled(true);
      paramBundle.setHomeButtonEnabled(true);
      setTitle(c);
      e = ((ProgressBar)findViewById(2131361907));
      d = ((VideoView)findViewById(2131362025));
      e.setVisibility(0);
      d.setVideoPath(b);
      if (Build.VERSION.SDK_INT >= 14) {
        d.setSystemUiVisibility(1);
      }
      d.setMediaController(new af(this, this));
      d.setOnPreparedListener(new ag(this));
      d.setOnCompletionListener(new ah(this));
      d.setOnErrorListener(new ai(this));
      d.requestFocus();
      d.start();
      paramBundle = getWindow().getAttributes();
      flags |= 0x400;
      getWindow().setAttributes(paramBundle);
      getWindow().addFlags(256);
      a.e.a("VideoPlayer");
      return;
      finish();
    }
  }
  
  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    getSupportMenuInflater().inflate(2131689484, paramMenu);
    MenuItem localMenuItem = paramMenu.findItem(2131362035);
    if (b.startsWith("http"))
    {
      ShareActionProvider localShareActionProvider = (ShareActionProvider)localMenuItem.getActionProvider();
      localShareActionProvider.setShareHistoryFileName("share_history.xml");
      localShareActionProvider.setOnShareTargetSelectedListener(this);
      localShareActionProvider.setShareIntent(a());
      localMenuItem.setVisible(true);
    }
    for (;;)
    {
      return super.onCreateOptionsMenu(paramMenu);
      localMenuItem.setVisible(false);
    }
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    switch (paramMenuItem.getItemId())
    {
    }
    for (;;)
    {
      return super.onOptionsItemSelected(paramMenuItem);
      finish();
    }
  }
  
  protected void onPause()
  {
    if (d != null) {
      d.setVisibility(8);
    }
    super.onPause();
  }
  
  public boolean onPrepareOptionsMenu(Menu paramMenu)
  {
    return super.onPrepareOptionsMenu(paramMenu);
  }
  
  protected void onResume()
  {
    if (d != null) {
      d.setVisibility(0);
    }
    super.onResume();
  }
  
  public boolean onShareTargetSelected(ShareActionProvider paramShareActionProvider, Intent paramIntent)
  {
    if ((a.y == 3) || (a.y == 4)) {
      return false;
    }
    a.startActivity(paramIntent);
    a.e.a("Share", paramIntent.getAction(), "Video");
    return true;
  }
}

/* Location:
 * Qualified Name:     com.appyet.activity.VideoPlayerActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */