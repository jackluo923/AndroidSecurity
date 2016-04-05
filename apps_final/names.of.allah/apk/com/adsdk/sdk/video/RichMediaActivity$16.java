package com.adsdk.sdk.video;

import android.view.View;
import android.view.View.OnClickListener;
import com.adsdk.sdk.Log;

class RichMediaActivity$16
  implements View.OnClickListener
{
  RichMediaActivity$16(RichMediaActivity paramRichMediaActivity) {}
  
  public void onClick(View paramView)
  {
    Log.v("###########TRACKING SKIP INTERSTITIAL");
    RichMediaActivity.access$10(this$0, true);
    this$0.setResult(-1);
    this$0.finish();
  }
}

/* Location:
 * Qualified Name:     com.adsdk.sdk.video.RichMediaActivity.16
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */