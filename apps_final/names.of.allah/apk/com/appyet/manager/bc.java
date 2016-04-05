package com.appyet.manager;

import android.media.MediaPlayer;
import android.media.MediaPlayer.OnBufferingUpdateListener;
import android.widget.SeekBar;
import com.appyet.activity.MediaPlayerActivity;
import com.appyet.d.d;

final class bc
  implements MediaPlayer.OnBufferingUpdateListener
{
  bc(as paramas) {}
  
  public final void onBufferingUpdate(MediaPlayer paramMediaPlayer, int paramInt)
  {
    try
    {
      if ((as.j(a) != null) && (as.f(a) != null) && (as.f(a).isPlaying()))
      {
        paramInt = as.f(a).getDuration() * paramInt / 100;
        ((SeekBar)as.j(a).findViewById(2131361991)).setSecondaryProgress(paramInt);
      }
      return;
    }
    catch (Exception paramMediaPlayer)
    {
      d.a(paramMediaPlayer);
    }
  }
}

/* Location:
 * Qualified Name:     com.appyet.manager.bc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */