package com.google.android.gms.wearable;

import com.google.android.gms.common.data.DataHolder;

class WearableListenerService$a$1
  implements Runnable
{
  WearableListenerService$a$1(WearableListenerService.a parama, DataHolder paramDataHolder) {}
  
  public void run()
  {
    DataEventBuffer localDataEventBuffer = new DataEventBuffer(als);
    try
    {
      alt.alr.onDataChanged(localDataEventBuffer);
      return;
    }
    finally
    {
      localDataEventBuffer.release();
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.wearable.WearableListenerService.a.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */