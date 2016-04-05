package com.appyet.manager;

import android.media.MediaPlayer;
import android.media.MediaPlayer.OnErrorListener;
import com.appyet.d.d;

final class be
  implements MediaPlayer.OnErrorListener
{
  be(as paramas) {}
  
  public final boolean onError(MediaPlayer paramMediaPlayer, int paramInt1, int paramInt2)
  {
    try
    {
      as.o(a);
      a.d();
      paramMediaPlayer = a;
      as.e();
      as.q(a);
      return false;
    }
    catch (Exception paramMediaPlayer)
    {
      for (;;)
      {
        d.a(paramMediaPlayer);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.appyet.manager.be
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */