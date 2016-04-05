package com.google.zxing.client.android.camera;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.graphics.Point;
import android.hardware.Camera;
import android.hardware.Camera.Parameters;
import android.hardware.Camera.Size;
import android.preference.PreferenceManager;
import android.util.Log;
import android.view.Display;
import android.view.WindowManager;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;

final class CameraConfigurationManager
{
  private static final int MAX_PREVIEW_PIXELS = 921600;
  private static final int MIN_PREVIEW_PIXELS = 150400;
  private static final String TAG = "CameraConfiguration";
  private Point cameraResolution;
  private final Context context;
  private Point screenResolution;
  
  CameraConfigurationManager(Context paramContext)
  {
    context = paramContext;
  }
  
  private void doSetTorch(Camera.Parameters paramParameters, boolean paramBoolean1, boolean paramBoolean2)
  {
    if (paramBoolean1) {}
    for (String str = findSettableValue(paramParameters.getSupportedFlashModes(), new String[] { "torch", "on" });; str = findSettableValue(paramParameters.getSupportedFlashModes(), new String[] { "off" }))
    {
      if (str != null) {
        paramParameters.setFlashMode(str);
      }
      return;
    }
  }
  
  private Point findBestPreviewSizeValue(Camera.Parameters paramParameters, Point paramPoint)
  {
    Object localObject1 = paramParameters.getSupportedPreviewSizes();
    if (localObject1 == null)
    {
      Log.w("CameraConfiguration", "Device returned no supported preview sizes; using default");
      paramParameters = paramParameters.getPreviewSize();
      return new Point(width, height);
    }
    Object localObject2 = new ArrayList((Collection)localObject1);
    Collections.sort((List)localObject2, new Comparator()
    {
      public int compare(Camera.Size paramAnonymousSize1, Camera.Size paramAnonymousSize2)
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
    });
    Object localObject3;
    if (Log.isLoggable("CameraConfiguration", 4))
    {
      localObject1 = new StringBuilder();
      localObject3 = ((List)localObject2).iterator();
      while (((Iterator)localObject3).hasNext())
      {
        Camera.Size localSize = (Camera.Size)((Iterator)localObject3).next();
        ((StringBuilder)localObject1).append(width).append('x').append(height).append(' ');
      }
      Log.i("CameraConfiguration", "Supported preview sizes: " + localObject1);
    }
    localObject1 = null;
    float f3 = x / y;
    float f1 = Float.POSITIVE_INFINITY;
    localObject2 = ((List)localObject2).iterator();
    while (((Iterator)localObject2).hasNext())
    {
      localObject3 = (Camera.Size)((Iterator)localObject2).next();
      int i = width;
      int j = height;
      int k = i * j;
      if ((k >= 150400) && (k <= 921600))
      {
        if (i < j)
        {
          m = 1;
          if (m == 0) {
            break label347;
          }
          k = j;
          label275:
          if (m == 0) {
            break label354;
          }
        }
        label347:
        label354:
        for (int m = i;; m = j)
        {
          if ((k != x) || (m != y)) {
            break label361;
          }
          paramParameters = new Point(i, j);
          Log.i("CameraConfiguration", "Found preview size exactly matching screen size: " + paramParameters);
          return paramParameters;
          m = 0;
          break;
          k = i;
          break label275;
        }
        label361:
        float f2 = Math.abs(k / m - f3);
        if (f2 < f1)
        {
          localObject1 = new Point(i, j);
          f1 = f2;
        }
      }
    }
    paramPoint = (Point)localObject1;
    if (localObject1 == null)
    {
      paramParameters = paramParameters.getPreviewSize();
      paramPoint = new Point(width, height);
      Log.i("CameraConfiguration", "No suitable preview sizes, using default: " + paramPoint);
    }
    Log.i("CameraConfiguration", "Found best approximate preview size: " + paramPoint);
    return paramPoint;
  }
  
  private static String findSettableValue(Collection<String> paramCollection, String... paramVarArgs)
  {
    Log.i("CameraConfiguration", "Supported values: " + paramCollection);
    Object localObject2 = null;
    Object localObject1 = localObject2;
    int j;
    int i;
    if (paramCollection != null)
    {
      j = paramVarArgs.length;
      i = 0;
    }
    for (;;)
    {
      localObject1 = localObject2;
      if (i < j)
      {
        localObject1 = paramVarArgs[i];
        if (!paramCollection.contains(localObject1)) {}
      }
      else
      {
        Log.i("CameraConfiguration", "Settable value: " + (String)localObject1);
        return (String)localObject1;
      }
      i += 1;
    }
  }
  
  private void initializeTorch(Camera.Parameters paramParameters, SharedPreferences paramSharedPreferences, boolean paramBoolean)
  {
    doSetTorch(paramParameters, paramSharedPreferences.getBoolean("preferences_front_light", false), paramBoolean);
  }
  
  Point getCameraResolution()
  {
    return cameraResolution;
  }
  
  Point getScreenResolution()
  {
    return screenResolution;
  }
  
  void initFromCameraParameters(Camera paramCamera)
  {
    paramCamera = paramCamera.getParameters();
    Display localDisplay = ((WindowManager)context.getSystemService("window")).getDefaultDisplay();
    int i = localDisplay.getWidth();
    int k = localDisplay.getHeight();
    int m = k;
    int j = i;
    if (i < k)
    {
      Log.i("CameraConfiguration", "Display reports portrait orientation; assuming this is incorrect");
      j = k;
      m = i;
    }
    screenResolution = new Point(j, m);
    Log.i("CameraConfiguration", "Screen resolution: " + screenResolution);
    cameraResolution = findBestPreviewSizeValue(paramCamera, screenResolution);
    Log.i("CameraConfiguration", "Camera resolution: " + cameraResolution);
  }
  
  void setDesiredCameraParameters(Camera paramCamera, boolean paramBoolean)
  {
    Camera.Parameters localParameters = paramCamera.getParameters();
    if (localParameters == null)
    {
      Log.w("CameraConfiguration", "Device error: no camera parameters are available. Proceeding without configuration.");
      return;
    }
    Log.i("CameraConfiguration", "Initial camera parameters: " + localParameters.flatten());
    if (paramBoolean) {
      Log.w("CameraConfiguration", "In camera config safe mode -- most settings will not be honored");
    }
    Object localObject = PreferenceManager.getDefaultSharedPreferences(context);
    initializeTorch(localParameters, (SharedPreferences)localObject, paramBoolean);
    String str = null;
    if (((SharedPreferences)localObject).getBoolean("preferences_auto_focus", true)) {
      if ((!paramBoolean) && (!((SharedPreferences)localObject).getBoolean("preferences_disable_continuous_focus", false))) {
        break label208;
      }
    }
    label208:
    for (str = findSettableValue(localParameters.getSupportedFocusModes(), new String[] { "auto" });; str = findSettableValue(localParameters.getSupportedFocusModes(), new String[] { "continuous-picture", "continuous-video", "auto" }))
    {
      localObject = str;
      if (!paramBoolean)
      {
        localObject = str;
        if (str == null) {
          localObject = findSettableValue(localParameters.getSupportedFocusModes(), new String[] { "macro", "edof" });
        }
      }
      if (localObject != null) {
        localParameters.setFocusMode((String)localObject);
      }
      localParameters.setPreviewSize(cameraResolution.x, cameraResolution.y);
      paramCamera.setParameters(localParameters);
      return;
    }
  }
  
  void setTorch(Camera paramCamera, boolean paramBoolean)
  {
    Camera.Parameters localParameters = paramCamera.getParameters();
    doSetTorch(localParameters, paramBoolean, false);
    paramCamera.setParameters(localParameters);
    paramCamera = PreferenceManager.getDefaultSharedPreferences(context);
    if (paramCamera.getBoolean("preferences_front_light", false) != paramBoolean)
    {
      paramCamera = paramCamera.edit();
      paramCamera.putBoolean("preferences_front_light", paramBoolean);
      paramCamera.commit();
    }
  }
}

/* Location:
 * Qualified Name:     com.google.zxing.client.android.camera.CameraConfigurationManager
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */