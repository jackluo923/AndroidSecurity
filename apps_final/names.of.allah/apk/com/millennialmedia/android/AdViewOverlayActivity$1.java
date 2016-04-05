package com.millennialmedia.android;

import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;

class AdViewOverlayActivity$1
  implements SensorEventListener
{
  private long currentTime = 0L;
  private float force = 0.0F;
  private float lastX = 0.0F;
  private float lastY = 0.0F;
  private float lastZ = 0.0F;
  private long prevShakeTime = 0L;
  private long prevTime = 0L;
  private long timeDifference = 0L;
  private float x = 0.0F;
  private float y = 0.0F;
  private float z = 0.0F;
  
  AdViewOverlayActivity$1(AdViewOverlayActivity paramAdViewOverlayActivity) {}
  
  public void onAccuracyChanged(Sensor paramSensor, int paramInt) {}
  
  public void onSensorChanged(SensorEvent paramSensorEvent)
  {
    currentTime = timestamp;
    x = values[0];
    y = values[1];
    z = values[2];
    timeDifference = (currentTime - prevTime);
    if (timeDifference > 500L)
    {
      AdViewOverlayActivity.access$000(this$0, x, y, z);
      force = (Math.abs(x + y + z - lastX - lastY - lastZ) / (float)timeDifference);
      AdViewOverlayActivity.access$000(this$0, x, y, z);
      if (force > 0.2F)
      {
        if (currentTime - prevShakeTime >= 1000L) {
          AdViewOverlayActivity.access$100(this$0, force);
        }
        prevShakeTime = currentTime;
      }
      lastX = x;
      lastY = y;
      lastZ = z;
      prevTime = currentTime;
    }
  }
}

/* Location:
 * Qualified Name:     com.millennialmedia.android.AdViewOverlayActivity.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */