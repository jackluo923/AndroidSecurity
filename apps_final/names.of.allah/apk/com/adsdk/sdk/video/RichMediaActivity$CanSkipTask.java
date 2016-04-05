package com.adsdk.sdk.video;

import com.adsdk.sdk.Log;
import java.util.TimerTask;

class RichMediaActivity$CanSkipTask
  extends TimerTask
{
  private final RichMediaActivity mActivity;
  
  public RichMediaActivity$CanSkipTask(RichMediaActivity paramRichMediaActivity1, RichMediaActivity paramRichMediaActivity2)
  {
    mActivity = paramRichMediaActivity2;
  }
  
  public void run()
  {
    Log.v("###########TRACKING CAN CLOSE INTERSTITIAL");
    RichMediaActivity.access$11(mActivity, true);
    if (RichMediaActivity.access$12(mActivity) != null) {
      mActivity.runOnUiThread(new RichMediaActivity.CanSkipTask.1(this));
    }
  }
}

/* Location:
 * Qualified Name:     com.adsdk.sdk.video.RichMediaActivity.CanSkipTask
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */