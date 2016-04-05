package com.adsdk.sdk.video;

import com.adsdk.sdk.Log;

class RichMediaActivity$5
  implements Runnable
{
  RichMediaActivity$5(RichMediaActivity paramRichMediaActivity) {}
  
  public void run()
  {
    Log.w("Video playback is being checked");
    if (RichMediaActivity.access$5(this$0).getCurrentPosition() - this$0.mTimeTest <= 1)
    {
      Log.w("Video playback too slow. Ending");
      this$0.finish();
      return;
    }
    Log.w("Video playback has restarted");
  }
}

/* Location:
 * Qualified Name:     com.adsdk.sdk.video.RichMediaActivity.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */