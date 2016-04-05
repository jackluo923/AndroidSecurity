package com.adsdk.sdk.video;

import com.adsdk.sdk.Log;
import java.util.HashMap;
import java.util.Vector;

class RichMediaActivity$12
  implements SDKVideoView.OnTimeEventListener
{
  RichMediaActivity$12(RichMediaActivity paramRichMediaActivity) {}
  
  public void onTimeEvent(int paramInt)
  {
    Log.d("###########TRACKING TIME VIDEO:" + paramInt);
    Vector localVector = (Vector)access$1this$0).timeTrackingEvents.get(Integer.valueOf(paramInt));
    if (localVector != null) {
      paramInt = 0;
    }
    for (;;)
    {
      if (paramInt >= localVector.size()) {
        return;
      }
      Log.d("Track url:" + (String)localVector.get(paramInt));
      TrackEvent localTrackEvent = new TrackEvent();
      url = ((String)localVector.get(paramInt));
      timestamp = System.currentTimeMillis();
      TrackerService.requestTrack(localTrackEvent);
      paramInt += 1;
    }
  }
}

/* Location:
 * Qualified Name:     com.adsdk.sdk.video.RichMediaActivity.12
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */