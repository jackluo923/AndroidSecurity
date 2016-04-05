package com.google.android.youtube.player;

import android.app.Activity;
import android.os.Bundle;

public class YouTubeBaseActivity
  extends Activity
{
  private YouTubeBaseActivity.a a;
  private YouTubePlayerView b;
  private int c;
  private Bundle d;
  
  final YouTubePlayerView.b a()
  {
    return a;
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    a = new YouTubeBaseActivity.a(this, (byte)0);
    if (paramBundle != null) {}
    for (paramBundle = paramBundle.getBundle("YouTubeBaseActivity.KEY_PLAYER_VIEW_STATE");; paramBundle = null)
    {
      d = paramBundle;
      return;
    }
  }
  
  protected void onDestroy()
  {
    if (b != null) {
      b.a(isFinishing());
    }
    super.onDestroy();
  }
  
  protected void onPause()
  {
    c = 1;
    if (b != null) {
      b.c();
    }
    super.onPause();
  }
  
  protected void onResume()
  {
    super.onResume();
    c = 2;
    if (b != null) {
      b.b();
    }
  }
  
  protected void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    if (b != null) {}
    for (Bundle localBundle = b.e();; localBundle = d)
    {
      paramBundle.putBundle("YouTubeBaseActivity.KEY_PLAYER_VIEW_STATE", localBundle);
      return;
    }
  }
  
  protected void onStart()
  {
    super.onStart();
    c = 1;
    if (b != null) {
      b.a();
    }
  }
  
  protected void onStop()
  {
    c = 0;
    if (b != null) {
      b.d();
    }
    super.onStop();
  }
}

/* Location:
 * Qualified Name:     com.google.android.youtube.player.YouTubeBaseActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */