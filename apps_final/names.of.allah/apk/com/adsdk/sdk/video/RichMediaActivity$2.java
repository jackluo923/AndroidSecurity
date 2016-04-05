package com.adsdk.sdk.video;

import android.content.Intent;
import android.net.Uri;
import android.view.View;
import android.view.View.OnClickListener;
import com.adsdk.sdk.Log;

class RichMediaActivity$2
  implements View.OnClickListener
{
  RichMediaActivity$2(RichMediaActivity paramRichMediaActivity) {}
  
  public void onClick(View paramView)
  {
    if (access$1this$0).overlayClickThrough != null)
    {
      if (access$1this$0).overlayClickTracking != null) {
        RichMediaActivity.access$2(this$0, access$1this$0).overlayClickTracking);
      }
      paramView = access$1this$0).overlayClickThrough.trim();
      RichMediaActivity.access$3(this$0);
      paramView = new Intent("android.intent.action.VIEW", Uri.parse(paramView));
      this$0.startActivity(paramView);
    }
    Log.d("ADSDK", "RichMediaActivity mOverlayClickListener");
    if (RichMediaActivity.access$4(this$0) != null) {
      RichMediaActivity.access$4(this$0).toggle();
    }
  }
}

/* Location:
 * Qualified Name:     com.adsdk.sdk.video.RichMediaActivity.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */