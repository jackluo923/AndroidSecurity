package com.adsdk.sdk.video;

import android.media.MediaPlayer;
import android.media.MediaPlayer.OnCompletionListener;

class SDKVideoView$3
  implements MediaPlayer.OnCompletionListener
{
  SDKVideoView$3(SDKVideoView paramSDKVideoView) {}
  
  public void onCompletion(MediaPlayer paramMediaPlayer)
  {
    SDKVideoView.access$0(this$0, 5);
    SDKVideoView.access$8(this$0, 5);
    if (SDKVideoView.access$3(this$0) != null) {
      SDKVideoView.access$3(this$0).show(0);
    }
    if (SDKVideoView.access$9(this$0) != null)
    {
      SDKVideoView.access$9(this$0).onCompletion(SDKVideoView.access$2(this$0));
      SDKVideoView.access$10(this$0, null);
    }
  }
}

/* Location:
 * Qualified Name:     com.adsdk.sdk.video.SDKVideoView.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */