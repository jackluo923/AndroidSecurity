package com.adsdk.sdk.banner;

import android.content.Context;
import android.graphics.Canvas;
import android.view.MotionEvent;
import android.webkit.WebView;

class BannerAdView$1
  extends WebView
{
  BannerAdView$1(BannerAdView paramBannerAdView, Context paramContext)
  {
    super(paramContext);
  }
  
  public void draw(Canvas paramCanvas)
  {
    if ((getWidth() > 0) && (getHeight() > 0)) {
      super.draw(paramCanvas);
    }
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    BannerAdView.access$0(this$0, true);
    return super.onTouchEvent(paramMotionEvent);
  }
}

/* Location:
 * Qualified Name:     com.adsdk.sdk.banner.BannerAdView.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */