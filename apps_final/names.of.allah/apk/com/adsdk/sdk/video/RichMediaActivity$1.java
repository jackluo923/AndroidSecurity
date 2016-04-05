package com.adsdk.sdk.video;

import com.adsdk.sdk.Log;

class RichMediaActivity$1
  implements SDKVideoView.OnTimeEventListener
{
  RichMediaActivity$1(RichMediaActivity paramRichMediaActivity) {}
  
  public void onTimeEvent(int paramInt)
  {
    Log.d("ADSDK", "RichMediaActivity mOverlayShowListener show after:" + paramInt);
    if (RichMediaActivity.access$0(this$0) != null)
    {
      RichMediaActivity.access$0(this$0).setVisibility(0);
      RichMediaActivity.access$0(this$0).requestLayout();
    }
  }
}

/* Location:
 * Qualified Name:     com.adsdk.sdk.video.RichMediaActivity.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */