package com.millennialmedia.android;

import android.media.MediaPlayer;
import android.media.MediaPlayer.OnCompletionListener;
import android.os.Handler;

class InlineVideoView$6
  implements MediaPlayer.OnCompletionListener
{
  InlineVideoView$6(InlineVideoView paramInlineVideoView) {}
  
  public void onCompletion(MediaPlayer paramMediaPlayer)
  {
    if ((this$0.videoHandler != null) && (this$0.videoHandler.hasMessages(2))) {
      this$0.videoHandler.removeMessages(2);
    }
    this$0.inlineParams.isCompleted = true;
    this$0.inlineParams.currentPosition = InlineVideoView.access$200(this$0);
    if (this$0.inlineParams.currentPosition == -1) {
      this$0.inlineParams.currentPosition = 0;
    }
    InlineVideoView.access$300(this$0);
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.android.InlineVideoView.6
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */