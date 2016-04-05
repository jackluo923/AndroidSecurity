package com.adsdk.sdk.video;

import com.adsdk.sdk.Log;
import java.util.Vector;

class RichMediaActivity$15
  implements MediaController.OnReplayListener
{
  RichMediaActivity$15(RichMediaActivity paramRichMediaActivity) {}
  
  public void onVideoReplay()
  {
    Log.d("###########TRACKING REPLAY VIDEO");
    Vector localVector = access$1this$0).replayEvents;
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
 * Qualified Name:     com.adsdk.sdk.video.RichMediaActivity.15
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */