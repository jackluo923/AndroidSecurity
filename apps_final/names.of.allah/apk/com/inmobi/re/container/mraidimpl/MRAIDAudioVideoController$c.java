package com.inmobi.re.container.mraidimpl;

import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnKeyListener;
import com.inmobi.commons.internal.Log;
import com.inmobi.re.controller.util.AVPlayer;

class MRAIDAudioVideoController$c
  implements View.OnKeyListener
{
  MRAIDAudioVideoController$c(MRAIDAudioVideoController paramMRAIDAudioVideoController) {}
  
  public boolean onKey(View paramView, int paramInt, KeyEvent paramKeyEvent)
  {
    if ((4 == paramKeyEvent.getKeyCode()) && (paramKeyEvent.getAction() == 0))
    {
      Log.debug("[InMobi]-[RE]-4.4.1", "Back button pressed while fullscreen audio was playing");
      a.audioplayer.releasePlayer(true);
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.inmobi.re.container.mraidimpl.MRAIDAudioVideoController.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */