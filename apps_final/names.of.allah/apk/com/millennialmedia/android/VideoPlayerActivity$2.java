package com.millennialmedia.android;

class VideoPlayerActivity$2
  implements Runnable
{
  VideoPlayerActivity$2(VideoPlayerActivity paramVideoPlayerActivity, String paramString) {}
  
  public void run()
  {
    if (val$action.equalsIgnoreCase("restartVideo")) {
      this$0.restartVideo();
    }
    while (!val$action.equalsIgnoreCase("endVideo")) {
      return;
    }
    this$0.endVideo();
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.android.VideoPlayerActivity.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */