package com.inmobi.re.container;

import android.app.Activity;
import android.media.MediaPlayer;
import android.media.MediaPlayer.OnCompletionListener;
import android.widget.FrameLayout;
import com.inmobi.commons.internal.Log;

class c
  implements MediaPlayer.OnCompletionListener
{
  c(IMWebView paramIMWebView) {}
  
  public void onCompletion(MediaPlayer paramMediaPlayer)
  {
    try
    {
      paramMediaPlayer.stop();
      IMWebView.i(a).setVisibility(8);
      IMWebView.l(a);
      IMWebView.h(a).setContentView(IMWebView.n(a));
      return;
    }
    catch (Exception paramMediaPlayer)
    {
      Log.internal("[InMobi]-[RE]-4.4.1", "Media Player onCompletion", paramMediaPlayer);
    }
  }
}

/* Location:
 * Qualified Name:     com.inmobi.re.container.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */