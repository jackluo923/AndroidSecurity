package com.SoundboardEngine;

import android.content.Context;
import android.media.MediaPlayer;
import android.media.MediaPlayer.OnCompletionListener;
import java.util.ArrayList;

public class SoundManager
{
  private Context context;
  private ArrayList playingSounds;
  
  public SoundManager(Context paramContext)
  {
    ArrayList localArrayList = new java/util/ArrayList;
    localArrayList.<init>();
    playingSounds = localArrayList;
    context = paramContext;
  }
  
  public void playSound(int paramInt)
  {
    Object localObject = context;
    MediaPlayer localMediaPlayer = MediaPlayer.create((Context)localObject, paramInt);
    localObject = new com/SoundboardEngine/SoundManager$1;
    ((SoundManager.1)localObject).<init>(this);
    localMediaPlayer.setOnCompletionListener((MediaPlayer.OnCompletionListener)localObject);
    localObject = playingSounds;
    ((ArrayList)localObject).add(localMediaPlayer);
    localMediaPlayer.start();
  }
  
  public void stopSounds()
  {
    int j = 0;
    ArrayList localArrayList = playingSounds;
    int i = localArrayList.size();
    if (i > 0)
    {
      Object localObject = playingSounds;
      localObject = ((ArrayList)localObject).get(j);
      localObject = (MediaPlayer)localObject;
      ((MediaPlayer)localObject).stop();
      localObject = playingSounds;
      localObject = ((ArrayList)localObject).get(j);
      localObject = (MediaPlayer)localObject;
      ((MediaPlayer)localObject).release();
      localObject = playingSounds;
      ((ArrayList)localObject).remove(j);
      stopSounds();
    }
  }
}

/* Location:
 * Qualified Name:     com.SoundboardEngine.SoundManager
 * Java Class Version: 1.2 (46.0)
 * JD-Core Version:    0.7.1
 */