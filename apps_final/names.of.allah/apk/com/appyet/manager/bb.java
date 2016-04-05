package com.appyet.manager;

import android.content.Intent;
import android.media.MediaPlayer;
import android.media.MediaPlayer.OnPreparedListener;
import android.widget.ImageButton;
import com.appyet.activity.MediaPlayerActivity;
import com.appyet.context.ApplicationContext;
import com.appyet.data.DatabaseHelper;
import com.appyet.data.FeedItem;
import com.appyet.service.MediaService;
import com.j256.ormlite.misc.TransactionManager;

final class bb
  implements MediaPlayer.OnPreparedListener
{
  bb(as paramas) {}
  
  public final void onPrepared(MediaPlayer paramMediaPlayer)
  {
    for (;;)
    {
      try
      {
        as.e(a);
        Long localLong;
        int i;
        if (as.f(a) != null)
        {
          as.a(a, new MediaProgressNotification(as.g(a), as.f(a).getDuration()));
          if (as.h(a) == null) {
            break label492;
          }
          if ((as.h(a).getEnclosureDuration() == null) || (as.h(a).getEnclosureDuration().intValue() == 0) || (as.h(a).getEnclosureDuration().intValue() >= as.f(a).getDuration() + as.f(a).getDuration() / 200.0F) || (as.h(a).getEnclosureDuration().intValue() <= as.f(a).getDuration() - as.f(a).getDuration() / 200.0F))
          {
            paramMediaPlayer = ga).h;
            localLong = as.h(a).getFeedItemId();
            i = as.f(a).getDuration();
          }
        }
        try
        {
          TransactionManager.callInTransaction(b.getConnectionSource(), new l(paramMediaPlayer, Integer.valueOf(i), localLong));
          as.h(a).setEnclosureDuration(Integer.valueOf(as.f(a).getDuration()));
          if ((as.h(a).getEnclosureCurrentPosition() != null) && (as.h(a).getEnclosureCurrentPosition().intValue() < as.f(a).getDuration() - as.f(a).getDuration() / 200.0F))
          {
            as.f(a).seekTo(as.h(a).getEnclosureCurrentPosition().intValue());
            as.f(a).start();
            if (as.j(a) != null) {
              ((ImageButton)as.j(a).findViewById(2131361995)).setImageResource(2130837738);
            }
            a.i();
            as.k(a);
            a.l();
            as.l(a);
            as.m(a);
            as.a(a, new Intent(as.g(a), MediaService.class));
            as.g(a).startService(as.n(a));
            as.o(a);
            return;
          }
        }
        catch (Exception paramMediaPlayer)
        {
          paramMediaPlayer = paramMediaPlayer;
          com.appyet.d.d.a(paramMediaPlayer);
          continue;
        }
        finally {}
        as.f(a).start();
      }
      catch (Exception paramMediaPlayer)
      {
        com.appyet.d.d.a(paramMediaPlayer);
        return;
      }
      continue;
      label492:
      if (as.i(a) != null) {
        as.f(a).start();
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.appyet.manager.bb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */