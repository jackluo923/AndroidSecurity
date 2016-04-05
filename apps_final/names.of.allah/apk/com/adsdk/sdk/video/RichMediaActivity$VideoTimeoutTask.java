package com.adsdk.sdk.video;

import android.app.Activity;
import com.adsdk.sdk.Log;
import java.util.TimerTask;

class RichMediaActivity$VideoTimeoutTask
  extends TimerTask
{
  private final Activity mActivity;
  
  public RichMediaActivity$VideoTimeoutTask(RichMediaActivity paramRichMediaActivity, Activity paramActivity)
  {
    mActivity = paramActivity;
  }
  
  public void run()
  {
    Log.v("###########TRACKING VIDEO TIMEOUT");
    mActivity.runOnUiThread(new RichMediaActivity.VideoTimeoutTask.1(this));
  }
}

/* Location:
 * Qualified Name:     com.adsdk.sdk.video.RichMediaActivity.VideoTimeoutTask
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */