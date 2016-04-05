package com.adsdk.sdk.video;

import android.media.MediaPlayer;
import android.os.ConditionVariable;
import android.os.Handler;
import android.util.SparseArray;
import com.adsdk.sdk.Log;
import java.util.Vector;

class SDKVideoView$8
  implements Runnable
{
  SDKVideoView$8(SDKVideoView paramSDKVideoView) {}
  
  public void run()
  {
    Log.d("Time Event Thread started");
    if ((SDKVideoView.access$2(this$0) != null) && (SDKVideoView.access$20(this$0) == 3)) {}
    for (;;)
    {
      try
      {
        j = SDKVideoView.access$2(this$0).getCurrentPosition() / 1000;
        localVector = (Vector)SDKVideoView.access$21(this$0).get(j);
        if (localVector != null)
        {
          i = 0;
          if (i < localVector.size()) {
            continue;
          }
          localVector.clear();
        }
      }
      catch (Exception localException)
      {
        int j;
        Vector localVector;
        int i;
        SDKVideoView.OnTimeEventListener localOnTimeEventListener;
        Log.e("Time Event Thread error" + localException, localException);
        continue;
      }
      if (!SDKVideoView.access$22(this$0).block(1000L)) {
        break;
      }
      Log.v("Time Event Thread stopped");
      return;
      localOnTimeEventListener = (SDKVideoView.OnTimeEventListener)localVector.elementAt(i);
      this$0.mHandler.post(new SDKVideoView.8.1(this, localOnTimeEventListener, j));
      i += 1;
    }
  }
}

/* Location:
 * Qualified Name:     com.adsdk.sdk.video.SDKVideoView.8
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */