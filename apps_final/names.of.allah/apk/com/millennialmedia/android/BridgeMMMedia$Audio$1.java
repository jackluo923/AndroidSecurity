package com.millennialmedia.android;

import android.media.MediaPlayer;
import android.media.MediaPlayer.OnCompletionListener;

class BridgeMMMedia$Audio$1
  implements MediaPlayer.OnCompletionListener
{
  BridgeMMMedia$Audio$1(BridgeMMMedia.Audio paramAudio) {}
  
  public void onCompletion(MediaPlayer paramMediaPlayer)
  {
    try
    {
      if (BridgeMMMedia.Audio.access$100(this$0) != null)
      {
        BridgeMMMedia.Audio.access$100(this$0).release();
        BridgeMMMedia.Audio.access$102(this$0, null);
      }
      return;
    }
    finally
    {
      paramMediaPlayer = finally;
      throw paramMediaPlayer;
    }
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.android.BridgeMMMedia.Audio.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */