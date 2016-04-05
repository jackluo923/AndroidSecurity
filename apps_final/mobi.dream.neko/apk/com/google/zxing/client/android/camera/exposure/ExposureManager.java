package com.google.zxing.client.android.camera.exposure;

import com.google.zxing.client.android.common.PlatformSupportManager;

public final class ExposureManager
  extends PlatformSupportManager<ExposureInterface>
{
  public ExposureManager()
  {
    super(ExposureInterface.class, new DefaultExposureInterface());
    addImplementationClass(8, "com.google.zxing.client.android.camera.exposure.FroyoExposureInterface");
  }
}

/* Location:
 * Qualified Name:     com.google.zxing.client.android.camera.exposure.ExposureManager
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */