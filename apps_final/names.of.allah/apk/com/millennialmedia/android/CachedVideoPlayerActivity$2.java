package com.millennialmedia.android;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageButton;

class CachedVideoPlayerActivity$2
  implements View.OnClickListener
{
  CachedVideoPlayerActivity$2(CachedVideoPlayerActivity paramCachedVideoPlayerActivity, ImageButton paramImageButton, VideoImage paramVideoImage) {}
  
  public void onClick(View paramView)
  {
    if (val$newButton != null) {
      val$newButton.setEnabled(false);
    }
    this$0.redirectListenerImpl.orientation = val$button.overlayOrientation;
    this$0.dispatchButtonClick(val$button.linkUrl);
    this$0.logButtonEvent(val$button);
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.android.CachedVideoPlayerActivity.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */