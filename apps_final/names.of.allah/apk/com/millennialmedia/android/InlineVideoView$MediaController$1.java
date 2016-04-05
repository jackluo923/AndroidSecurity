package com.millennialmedia.android;

import android.app.Activity;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.view.View;
import android.view.View.OnClickListener;
import java.lang.ref.WeakReference;

class InlineVideoView$MediaController$1
  implements View.OnClickListener
{
  InlineVideoView$MediaController$1(InlineVideoView.MediaController paramMediaController) {}
  
  public void onClick(View paramView)
  {
    paramView = (MMLayout)this$1.this$0.mmLayoutRef.get();
    if (paramView != null)
    {
      this$1.setBackgroundColor(-16777216);
      if (this$1.this$0.isPlaying()) {
        this$1.this$0.inlineParams.currentPosition = this$1.this$0.getCurrentPosition();
      }
      if (!this$1.this$0.inlineParams.goingFullScreen) {
        break label171;
      }
      this$1.this$0.inlineParams.goingFullScreen = false;
      if (this$1.this$0.inlineParams.originalOrientation != 1) {
        break label134;
      }
      paramView = (Activity)this$1.getContext();
      if (paramView != null) {
        paramView.setRequestedOrientation(1);
      }
    }
    label134:
    label171:
    do
    {
      return;
      bool = this$1.this$0.isPlaying();
      this$1.this$0.stopPlayback();
      paramView.repositionVideoLayout();
      InlineVideoView.access$500(this$1.this$0, bool);
      return;
      this$1.this$0.inlineParams.originalOrientation = this$1.getContext().getResources().getConfiguration().orientation;
      this$1.this$0.inlineParams.goingFullScreen = true;
      if (this$1.this$0.inlineParams.originalOrientation == 2) {
        break;
      }
      paramView = (Activity)this$1.getContext();
    } while (paramView == null);
    paramView.setRequestedOrientation(0);
    return;
    boolean bool = this$1.this$0.isPlaying();
    this$1.this$0.stopPlayback();
    paramView.fullScreenVideoLayout();
    InlineVideoView.access$500(this$1.this$0, bool);
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.android.InlineVideoView.MediaController.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */