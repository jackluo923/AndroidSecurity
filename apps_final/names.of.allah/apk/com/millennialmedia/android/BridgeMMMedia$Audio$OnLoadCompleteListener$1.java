package com.millennialmedia.android;

import android.media.SoundPool;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Timer;
import java.util.TimerTask;

class BridgeMMMedia$Audio$OnLoadCompleteListener$1
  extends TimerTask
{
  BridgeMMMedia$Audio$OnLoadCompleteListener$1(BridgeMMMedia.Audio.OnLoadCompleteListener paramOnLoadCompleteListener) {}
  
  public void run()
  {
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = BridgeMMMedia.Audio.OnLoadCompleteListener.access$300(this$1).iterator();
    while (localIterator.hasNext())
    {
      Integer localInteger = (Integer)localIterator.next();
      int i = BridgeMMMedia.Audio.OnLoadCompleteListener.access$400(this$1).play(localInteger.intValue(), 0.0F, 0.0F, 0, 0, 1.0F);
      if (i != 0)
      {
        BridgeMMMedia.Audio.OnLoadCompleteListener.access$400(this$1).stop(i);
        this$1.onLoadComplete(BridgeMMMedia.Audio.OnLoadCompleteListener.access$400(this$1), localInteger.intValue(), 0);
        localArrayList.add(localInteger);
      }
    }
    BridgeMMMedia.Audio.OnLoadCompleteListener.access$300(this$1).removeAll(localArrayList);
    if (BridgeMMMedia.Audio.OnLoadCompleteListener.access$300(this$1).size() == 0)
    {
      BridgeMMMedia.Audio.OnLoadCompleteListener.access$500(this$1).cancel();
      BridgeMMMedia.Audio.OnLoadCompleteListener.access$500(this$1).purge();
    }
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.android.BridgeMMMedia.Audio.OnLoadCompleteListener.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */