package com.appyet.manager;

import android.media.MediaPlayer;
import android.media.MediaPlayer.OnCompletionListener;
import com.appyet.d.d;
import com.appyet.data.FeedItem;

final class bd
  implements MediaPlayer.OnCompletionListener
{
  bd(as paramas) {}
  
  public final void onCompletion(MediaPlayer paramMediaPlayer)
  {
    try
    {
      a.h();
      as.p(a);
      try
      {
        if ((as.f(a) != null) && (as.h(a) != null))
        {
          int i = as.f(a).getDuration() - 1;
          new bi(a, i).a(new Void[0]);
          as.h(a).setEnclosureCurrentPosition(Integer.valueOf(i));
        }
        return;
      }
      catch (Exception paramMediaPlayer)
      {
        d.a(paramMediaPlayer);
        return;
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
 * Qualified Name:     com.appyet.manager.bd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */