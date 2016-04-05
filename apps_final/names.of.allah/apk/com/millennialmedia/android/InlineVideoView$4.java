package com.millennialmedia.android;

import android.os.Handler;
import android.os.Message;
import java.lang.ref.WeakReference;

class InlineVideoView$4
  extends Handler
{
  InlineVideoView$4(InlineVideoView paramInlineVideoView) {}
  
  public void handleMessage(Message paramMessage)
  {
    switch (what)
    {
    }
    do
    {
      do
      {
        return;
        if ((this$0.isPlaying()) && (this$0.getCurrentPosition() > 0))
        {
          this$0.transparentHandler.sendEmptyMessageDelayed(5, 100L);
          return;
        }
        this$0.transparentHandler.sendEmptyMessageDelayed(4, 50L);
        return;
      } while ((!this$0.isPlaying()) || (this$0.getCurrentPosition() <= 0));
      this$0.setBackgroundColor(0);
    } while ((this$0.mmLayoutRef == null) || (this$0.mmLayoutRef.get() == null));
    ((MMLayout)this$0.mmLayoutRef.get()).removeBlackView();
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.android.InlineVideoView.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */