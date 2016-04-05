package com.millennialmedia.android;

import android.os.Handler;
import android.os.Message;
import android.view.View;
import android.widget.ProgressBar;
import android.widget.VideoView;

class VideoPlayerActivity$6
  extends Handler
{
  VideoPlayerActivity$6(VideoPlayerActivity paramVideoPlayerActivity) {}
  
  public void handleMessage(Message paramMessage)
  {
    switch (what)
    {
    }
    do
    {
      return;
      if ((this$0.mVideoView != null) && (this$0.mVideoView.isPlaying()) && (this$0.mVideoView.getCurrentPosition() > 0))
      {
        this$0.mVideoView.setBackgroundColor(0);
        this$0.transparentHandler.sendEmptyMessageDelayed(5, 100L);
        return;
      }
      this$0.transparentHandler.sendEmptyMessageDelayed(4, 50L);
      return;
    } while ((this$0.mVideoView == null) || (!this$0.mVideoView.isPlaying()) || (this$0.mVideoView.getCurrentPosition() <= 0));
    this$0.blackView.setVisibility(4);
    this$0.progBar.setVisibility(4);
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.android.VideoPlayerActivity.6
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */