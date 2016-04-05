package com.google.zxing.client.android;

import android.media.MediaPlayer;
import android.media.MediaPlayer.OnCompletionListener;

final class BeepManager$1
  implements MediaPlayer.OnCompletionListener
{
  public void onCompletion(MediaPlayer paramMediaPlayer)
  {
    paramMediaPlayer.seekTo(0);
  }
}

/* Location:
 * Qualified Name:     com.google.zxing.client.android.BeepManager.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */