package com.adsdk.sdk.video;

import android.media.MediaPlayer;
import android.media.MediaPlayer.OnCompletionListener;
import com.adsdk.sdk.Log;
import java.util.Vector;

class RichMediaActivity$8
  implements MediaPlayer.OnCompletionListener
{
  RichMediaActivity$8(RichMediaActivity paramRichMediaActivity) {}
  
  public void onCompletion(MediaPlayer paramMediaPlayer)
  {
    Log.d("###########TRACKING END VIDEO");
    paramMediaPlayer = access$1this$0).completeEvents;
    int i = 0;
    for (;;)
    {
      if (i >= paramMediaPlayer.size())
      {
        RichMediaActivity.access$10(this$0, true);
        this$0.setResult(-1);
        this$0.finish();
        return;
      }
      Log.d("Track url:" + (String)paramMediaPlayer.get(i));
      TrackEvent localTrackEvent = new TrackEvent();
      url = ((String)paramMediaPlayer.get(i));
      timestamp = System.currentTimeMillis();
      TrackerService.requestTrack(localTrackEvent);
      i += 1;
    }
  }
}

/* Location:
 * Qualified Name:     com.adsdk.sdk.video.RichMediaActivity.8
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */