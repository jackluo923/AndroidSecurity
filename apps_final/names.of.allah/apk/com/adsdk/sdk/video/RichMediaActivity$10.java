package com.adsdk.sdk.video;

import com.adsdk.sdk.Log;
import java.util.Vector;

class RichMediaActivity$10
  implements MediaController.OnPauseListener
{
  RichMediaActivity$10(RichMediaActivity paramRichMediaActivity) {}
  
  public void onVideoPause()
  {
    Log.d("###########TRACKING PAUSE VIDEO");
    Vector localVector = access$1this$0).pauseEvents;
    int i = 0;
    for (;;)
    {
      if (i >= localVector.size()) {
        return;
      }
      Log.d("Track url:" + (String)localVector.get(i));
      TrackEvent localTrackEvent = new TrackEvent();
      url = ((String)localVector.get(i));
      timestamp = System.currentTimeMillis();
      TrackerService.requestTrack(localTrackEvent);
      i += 1;
    }
  }
}

/* Location:
 * Qualified Name:     com.adsdk.sdk.video.RichMediaActivity.10
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */