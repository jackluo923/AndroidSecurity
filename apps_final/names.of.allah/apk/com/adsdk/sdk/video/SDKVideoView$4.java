package com.adsdk.sdk.video;

import android.media.MediaPlayer;
import android.media.MediaPlayer.OnErrorListener;
import com.adsdk.sdk.Log;

class SDKVideoView$4
  implements MediaPlayer.OnErrorListener
{
  SDKVideoView$4(SDKVideoView paramSDKVideoView) {}
  
  public boolean onError(MediaPlayer paramMediaPlayer, int paramInt1, int paramInt2)
  {
    Log.d("Error: " + paramInt1 + "," + paramInt2);
    SDKVideoView.access$0(this$0, -1);
    SDKVideoView.access$8(this$0, -1);
    if (SDKVideoView.access$3(this$0) != null) {
      SDKVideoView.access$3(this$0).hide();
    }
    if ((SDKVideoView.access$11(this$0) != null) && (SDKVideoView.access$11(this$0).onError(SDKVideoView.access$2(this$0), paramInt1, paramInt2))) {}
    return true;
  }
}

/* Location:
 * Qualified Name:     com.adsdk.sdk.video.SDKVideoView.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */