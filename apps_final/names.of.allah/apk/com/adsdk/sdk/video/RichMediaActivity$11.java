package com.adsdk.sdk.video;

import com.adsdk.sdk.Log;
import java.util.Vector;

class RichMediaActivity$11
  implements MediaController.OnUnpauseListener
{
  RichMediaActivity$11(RichMediaActivity paramRichMediaActivity) {}
  
  public void onVideoUnpause()
  {
    Log.d("###########TRACKING UNPAUSE VIDEO");
    Vector localVector = access$1this$0).resumeEvents;
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
 * Qualified Name:     com.adsdk.sdk.video.RichMediaActivity.11
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */