package com.appyet.activity;

import android.media.MediaPlayer;
import android.media.MediaPlayer.OnPreparedListener;
import android.widget.ProgressBar;
import android.widget.VideoView;

final class ag
  implements MediaPlayer.OnPreparedListener
{
  ag(VideoPlayerActivity paramVideoPlayerActivity) {}
  
  public final void onPrepared(MediaPlayer paramMediaPlayer)
  {
    VideoPlayerActivity.b(a).setVisibility(8);
    VideoPlayerActivity.a(a).start();
    VideoPlayerActivity.c(a);
  }
}

/* Location:
 * Qualified Name:     com.appyet.activity.ag
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */