package com.millennialmedia.android;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.VideoView;

class VideoPlayerActivity$4
  implements View.OnClickListener
{
  VideoPlayerActivity$4(VideoPlayerActivity paramVideoPlayerActivity) {}
  
  public void onClick(View paramView)
  {
    if (this$0.mVideoView != null)
    {
      if (this$0.mVideoView.isPlaying())
      {
        this$0.pauseVideoByUser();
        this$0.pausePlay.setBackgroundResource(17301540);
      }
    }
    else {
      return;
    }
    if (this$0.isVideoCompleted) {
      this$0.playVideo(0);
    }
    for (;;)
    {
      this$0.pausePlay.setBackgroundResource(17301539);
      return;
      if ((this$0.isUserPausing) && (!this$0.isVideoCompleted)) {
        this$0.resumeVideo();
      } else {
        this$0.playVideo(this$0.currentVideoPosition);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.android.VideoPlayerActivity.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */