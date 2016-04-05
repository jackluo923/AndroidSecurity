package com.adsdk.sdk.video;

import android.media.MediaPlayer;
import android.media.MediaPlayer.OnInfoListener;
import android.os.Handler;
import com.adsdk.sdk.Log;

class RichMediaActivity$4
  implements MediaPlayer.OnInfoListener
{
  RichMediaActivity$4(RichMediaActivity paramRichMediaActivity) {}
  
  public boolean onInfo(MediaPlayer paramMediaPlayer, int paramInt1, int paramInt2)
  {
    Log.i("Info: " + paramInt1 + " Extra: " + paramInt2);
    if (paramInt1 == 703)
    {
      this$0.mTimeTest = RichMediaActivity.access$5(this$0).getCurrentPosition();
      new Handler().postDelayed(RichMediaActivity.access$6(this$0), 5000L);
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.adsdk.sdk.video.RichMediaActivity.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */