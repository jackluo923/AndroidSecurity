package com.inmobi.re.container.mraidimpl;

import android.view.ViewGroup;
import com.inmobi.commons.internal.Log;
import com.inmobi.re.controller.JSController.PlayerProperties;
import com.inmobi.re.controller.util.AVPlayer;
import com.inmobi.re.controller.util.AVPlayerListener;

class MRAIDAudioVideoController$a
  implements AVPlayerListener
{
  MRAIDAudioVideoController$a(MRAIDAudioVideoController paramMRAIDAudioVideoController, JSController.PlayerProperties paramPlayerProperties) {}
  
  public void onComplete(AVPlayer paramAVPlayer)
  {
    try
    {
      ViewGroup localViewGroup;
      if (a.isFullScreen())
      {
        localViewGroup = (ViewGroup)paramAVPlayer.getBackGroundLayout().getParent();
        if (localViewGroup != null) {
          localViewGroup.removeView(paramAVPlayer.getBackGroundLayout());
        }
      }
      else
      {
        localViewGroup = (ViewGroup)paramAVPlayer.getParent();
        if (localViewGroup != null)
        {
          localViewGroup.removeView(paramAVPlayer);
          return;
        }
      }
    }
    catch (Exception paramAVPlayer)
    {
      Log.debug("[InMobi]-[RE]-4.4.1", "Problem removing the audio relativelayout", paramAVPlayer);
    }
  }
  
  public void onError(AVPlayer paramAVPlayer)
  {
    onComplete(paramAVPlayer);
  }
  
  public void onPrepared(AVPlayer paramAVPlayer) {}
}

/* Location:
 * Qualified Name:     com.inmobi.re.container.mraidimpl.MRAIDAudioVideoController.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */