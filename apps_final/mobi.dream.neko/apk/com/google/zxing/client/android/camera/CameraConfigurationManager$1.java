package com.google.zxing.client.android.camera;

import android.hardware.Camera.Size;
import java.util.Comparator;

class CameraConfigurationManager$1
  implements Comparator<Camera.Size>
{
  CameraConfigurationManager$1(CameraConfigurationManager paramCameraConfigurationManager) {}
  
  public int compare(Camera.Size paramSize1, Camera.Size paramSize2)
  {
    int i = height * width;
    int j = height * width;
    if (j < i) {
      return -1;
    }
    if (j > i) {
      return 1;
    }
    return 0;
  }
}

/* Location:
 * Qualified Name:     com.google.zxing.client.android.camera.CameraConfigurationManager.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */