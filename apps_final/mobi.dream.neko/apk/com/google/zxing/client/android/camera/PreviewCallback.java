package com.google.zxing.client.android.camera;

import android.graphics.Point;
import android.hardware.Camera;
import android.hardware.Camera.PreviewCallback;
import android.os.Handler;
import android.os.Message;
import android.util.Log;

final class PreviewCallback
  implements Camera.PreviewCallback
{
  private static final String TAG = PreviewCallback.class.getSimpleName();
  private final CameraConfigurationManager configManager;
  private Handler previewHandler;
  private int previewMessage;
  
  PreviewCallback(CameraConfigurationManager paramCameraConfigurationManager)
  {
    configManager = paramCameraConfigurationManager;
  }
  
  public void onPreviewFrame(byte[] paramArrayOfByte, Camera paramCamera)
  {
    paramCamera = configManager.getCameraResolution();
    Handler localHandler = previewHandler;
    if ((paramCamera != null) && (localHandler != null))
    {
      localHandler.obtainMessage(previewMessage, x, y, paramArrayOfByte).sendToTarget();
      previewHandler = null;
      return;
    }
    Log.d(TAG, "Got preview callback, but no handler or resolution available");
  }
  
  void setHandler(Handler paramHandler, int paramInt)
  {
    previewHandler = paramHandler;
    previewMessage = paramInt;
  }
}

/* Location:
 * Qualified Name:     com.google.zxing.client.android.camera.PreviewCallback
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */