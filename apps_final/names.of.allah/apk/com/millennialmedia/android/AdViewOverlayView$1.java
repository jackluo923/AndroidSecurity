package com.millennialmedia.android;

import android.view.View;
import android.view.View.OnClickListener;

class AdViewOverlayView$1
  implements View.OnClickListener
{
  AdViewOverlayView$1(AdViewOverlayView paramAdViewOverlayView) {}
  
  public void onClick(View paramView)
  {
    MMSDK.Log.v("Close button clicked.");
    this$0.finishOverlayWithAnimation();
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.android.AdViewOverlayView.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */