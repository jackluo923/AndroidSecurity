package com.adsdk.sdk.video;

import android.media.MediaPlayer;
import android.media.MediaPlayer.OnErrorListener;
import com.adsdk.sdk.Log;

class RichMediaActivity$3
  implements MediaPlayer.OnErrorListener
{
  RichMediaActivity$3(RichMediaActivity paramRichMediaActivity) {}
  
  public boolean onError(MediaPlayer paramMediaPlayer, int paramInt1, int paramInt2)
  {
    Log.w("Cannot play video/ Error: " + paramInt1 + " Extra: " + paramInt2);
    this$0.finish();
    return false;
  }
}

/* Location:
 * Qualified Name:     com.adsdk.sdk.video.RichMediaActivity.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */