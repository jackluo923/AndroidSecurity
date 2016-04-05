package com.millennialmedia.android;

import android.content.Context;
import android.graphics.Bitmap;
import android.widget.ImageView;
import java.util.Map;

class MMAdView$MMAdViewMMAdImpl
  extends MMLayout.MMLayoutMMAdImpl
{
  public MMAdView$MMAdViewMMAdImpl(MMAdView paramMMAdView, Context paramContext)
  {
    super(paramMMAdView, paramContext);
    mmWebViewClientListener = new MMAdView.MMAdViewMMAdImpl.1(this, paramMMAdView);
  }
  
  void animateTransition()
  {
    if (this$0.refreshAnimationimageView.getDrawable() != null) {
      MMSDK.runOnUiThread(new MMAdView.MMAdViewMMAdImpl.2(this));
    }
  }
  
  String getReqType()
  {
    return "getad";
  }
  
  String getRequestCompletedAction()
  {
    return "millennialmedia.action.ACTION_GETAD_SUCCEEDED";
  }
  
  String getRequestFailedAction()
  {
    return "millennialmedia.action.ACTION_GETAD_FAILED";
  }
  
  public boolean hasCachedVideoSupport()
  {
    return false;
  }
  
  void insertUrlAdMetaValues(Map<String, String> paramMap)
  {
    if (this$0.height > 0) {
      paramMap.put("hsht", String.valueOf(this$0.height));
    }
    if (this$0.width > 0) {
      paramMap.put("hswd", String.valueOf(this$0.width));
    }
    super.insertUrlAdMetaValues(paramMap);
  }
  
  public boolean isBanner()
  {
    return true;
  }
  
  boolean isLifecycleObservable()
  {
    return this$0.getWindowToken() != null;
  }
  
  boolean isTransitionAnimated()
  {
    return this$0.transitionType != 0;
  }
  
  void prepareTransition(Bitmap paramBitmap)
  {
    this$0.refreshAnimationimageView.setImageBitmap(paramBitmap);
    this$0.refreshAnimationimageView.setVisibility(0);
    this$0.refreshAnimationimageView.bringToFront();
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.android.MMAdView.MMAdViewMMAdImpl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */