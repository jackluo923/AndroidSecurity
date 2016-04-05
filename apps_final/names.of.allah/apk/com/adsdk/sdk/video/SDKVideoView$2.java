package com.adsdk.sdk.video;

import android.media.MediaPlayer;
import android.media.MediaPlayer.OnPreparedListener;
import com.adsdk.sdk.Log;

class SDKVideoView$2
  implements MediaPlayer.OnPreparedListener
{
  SDKVideoView$2(SDKVideoView paramSDKVideoView) {}
  
  public void onPrepared(MediaPlayer paramMediaPlayer)
  {
    Log.d("SDKVideoView onPrepared");
    SDKVideoView.access$0(this$0, 2);
    if (SDKVideoView.access$1(this$0) != null) {
      SDKVideoView.access$1(this$0).onPrepared(SDKVideoView.access$2(this$0));
    }
    if (SDKVideoView.access$3(this$0) != null) {
      SDKVideoView.access$3(this$0).setEnabled(true);
    }
    int i = SDKVideoView.access$4(this$0);
    if (i != 0) {
      this$0.seekTo(i);
    }
    if (!SDKVideoView.access$5(this$0)) {
      Log.d("SDKVideoView onPrepared surface not ready yet");
    }
    do
    {
      return;
      SDKVideoView.access$6(this$0);
      if (SDKVideoView.access$7(this$0) == 3)
      {
        this$0.start();
        return;
      }
    } while ((this$0.isPlaying()) || ((i == 0) && (this$0.getCurrentPosition() <= 0)) || (SDKVideoView.access$3(this$0) == null));
    SDKVideoView.access$3(this$0).show(0);
  }
}

/* Location:
 * Qualified Name:     com.adsdk.sdk.video.SDKVideoView.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */