package com.adsdk.sdk.video;

import android.media.MediaPlayer;
import android.media.MediaPlayer.OnInfoListener;
import com.adsdk.sdk.Log;

class SDKVideoView$5
  implements MediaPlayer.OnInfoListener
{
  SDKVideoView$5(SDKVideoView paramSDKVideoView) {}
  
  public boolean onInfo(MediaPlayer paramMediaPlayer, int paramInt1, int paramInt2)
  {
    Log.d("Info/Warning: " + paramInt1 + "," + paramInt2);
    if ((SDKVideoView.access$12(this$0) != null) && (SDKVideoView.access$12(this$0).onInfo(SDKVideoView.access$2(this$0), paramInt1, paramInt2))) {}
    return true;
  }
}

/* Location:
 * Qualified Name:     com.adsdk.sdk.video.SDKVideoView.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */