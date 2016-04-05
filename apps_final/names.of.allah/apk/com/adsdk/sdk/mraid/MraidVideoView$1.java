package com.adsdk.sdk.mraid;

import android.media.MediaPlayer;
import android.media.MediaPlayer.OnCompletionListener;

class MraidVideoView$1
  implements MediaPlayer.OnCompletionListener
{
  MraidVideoView$1(MraidVideoView paramMraidVideoView, BaseVideoView.BaseVideoViewListener paramBaseVideoViewListener) {}
  
  public void onCompletion(MediaPlayer paramMediaPlayer)
  {
    if (val$baseVideoViewListener != null) {
      val$baseVideoViewListener.videoCompleted(true);
    }
  }
}

/* Location:
 * Qualified Name:     com.adsdk.sdk.mraid.MraidVideoView.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */