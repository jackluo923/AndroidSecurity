package com.appyet.manager;

import android.media.MediaPlayer;
import android.widget.SeekBar;
import android.widget.SeekBar.OnSeekBarChangeListener;
import com.appyet.d.d;
import com.appyet.data.FeedItem;

final class az
  implements SeekBar.OnSeekBarChangeListener
{
  az(as paramas) {}
  
  public final void onProgressChanged(SeekBar paramSeekBar, int paramInt, boolean paramBoolean)
  {
    if (paramBoolean) {}
    for (;;)
    {
      try
      {
        if ((as.f(a) != null) && (as.f(a).isPlaying()))
        {
          if (paramInt < 0)
          {
            paramInt = 0;
            int i = paramInt;
            if (paramInt > as.f(a).getDuration()) {
              i = as.f(a).getDuration() - 1;
            }
            if (as.h(a) != null) {
              as.h(a).setEnclosureCurrentPosition(Integer.valueOf(i));
            }
            as.f(a).seekTo(i);
            a.l();
          }
        }
        else {
          return;
        }
      }
      catch (Exception paramSeekBar)
      {
        d.a(paramSeekBar);
        return;
      }
    }
  }
  
  public final void onStartTrackingTouch(SeekBar paramSeekBar) {}
  
  public final void onStopTrackingTouch(SeekBar paramSeekBar) {}
}

/* Location:
 * Qualified Name:     com.appyet.manager.az
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */