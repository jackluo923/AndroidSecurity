package com.appyet.activity;

import android.annotation.TargetApi;
import android.content.Intent;
import android.content.res.Configuration;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.support.v4.app.FragmentManager;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.view.Window;
import com.actionbarsherlock.app.ActionBar;
import com.actionbarsherlock.view.Menu;
import com.actionbarsherlock.view.MenuInflater;
import com.actionbarsherlock.view.MenuItem;
import com.actionbarsherlock.widget.ShareActionProvider;
import com.actionbarsherlock.widget.ShareActionProvider.OnShareTargetSelectedListener;
import com.appyet.context.ApplicationContext;
import com.appyet.d.d;
import com.appyet.manager.ap;
import com.appyet.manager.ar;
import com.google.android.youtube.player.YouTubePlayer;
import com.google.android.youtube.player.YouTubePlayer.OnFullscreenListener;
import com.google.android.youtube.player.YouTubePlayer.Provider;
import com.google.android.youtube.player.YouTubePlayerSupportFragment;

@TargetApi(11)
public class YouTubePlayerActivity
  extends au
  implements ShareActionProvider.OnShareTargetSelectedListener, YouTubePlayer.OnFullscreenListener
{
  private YouTubePlayerActivity.ActionBarPaddedFrameLayout a;
  private YouTubePlayerSupportFragment b;
  private String c;
  private String d;
  private ApplicationContext e;
  private YouTubePlayer f;
  
  private Intent b()
  {
    try
    {
      Intent localIntent = new Intent("android.intent.action.SEND");
      localIntent.setType("text/plain");
      if (d == null)
      {
        localIntent.putExtra("android.intent.extra.SUBJECT", "http://www.youtube.com/watch?v=" + c);
        localIntent.putExtra("android.intent.extra.TEXT", "http://www.youtube.com/watch?v=" + c);
        return localIntent;
      }
      localIntent.putExtra("android.intent.extra.SUBJECT", d);
      localIntent.putExtra("android.intent.extra.TEXT", d + " http://www.youtube.com/watch?v=" + c);
      return localIntent;
    }
    catch (Exception localException)
    {
      d.a(localException);
    }
    return null;
  }
  
  protected final YouTubePlayer.Provider a()
  {
    try
    {
      YouTubePlayerSupportFragment localYouTubePlayerSupportFragment = (YouTubePlayerSupportFragment)getSupportFragmentManager().findFragmentById(2131362034);
      return localYouTubePlayerSupportFragment;
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
    if (Build.VERSION.SDK_INT < 14) {
      getSupportActionBar().hide();
    }
    ar.a(this);
    super.onCreate(paramBundle);
    setContentView(2130903145);
    e = ((ApplicationContext)getApplicationContext());
    setRequestedOrientation(6);
    try
    {
      paramBundle = getIntent();
      String str = paramBundle.getData().toString();
      if ((str.startsWith("appyet.youtube:")) && (str.length() > "appyet.youtube:".length())) {
        c = str.substring("appyet.youtube:".length());
      }
      if ((paramBundle.getExtras() != null) && (paramBundle.getExtras().containsKey("TITLE"))) {
        d = paramBundle.getExtras().getString("TITLE");
      }
    }
    catch (Exception paramBundle)
    {
      for (;;)
      {
        try
        {
          a = ((YouTubePlayerActivity.ActionBarPaddedFrameLayout)findViewById(2131362033));
          b = ((YouTubePlayerSupportFragment)getSupportFragmentManager().findFragmentById(2131362034));
          b.initialize("AIzaSyAUXIsUMWrKnCggcFBPkitgjsRsoBktRfI", this);
          b.setRetainInstance(true);
          a.setActionBar(getSupportActionBar());
          e.e.a("YouTubePlayer");
          return;
        }
        catch (Exception paramBundle)
        {
          d.a(paramBundle);
        }
        paramBundle = paramBundle;
        d.a(paramBundle);
      }
    }
    if (d != null) {
      setTitle(d);
    }
  }
  
  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    try
    {
      getSupportMenuInflater().inflate(2131689487, paramMenu);
      ShareActionProvider localShareActionProvider = (ShareActionProvider)paramMenu.findItem(2131362035).getActionProvider();
      localShareActionProvider.setShareHistoryFileName("share_history.xml");
      localShareActionProvider.setOnShareTargetSelectedListener(this);
      localShareActionProvider.setShareIntent(b());
      return super.onCreateOptionsMenu(paramMenu);
    }
    catch (Exception localException)
    {
      for (;;)
      {
        d.a(localException);
      }
    }
  }
  
  public void onFullscreen(boolean paramBoolean)
  {
    boolean bool = false;
    try
    {
      Object localObject = a;
      if (!paramBoolean) {
        bool = true;
      }
      ((YouTubePlayerActivity.ActionBarPaddedFrameLayout)localObject).setEnablePadding(bool);
      localObject = b.getView().getLayoutParams();
      if (paramBoolean)
      {
        width = -1;
        height = -1;
        return;
      }
      width = 0;
      height = -2;
      return;
    }
    catch (Exception localException)
    {
      d.a(localException);
    }
  }
  
  public void onInitializationSuccess(YouTubePlayer.Provider paramProvider, YouTubePlayer paramYouTubePlayer, boolean paramBoolean)
  {
    try
    {
      f = paramYouTubePlayer;
      f.addFullscreenControlFlag(8);
      f.setOnFullscreenListener(this);
      f.setFullscreen(true);
      f.setShowFullscreenButton(false);
      if (!paramBoolean) {
        f.loadVideo(c);
      }
      return;
    }
    catch (Exception paramProvider)
    {
      d.a(paramProvider);
    }
  }
  
  protected void onResume()
  {
    try
    {
      if (f != null)
      {
        f.addFullscreenControlFlag(8);
        f.setOnFullscreenListener(this);
        f.setFullscreen(true);
        f.setShowFullscreenButton(false);
      }
      super.onResume();
      return;
    }
    catch (Exception localException)
    {
      for (;;)
      {
        finish();
      }
    }
  }
  
  public boolean onShareTargetSelected(ShareActionProvider paramShareActionProvider, Intent paramIntent)
  {
    try
    {
      if (e.y != 3)
      {
        if (e.y == 4) {
          return false;
        }
        e.startActivity(paramIntent);
        e.e.a("Share", paramIntent.getAction(), "YouTube");
        return true;
      }
    }
    catch (Exception paramShareActionProvider)
    {
      d.a(paramShareActionProvider);
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.appyet.activity.YouTubePlayerActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */