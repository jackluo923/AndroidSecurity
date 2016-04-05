package com.millennialmedia.android;

import android.media.MediaPlayer;
import android.media.MediaPlayer.OnPreparedListener;

class InlineVideoView$7
  implements MediaPlayer.OnPreparedListener
{
  InlineVideoView$7(InlineVideoView paramInlineVideoView) {}
  
  public void onPrepared(MediaPlayer paramMediaPlayer)
  {
    if (this$0.inlineParams.autoPlay) {
      InlineVideoView.access$400(this$0);
    }
    this$0.seekTo(this$0.inlineParams.currentPosition);
    if ((this$0.inlineParams.autoPlay) || (!this$0.inlineParams.isInitialPlayBack)) {
      this$0.getHeight();
    }
    for (;;)
    {
      InlineVideoView.access$202(this$0, this$0.getDuration());
      return;
      this$0.inlineParams.isInitialPlayBack = false;
    }
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.android.InlineVideoView.7
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */