package com.millennialmedia.android;

import android.app.Activity;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.widget.Button;

class AdViewOverlayView$3
  implements Animation.AnimationListener
{
  AdViewOverlayView$3(AdViewOverlayView paramAdViewOverlayView) {}
  
  public void onAnimationEnd(Animation paramAnimation)
  {
    paramAnimation = (Activity)this$0.getContext();
    MMSDK.Log.d("Finishing overlay this is in w/ anim finishOverLayWithAnim()");
    this$0.attachWebViewToLink();
    paramAnimation.finish();
  }
  
  public void onAnimationRepeat(Animation paramAnimation) {}
  
  public void onAnimationStart(Animation paramAnimation)
  {
    if (AdViewOverlayView.access$300(this$0) != null) {
      AdViewOverlayView.access$300(this$0).setVisibility(8);
    }
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.android.AdViewOverlayView.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */