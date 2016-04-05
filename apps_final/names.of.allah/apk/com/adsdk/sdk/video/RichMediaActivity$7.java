package com.adsdk.sdk.video;

import android.content.Intent;
import android.net.Uri;
import android.view.View;
import android.view.View.OnClickListener;
import java.util.Iterator;
import java.util.List;

class RichMediaActivity$7
  implements View.OnClickListener
{
  RichMediaActivity$7(RichMediaActivity paramRichMediaActivity) {}
  
  public void onClick(View paramView)
  {
    if (access$1this$0).videoClickThrough != null) {
      if (access$1this$0).videoClickTracking != null) {
        paramView = access$1this$0).videoClickTracking.iterator();
      }
    }
    for (;;)
    {
      if (!paramView.hasNext())
      {
        paramView = access$1this$0).videoClickThrough.trim();
        RichMediaActivity.access$3(this$0);
        this$0.mOnVideoCanCloseEventListener.onTimeEvent(0);
        paramView = new Intent("android.intent.action.VIEW", Uri.parse(paramView));
        this$0.startActivity(paramView);
        return;
      }
      String str = (String)paramView.next();
      RichMediaActivity.access$2(this$0, str);
    }
  }
}

/* Location:
 * Qualified Name:     com.adsdk.sdk.video.RichMediaActivity.7
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */