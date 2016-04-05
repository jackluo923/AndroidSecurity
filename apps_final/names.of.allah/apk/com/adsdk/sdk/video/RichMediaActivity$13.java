package com.adsdk.sdk.video;

import android.widget.ImageView;
import com.adsdk.sdk.Log;

class RichMediaActivity$13
  implements SDKVideoView.OnTimeEventListener
{
  RichMediaActivity$13(RichMediaActivity paramRichMediaActivity) {}
  
  public void onTimeEvent(int paramInt)
  {
    Log.d("###########CAN CLOSE VIDEO:" + paramInt);
    RichMediaActivity.access$11(this$0, true);
    if ((RichMediaActivity.access$12(this$0).getVisibility() != 0) && (access$1this$0).showSkipButton) && (RichMediaActivity.access$12(this$0) != null))
    {
      RichMediaActivity.access$12(this$0).setImageDrawable(RichMediaActivity.access$13(this$0).getResource(this$0, -18));
      RichMediaActivity.access$12(this$0).setVisibility(0);
    }
  }
}

/* Location:
 * Qualified Name:     com.adsdk.sdk.video.RichMediaActivity.13
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */