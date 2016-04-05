package com.millennialmedia.android;

import android.media.MediaPlayer;
import android.media.MediaPlayer.OnErrorListener;
import android.os.Handler;
import java.lang.ref.WeakReference;

class InlineVideoView$5
  implements MediaPlayer.OnErrorListener
{
  InlineVideoView$5(InlineVideoView paramInlineVideoView) {}
  
  public boolean onError(MediaPlayer paramMediaPlayer, int paramInt1, int paramInt2)
  {
    if ((this$0.videoHandler != null) && (this$0.videoHandler.hasMessages(2))) {
      this$0.videoHandler.removeMessages(2);
    }
    paramMediaPlayer = (MMLayout)this$0.mmLayoutRef.get();
    if (paramMediaPlayer == null)
    {
      MMSDK.Log.w("MMLayout weak reference broken");
      return false;
    }
    paramMediaPlayer.loadUrl("javascript:MMJS.setError(" + String.format("Error while playing, %d - %d", new Object[] { Integer.valueOf(paramInt1), Integer.valueOf(paramInt2) }) + ");");
    return true;
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.android.InlineVideoView.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */