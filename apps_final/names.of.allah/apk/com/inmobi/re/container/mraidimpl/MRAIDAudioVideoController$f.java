package com.inmobi.re.container.mraidimpl;

import android.view.ViewGroup;
import com.inmobi.commons.internal.Log;
import com.inmobi.re.container.IMWebView;
import com.inmobi.re.controller.util.AVPlayer;
import com.inmobi.re.controller.util.AVPlayerListener;

class MRAIDAudioVideoController$f
  implements AVPlayerListener
{
  MRAIDAudioVideoController$f(MRAIDAudioVideoController paramMRAIDAudioVideoController) {}
  
  public void onComplete(AVPlayer paramAVPlayer)
  {
    MRAIDAudioVideoController.a(a).setBusy(false);
    try
    {
      ViewGroup localViewGroup = paramAVPlayer.getBackGroundLayout();
      if (localViewGroup != null) {
        ((ViewGroup)localViewGroup.getParent()).removeView(paramAVPlayer.getBackGroundLayout());
      }
      paramAVPlayer.setBackGroundLayout(null);
    }
    catch (Exception localException)
    {
      for (;;)
      {
        try
        {
          if ((a.videoPlayer != null) && (paramAVPlayer.getPropertyID().equalsIgnoreCase(a.videoPlayer.getPropertyID()))) {
            a.videoPlayer = null;
          }
          return;
        }
        finally {}
        localException = localException;
        Log.debug("[InMobi]-[RE]-4.4.1", "Problem removing the video framelayout or relativelayout depending on video startstyle", localException);
      }
    }
  }
  
  public void onError(AVPlayer paramAVPlayer)
  {
    onComplete(paramAVPlayer);
  }
  
  public void onPrepared(AVPlayer paramAVPlayer) {}
}

/* Location:
 * Qualified Name:     com.inmobi.re.container.mraidimpl.MRAIDAudioVideoController.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */