package com.adsdk.sdk.video;

import android.media.MediaPlayer;
import android.media.MediaPlayer.OnPreparedListener;
import android.widget.FrameLayout;
import com.adsdk.sdk.Log;
import java.util.Timer;

class RichMediaActivity$6
  implements MediaPlayer.OnPreparedListener
{
  RichMediaActivity$6(RichMediaActivity paramRichMediaActivity) {}
  
  public void onPrepared(MediaPlayer paramMediaPlayer)
  {
    Log.d("ADSDK", "RichMediaActivity onPrepared MediaPlayer");
    if (RichMediaActivity.access$7(this$0) != null)
    {
      RichMediaActivity.access$7(this$0).cancel();
      RichMediaActivity.access$8(this$0, null);
    }
    if (RichMediaActivity.access$9(this$0) != null) {
      RichMediaActivity.access$9(this$0).setVisibility(8);
    }
    if (access$1this$0).showNavigationBars) {
      RichMediaActivity.access$4(this$0).setVisibility(0);
    }
    RichMediaActivity.access$5(this$0).requestFocus();
  }
}

/* Location:
 * Qualified Name:     com.adsdk.sdk.video.RichMediaActivity.6
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */