package com.adsdk.sdk.video;

import android.media.MediaPlayer;
import android.media.MediaPlayer.OnCompletionListener;
import com.adsdk.sdk.Log;

class RichMediaActivity$19
  implements MediaPlayer.OnCompletionListener
{
  RichMediaActivity$19(RichMediaActivity paramRichMediaActivity) {}
  
  public void onCompletion(MediaPlayer paramMediaPlayer)
  {
    Log.d(" onCompletion Video");
    this$0.onHideCustomView();
  }
}

/* Location:
 * Qualified Name:     com.adsdk.sdk.video.RichMediaActivity.19
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */