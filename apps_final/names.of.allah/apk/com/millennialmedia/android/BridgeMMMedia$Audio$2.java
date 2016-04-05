package com.millennialmedia.android;

import android.content.Context;
import android.media.AudioManager;
import android.media.SoundPool;
import java.lang.ref.WeakReference;

class BridgeMMMedia$Audio$2
  extends BridgeMMMedia.Audio.OnLoadCompleteListener
{
  BridgeMMMedia$Audio$2(BridgeMMMedia.Audio paramAudio, SoundPool paramSoundPool)
  {
    super(paramAudio, paramSoundPool);
  }
  
  public void onLoadComplete(SoundPool paramSoundPool, int paramInt1, int paramInt2)
  {
    if (paramSoundPool != null) {}
    try
    {
      AudioManager localAudioManager = (AudioManager)((Context)BridgeMMMedia.Audio.access$200(this$0).get()).getSystemService("audio");
      float f = (localAudioManager.getStreamVolume(3) + 0.0F) / localAudioManager.getStreamMaxVolume(3);
      paramSoundPool.play(paramInt1, f, f, 1, 0, 1.0F);
      return;
    }
    finally
    {
      paramSoundPool = finally;
      throw paramSoundPool;
    }
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.android.BridgeMMMedia.Audio.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */