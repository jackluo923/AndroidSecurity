package com.appyet.activity;

import android.content.Context;
import android.os.Build.VERSION;
import android.widget.MediaController;
import android.widget.VideoView;
import com.actionbarsherlock.app.ActionBar;

final class af
  extends MediaController
{
  af(VideoPlayerActivity paramVideoPlayerActivity, Context paramContext)
  {
    super(paramContext);
  }
  
  public final void hide()
  {
    a.getSupportActionBar().hide();
    if (Build.VERSION.SDK_INT >= 14) {
      VideoPlayerActivity.a(a).setSystemUiVisibility(1);
    }
    super.hide();
  }
  
  public final void show()
  {
    a.getSupportActionBar().show();
    if (Build.VERSION.SDK_INT >= 14) {
      VideoPlayerActivity.a(a).setSystemUiVisibility(0);
    }
    super.show();
  }
}

/* Location:
 * Qualified Name:     com.appyet.activity.af
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */