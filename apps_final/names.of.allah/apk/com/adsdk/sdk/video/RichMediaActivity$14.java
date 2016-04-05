package com.adsdk.sdk.video;

import android.view.View;
import android.view.View.OnClickListener;
import com.adsdk.sdk.Log;
import java.util.Vector;

class RichMediaActivity$14
  implements View.OnClickListener
{
  RichMediaActivity$14(RichMediaActivity paramRichMediaActivity) {}
  
  public void onClick(View paramView)
  {
    Log.v("###########TRACKING SKIP VIDEO");
    paramView = access$1this$0).skipEvents;
    int i = 0;
    for (;;)
    {
      if (i >= paramView.size())
      {
        this$0.finish();
        return;
      }
      Log.d("Track url:" + (String)paramView.get(i));
      TrackEvent localTrackEvent = new TrackEvent();
      url = ((String)paramView.get(i));
      timestamp = System.currentTimeMillis();
      TrackerService.requestTrack(localTrackEvent);
      i += 1;
    }
  }
}

/* Location:
 * Qualified Name:     com.adsdk.sdk.video.RichMediaActivity.14
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */