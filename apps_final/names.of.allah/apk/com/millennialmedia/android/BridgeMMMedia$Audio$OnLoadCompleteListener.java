package com.millennialmedia.android;

import android.media.SoundPool;
import java.util.ArrayList;
import java.util.Timer;

abstract class BridgeMMMedia$Audio$OnLoadCompleteListener
{
  private static final int TEST_PERIOD_MS = 100;
  private ArrayList<Integer> sampleIds = new ArrayList();
  private SoundPool soundPool;
  private Timer timer;
  
  public BridgeMMMedia$Audio$OnLoadCompleteListener(BridgeMMMedia.Audio paramAudio, SoundPool paramSoundPool)
  {
    soundPool = paramSoundPool;
  }
  
  abstract void onLoadComplete(SoundPool paramSoundPool, int paramInt1, int paramInt2);
  
  void release()
  {
    try
    {
      if (timer != null)
      {
        timer.cancel();
        timer.purge();
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  void testSample(int paramInt)
  {
    try
    {
      sampleIds.add(Integer.valueOf(paramInt));
      if (sampleIds.size() == 1)
      {
        timer = new Timer();
        timer.scheduleAtFixedRate(new BridgeMMMedia.Audio.OnLoadCompleteListener.1(this), 0L, 100L);
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.android.BridgeMMMedia.Audio.OnLoadCompleteListener
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */