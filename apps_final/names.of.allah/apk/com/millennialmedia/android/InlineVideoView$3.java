package com.millennialmedia.android;

import android.os.Handler;
import android.os.Message;

class InlineVideoView$3
  extends Handler
{
  InlineVideoView$3(InlineVideoView paramInlineVideoView) {}
  
  public void handleMessage(Message paramMessage)
  {
    switch (what)
    {
    default: 
      return;
    }
    if (this$0.isPlaying()) {
      InlineVideoView.access$100(this$0);
    }
    this$0.videoHandler.sendMessageDelayed(Message.obtain(this$0.videoHandler, 2), 500L);
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.android.InlineVideoView.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */