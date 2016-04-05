package com.inmobi.re.container.mraidimpl;

import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnKeyListener;
import com.inmobi.commons.internal.Log;
import com.inmobi.re.controller.util.AVPlayer;

class MRAIDAudioVideoController$e
  implements View.OnKeyListener
{
  MRAIDAudioVideoController$e(MRAIDAudioVideoController paramMRAIDAudioVideoController) {}
  
  public boolean onKey(View paramView, int paramInt, KeyEvent paramKeyEvent)
  {
    if ((4 == paramKeyEvent.getKeyCode()) && (paramKeyEvent.getAction() == 0))
    {
      Log.debug("[InMobi]-[RE]-4.4.1", "Back pressed while fullscreen video is playing");
      a.videoPlayer.releasePlayer(true);
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.inmobi.re.container.mraidimpl.MRAIDAudioVideoController.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */