package com.adsdk.sdk.mraid;

import android.media.MediaPlayer;
import android.media.MediaPlayer.OnErrorListener;

class MraidVideoView$2
  implements MediaPlayer.OnErrorListener
{
  MraidVideoView$2(MraidVideoView paramMraidVideoView, BaseVideoView.BaseVideoViewListener paramBaseVideoViewListener) {}
  
  public boolean onError(MediaPlayer paramMediaPlayer, int paramInt1, int paramInt2)
  {
    if (val$baseVideoViewListener != null) {
      val$baseVideoViewListener.videoError(false);
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.adsdk.sdk.mraid.MraidVideoView.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */