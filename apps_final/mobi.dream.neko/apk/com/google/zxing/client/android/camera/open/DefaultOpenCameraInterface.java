package com.google.zxing.client.android.camera.open;

import android.hardware.Camera;

final class DefaultOpenCameraInterface
  implements OpenCameraInterface
{
  public Camera open()
  {
    return Camera.open();
  }
}

/* Location:
 * Qualified Name:     com.google.zxing.client.android.camera.open.DefaultOpenCameraInterface
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */