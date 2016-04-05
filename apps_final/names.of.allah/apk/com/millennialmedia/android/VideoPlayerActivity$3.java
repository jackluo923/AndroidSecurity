package com.millennialmedia.android;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.VideoView;

class VideoPlayerActivity$3
  implements View.OnClickListener
{
  VideoPlayerActivity$3(VideoPlayerActivity paramVideoPlayerActivity) {}
  
  public void onClick(View paramView)
  {
    if (this$0.mVideoView != null) {
      this$0.mVideoView.seekTo(0);
    }
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.android.VideoPlayerActivity.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */