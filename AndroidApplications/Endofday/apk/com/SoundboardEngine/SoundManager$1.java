package com.SoundboardEngine;

import android.media.MediaPlayer;
import android.media.MediaPlayer.OnCompletionListener;
import java.util.ArrayList;

class SoundManager$1
  implements MediaPlayer.OnCompletionListener
{
  final SoundManager this$0;
  
  SoundManager$1(SoundManager paramSoundManager) {}
  
  public void onCompletion(MediaPlayer paramMediaPlayer)
  {
    Object localObject = this$0;
    localObject = SoundManager.access$0((SoundManager)localObject);
    ((ArrayList)localObject).remove(paramMediaPlayer);
    paramMediaPlayer.release();
  }
}

/* Location:
 * Qualified Name:     com.SoundboardEngine.SoundManager.1
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */