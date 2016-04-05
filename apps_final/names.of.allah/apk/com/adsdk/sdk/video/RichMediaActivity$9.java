package com.adsdk.sdk.video;

import com.adsdk.sdk.Log;
import java.util.Vector;

class RichMediaActivity$9
  implements SDKVideoView.OnStartListener
{
  RichMediaActivity$9(RichMediaActivity paramRichMediaActivity) {}
  
  public void onVideoStart()
  {
    Log.d("###########TRACKING START VIDEO");
    Vector localVector = access$1this$0).startEvents;
    localVector.addAll(access$1this$0).impressionEvents);
    int i = 0;
    for (;;)
    {
      if (i >= localVector.size())
      {
        localVector.clear();
        access$1this$0).impressionEvents.clear();
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
 * Qualified Name:     com.adsdk.sdk.video.RichMediaActivity.9
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */