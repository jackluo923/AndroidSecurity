package com.google.zxing.client.android.camera.exposure;

import android.annotation.TargetApi;
import android.hardware.Camera.Parameters;
import android.util.Log;

@TargetApi(8)
public final class FroyoExposureInterface
  implements ExposureInterface
{
  private static final float MAX_EXPOSURE_COMPENSATION = 1.5F;
  private static final float MIN_EXPOSURE_COMPENSATION = 0.0F;
  private static final String TAG = FroyoExposureInterface.class.getSimpleName();
  
  public void setExposure(Camera.Parameters paramParameters, boolean paramBoolean)
  {
    int i = paramParameters.getMinExposureCompensation();
    int j = paramParameters.getMaxExposureCompensation();
    if ((i != 0) || (j != 0))
    {
      float f = paramParameters.getExposureCompensationStep();
      if (paramBoolean) {}
      for (i = Math.max((int)(0.0F / f), i);; i = Math.min((int)(1.5F / f), j))
      {
        Log.i(TAG, "Setting exposure compensation to " + i + " / " + i * f);
        paramParameters.setExposureCompensation(i);
        return;
      }
    }
    Log.i(TAG, "Camera does not support exposure compensation");
  }
}

/* Location:
 * Qualified Name:     com.google.zxing.client.android.camera.exposure.FroyoExposureInterface
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */