package com.google.zxing.client.android.camera.open;

import android.annotation.TargetApi;
import android.hardware.Camera;
import android.hardware.Camera.CameraInfo;
import android.util.Log;

@TargetApi(9)
public final class GingerbreadOpenCameraInterface
  implements OpenCameraInterface
{
  private static final String TAG = "GingerbreadOpenCamera";
  
  public Camera open()
  {
    int j = Camera.getNumberOfCameras();
    if (j == 0)
    {
      Log.w("GingerbreadOpenCamera", "No cameras!");
      return null;
    }
    int i = 0;
    for (;;)
    {
      if (i < j)
      {
        Camera.CameraInfo localCameraInfo = new Camera.CameraInfo();
        Camera.getCameraInfo(i, localCameraInfo);
        if (facing != 0) {}
      }
      else
      {
        if (i >= j) {
          break;
        }
        Log.i("GingerbreadOpenCamera", "Opening camera #" + i);
        return Camera.open(i);
      }
      i += 1;
    }
    Log.i("GingerbreadOpenCamera", "No camera facing back; returning camera #0");
    return Camera.open(0);
  }
}

/* Location:
 * Qualified Name:     com.google.zxing.client.android.camera.open.GingerbreadOpenCameraInterface
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */