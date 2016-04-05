package com.adsdk.sdk.mraid;

import android.content.Context;
import android.widget.VideoView;

abstract class BaseVideoView
  extends VideoView
{
  public BaseVideoView(Context paramContext)
  {
    super(paramContext);
  }
  
  void onPause() {}
  
  void onResume() {}
}

/* Location:
 * Qualified Name:     com.adsdk.sdk.mraid.BaseVideoView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */