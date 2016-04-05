package com.google.zxing.client.android.camera;

import android.content.Context;
import android.graphics.Rect;
import android.hardware.Camera;
import android.hardware.Camera.Parameters;
import android.os.Handler;
import android.util.Log;
import android.view.SurfaceHolder;
import com.google.zxing.PlanarYUVLuminanceSource;
import com.google.zxing.client.android.camera.open.OpenCameraInterface;
import com.google.zxing.client.android.camera.open.OpenCameraManager;
import java.io.IOException;

public final class CameraManager
{
  private static final int MAX_FRAME_HEIGHT = 400;
  private static final int MAX_FRAME_WIDTH = 600;
  private static final int MIN_FRAME_HEIGHT = 240;
  private static final int MIN_FRAME_WIDTH = 240;
  private static final String TAG = CameraManager.class.getSimpleName();
  private AutoFocusManager autoFocusManager;
  private Camera camera;
  private final CameraConfigurationManager configManager;
  private final Context context;
  private Rect framingRect;
  private Rect framingRectInPreview;
  private boolean initialized;
  private final PreviewCallback previewCallback;
  private boolean previewing;
  private int requestedFramingRectHeight;
  private int requestedFramingRectWidth;
  
  public CameraManager(Context paramContext)
  {
    context = paramContext;
    configManager = new CameraConfigurationManager(paramContext);
    previewCallback = new PreviewCallback(configManager);
  }
  
  public PlanarYUVLuminanceSource buildLuminanceSource(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    Rect localRect = getFramingRectInPreview();
    if (localRect == null) {
      return null;
    }
    return new PlanarYUVLuminanceSource(paramArrayOfByte, paramInt1, paramInt2, left, top, localRect.width(), localRect.height(), false);
  }
  
  public void closeDriver()
  {
    try
    {
      if (camera != null)
      {
        camera.release();
        camera = null;
        framingRect = null;
        framingRectInPreview = null;
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  /* Error */
  public Rect getFramingRect()
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_1
    //   2: aload_0
    //   3: monitorenter
    //   4: aload_0
    //   5: getfield 98	com/google/zxing/client/android/camera/CameraManager:framingRect	Landroid/graphics/Rect;
    //   8: ifnonnull +147 -> 155
    //   11: aload_0
    //   12: getfield 91	com/google/zxing/client/android/camera/CameraManager:camera	Landroid/hardware/Camera;
    //   15: astore_2
    //   16: aload_2
    //   17: ifnonnull +7 -> 24
    //   20: aload_0
    //   21: monitorexit
    //   22: aload_1
    //   23: areturn
    //   24: aload_0
    //   25: getfield 55	com/google/zxing/client/android/camera/CameraManager:configManager	Lcom/google/zxing/client/android/camera/CameraConfigurationManager;
    //   28: invokevirtual 105	com/google/zxing/client/android/camera/CameraConfigurationManager:getScreenResolution	()Landroid/graphics/Point;
    //   31: astore_2
    //   32: aload_2
    //   33: ifnull -13 -> 20
    //   36: aload_2
    //   37: getfield 110	android/graphics/Point:x	I
    //   40: iconst_3
    //   41: imul
    //   42: iconst_4
    //   43: idiv
    //   44: istore 4
    //   46: iload 4
    //   48: sipush 240
    //   51: if_icmpge +112 -> 163
    //   54: sipush 240
    //   57: istore_3
    //   58: aload_2
    //   59: getfield 113	android/graphics/Point:y	I
    //   62: iconst_3
    //   63: imul
    //   64: iconst_4
    //   65: idiv
    //   66: istore 5
    //   68: iload 5
    //   70: sipush 240
    //   73: if_icmpge +108 -> 181
    //   76: sipush 240
    //   79: istore 4
    //   81: aload_2
    //   82: getfield 110	android/graphics/Point:x	I
    //   85: iload_3
    //   86: isub
    //   87: iconst_2
    //   88: idiv
    //   89: istore 5
    //   91: aload_2
    //   92: getfield 113	android/graphics/Point:y	I
    //   95: iload 4
    //   97: isub
    //   98: iconst_2
    //   99: idiv
    //   100: istore 6
    //   102: aload_0
    //   103: new 72	android/graphics/Rect
    //   106: dup
    //   107: iload 5
    //   109: iload 6
    //   111: iload 5
    //   113: iload_3
    //   114: iadd
    //   115: iload 6
    //   117: iload 4
    //   119: iadd
    //   120: invokespecial 116	android/graphics/Rect:<init>	(IIII)V
    //   123: putfield 98	com/google/zxing/client/android/camera/CameraManager:framingRect	Landroid/graphics/Rect;
    //   126: getstatic 42	com/google/zxing/client/android/camera/CameraManager:TAG	Ljava/lang/String;
    //   129: new 118	java/lang/StringBuilder
    //   132: dup
    //   133: invokespecial 119	java/lang/StringBuilder:<init>	()V
    //   136: ldc 121
    //   138: invokevirtual 125	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   141: aload_0
    //   142: getfield 98	com/google/zxing/client/android/camera/CameraManager:framingRect	Landroid/graphics/Rect;
    //   145: invokevirtual 128	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   148: invokevirtual 131	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   151: invokestatic 137	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   154: pop
    //   155: aload_0
    //   156: getfield 98	com/google/zxing/client/android/camera/CameraManager:framingRect	Landroid/graphics/Rect;
    //   159: astore_1
    //   160: goto -140 -> 20
    //   163: iload 4
    //   165: istore_3
    //   166: iload 4
    //   168: sipush 600
    //   171: if_icmple -113 -> 58
    //   174: sipush 600
    //   177: istore_3
    //   178: goto -120 -> 58
    //   181: iload 5
    //   183: istore 4
    //   185: iload 5
    //   187: sipush 400
    //   190: if_icmple -109 -> 81
    //   193: sipush 400
    //   196: istore 4
    //   198: goto -117 -> 81
    //   201: astore_1
    //   202: aload_0
    //   203: monitorexit
    //   204: aload_1
    //   205: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	206	0	this	CameraManager
    //   1	159	1	localRect	Rect
    //   201	4	1	localObject1	Object
    //   15	77	2	localObject2	Object
    //   57	121	3	i	int
    //   44	153	4	j	int
    //   66	125	5	k	int
    //   100	20	6	m	int
    // Exception table:
    //   from	to	target	type
    //   4	16	201	finally
    //   24	32	201	finally
    //   36	46	201	finally
    //   58	68	201	finally
    //   81	155	201	finally
    //   155	160	201	finally
  }
  
  /* Error */
  public Rect getFramingRectInPreview()
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: aload_0
    //   3: monitorenter
    //   4: aload_0
    //   5: getfield 100	com/google/zxing/client/android/camera/CameraManager:framingRectInPreview	Landroid/graphics/Rect;
    //   8: ifnonnull +144 -> 152
    //   11: aload_0
    //   12: invokevirtual 139	com/google/zxing/client/android/camera/CameraManager:getFramingRect	()Landroid/graphics/Rect;
    //   15: astore_1
    //   16: aload_1
    //   17: ifnonnull +9 -> 26
    //   20: aload_2
    //   21: astore_1
    //   22: aload_0
    //   23: monitorexit
    //   24: aload_1
    //   25: areturn
    //   26: new 72	android/graphics/Rect
    //   29: dup
    //   30: aload_1
    //   31: invokespecial 142	android/graphics/Rect:<init>	(Landroid/graphics/Rect;)V
    //   34: astore_3
    //   35: aload_0
    //   36: getfield 55	com/google/zxing/client/android/camera/CameraManager:configManager	Lcom/google/zxing/client/android/camera/CameraConfigurationManager;
    //   39: invokevirtual 145	com/google/zxing/client/android/camera/CameraConfigurationManager:getCameraResolution	()Landroid/graphics/Point;
    //   42: astore 4
    //   44: aload_0
    //   45: getfield 55	com/google/zxing/client/android/camera/CameraManager:configManager	Lcom/google/zxing/client/android/camera/CameraConfigurationManager;
    //   48: invokevirtual 105	com/google/zxing/client/android/camera/CameraConfigurationManager:getScreenResolution	()Landroid/graphics/Point;
    //   51: astore 5
    //   53: aload_2
    //   54: astore_1
    //   55: aload 4
    //   57: ifnull -35 -> 22
    //   60: aload_2
    //   61: astore_1
    //   62: aload 5
    //   64: ifnull -42 -> 22
    //   67: aload_3
    //   68: aload_3
    //   69: getfield 75	android/graphics/Rect:left	I
    //   72: aload 4
    //   74: getfield 110	android/graphics/Point:x	I
    //   77: imul
    //   78: aload 5
    //   80: getfield 110	android/graphics/Point:x	I
    //   83: idiv
    //   84: putfield 75	android/graphics/Rect:left	I
    //   87: aload_3
    //   88: aload_3
    //   89: getfield 148	android/graphics/Rect:right	I
    //   92: aload 4
    //   94: getfield 110	android/graphics/Point:x	I
    //   97: imul
    //   98: aload 5
    //   100: getfield 110	android/graphics/Point:x	I
    //   103: idiv
    //   104: putfield 148	android/graphics/Rect:right	I
    //   107: aload_3
    //   108: aload_3
    //   109: getfield 78	android/graphics/Rect:top	I
    //   112: aload 4
    //   114: getfield 113	android/graphics/Point:y	I
    //   117: imul
    //   118: aload 5
    //   120: getfield 113	android/graphics/Point:y	I
    //   123: idiv
    //   124: putfield 78	android/graphics/Rect:top	I
    //   127: aload_3
    //   128: aload_3
    //   129: getfield 151	android/graphics/Rect:bottom	I
    //   132: aload 4
    //   134: getfield 113	android/graphics/Point:y	I
    //   137: imul
    //   138: aload 5
    //   140: getfield 113	android/graphics/Point:y	I
    //   143: idiv
    //   144: putfield 151	android/graphics/Rect:bottom	I
    //   147: aload_0
    //   148: aload_3
    //   149: putfield 100	com/google/zxing/client/android/camera/CameraManager:framingRectInPreview	Landroid/graphics/Rect;
    //   152: aload_0
    //   153: getfield 100	com/google/zxing/client/android/camera/CameraManager:framingRectInPreview	Landroid/graphics/Rect;
    //   156: astore_1
    //   157: goto -135 -> 22
    //   160: astore_1
    //   161: aload_0
    //   162: monitorexit
    //   163: aload_1
    //   164: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	165	0	this	CameraManager
    //   15	142	1	localObject1	Object
    //   160	4	1	localObject2	Object
    //   1	60	2	localObject3	Object
    //   34	115	3	localRect	Rect
    //   42	91	4	localPoint1	android.graphics.Point
    //   51	88	5	localPoint2	android.graphics.Point
    // Exception table:
    //   from	to	target	type
    //   4	16	160	finally
    //   26	53	160	finally
    //   67	152	160	finally
    //   152	157	160	finally
  }
  
  /* Error */
  public boolean isOpen()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 91	com/google/zxing/client/android/camera/CameraManager:camera	Landroid/hardware/Camera;
    //   6: astore_1
    //   7: aload_1
    //   8: ifnull +9 -> 17
    //   11: iconst_1
    //   12: istore_2
    //   13: aload_0
    //   14: monitorexit
    //   15: iload_2
    //   16: ireturn
    //   17: iconst_0
    //   18: istore_2
    //   19: goto -6 -> 13
    //   22: astore_1
    //   23: aload_0
    //   24: monitorexit
    //   25: aload_1
    //   26: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	27	0	this	CameraManager
    //   6	2	1	localCamera	Camera
    //   22	4	1	localObject	Object
    //   12	7	2	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   2	7	22	finally
  }
  
  public void openDriver(SurfaceHolder paramSurfaceHolder)
    throws IOException
  {
    Camera localCamera1;
    try
    {
      Camera localCamera2 = camera;
      localCamera1 = localCamera2;
      if (localCamera2 != null) {
        break label54;
      }
      localCamera1 = ((OpenCameraInterface)new OpenCameraManager().build()).open();
      if (localCamera1 == null) {
        throw new IOException();
      }
    }
    finally {}
    camera = localCamera1;
    label54:
    localCamera1.setPreviewDisplay(paramSurfaceHolder);
    if (!initialized)
    {
      initialized = true;
      configManager.initFromCameraParameters(localCamera1);
      if ((requestedFramingRectWidth > 0) && (requestedFramingRectHeight > 0))
      {
        setManualFramingRect(requestedFramingRectWidth, requestedFramingRectHeight);
        requestedFramingRectWidth = 0;
        requestedFramingRectHeight = 0;
      }
    }
    paramSurfaceHolder = localCamera1.getParameters();
    if (paramSurfaceHolder == null) {
      paramSurfaceHolder = null;
    }
    try
    {
      for (;;)
      {
        configManager.setDesiredCameraParameters(localCamera1, false);
        return;
        paramSurfaceHolder = paramSurfaceHolder.flatten();
      }
    }
    catch (RuntimeException localRuntimeException)
    {
      for (;;)
      {
        Log.w(TAG, "Camera rejected parameters. Setting only minimal safe-mode parameters");
        Log.i(TAG, "Resetting to saved camera params: " + paramSurfaceHolder);
        if (paramSurfaceHolder != null)
        {
          Camera.Parameters localParameters = localCamera1.getParameters();
          localParameters.unflatten(paramSurfaceHolder);
          try
          {
            localCamera1.setParameters(localParameters);
            configManager.setDesiredCameraParameters(localCamera1, true);
          }
          catch (RuntimeException paramSurfaceHolder)
          {
            Log.w(TAG, "Camera rejected even safe-mode parameters! No configuration");
          }
        }
      }
    }
  }
  
  public void requestPreviewFrame(Handler paramHandler, int paramInt)
  {
    try
    {
      Camera localCamera = camera;
      if ((localCamera != null) && (previewing))
      {
        previewCallback.setHandler(paramHandler, paramInt);
        localCamera.setOneShotPreviewCallback(previewCallback);
      }
      return;
    }
    finally {}
  }
  
  /* Error */
  public void setManualFramingRect(int paramInt1, int paramInt2)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 178	com/google/zxing/client/android/camera/CameraManager:initialized	Z
    //   6: ifeq +122 -> 128
    //   9: aload_0
    //   10: getfield 55	com/google/zxing/client/android/camera/CameraManager:configManager	Lcom/google/zxing/client/android/camera/CameraConfigurationManager;
    //   13: invokevirtual 105	com/google/zxing/client/android/camera/CameraConfigurationManager:getScreenResolution	()Landroid/graphics/Point;
    //   16: astore_3
    //   17: iload_1
    //   18: istore 4
    //   20: iload_1
    //   21: aload_3
    //   22: getfield 110	android/graphics/Point:x	I
    //   25: if_icmple +9 -> 34
    //   28: aload_3
    //   29: getfield 110	android/graphics/Point:x	I
    //   32: istore 4
    //   34: iload_2
    //   35: istore_1
    //   36: iload_2
    //   37: aload_3
    //   38: getfield 113	android/graphics/Point:y	I
    //   41: if_icmple +8 -> 49
    //   44: aload_3
    //   45: getfield 113	android/graphics/Point:y	I
    //   48: istore_1
    //   49: aload_3
    //   50: getfield 110	android/graphics/Point:x	I
    //   53: iload 4
    //   55: isub
    //   56: iconst_2
    //   57: idiv
    //   58: istore_2
    //   59: aload_3
    //   60: getfield 113	android/graphics/Point:y	I
    //   63: iload_1
    //   64: isub
    //   65: iconst_2
    //   66: idiv
    //   67: istore 5
    //   69: aload_0
    //   70: new 72	android/graphics/Rect
    //   73: dup
    //   74: iload_2
    //   75: iload 5
    //   77: iload_2
    //   78: iload 4
    //   80: iadd
    //   81: iload 5
    //   83: iload_1
    //   84: iadd
    //   85: invokespecial 116	android/graphics/Rect:<init>	(IIII)V
    //   88: putfield 98	com/google/zxing/client/android/camera/CameraManager:framingRect	Landroid/graphics/Rect;
    //   91: getstatic 42	com/google/zxing/client/android/camera/CameraManager:TAG	Ljava/lang/String;
    //   94: new 118	java/lang/StringBuilder
    //   97: dup
    //   98: invokespecial 119	java/lang/StringBuilder:<init>	()V
    //   101: ldc -19
    //   103: invokevirtual 125	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   106: aload_0
    //   107: getfield 98	com/google/zxing/client/android/camera/CameraManager:framingRect	Landroid/graphics/Rect;
    //   110: invokevirtual 128	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   113: invokevirtual 131	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   116: invokestatic 137	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   119: pop
    //   120: aload_0
    //   121: aconst_null
    //   122: putfield 100	com/google/zxing/client/android/camera/CameraManager:framingRectInPreview	Landroid/graphics/Rect;
    //   125: aload_0
    //   126: monitorexit
    //   127: return
    //   128: aload_0
    //   129: iload_1
    //   130: putfield 184	com/google/zxing/client/android/camera/CameraManager:requestedFramingRectWidth	I
    //   133: aload_0
    //   134: iload_2
    //   135: putfield 186	com/google/zxing/client/android/camera/CameraManager:requestedFramingRectHeight	I
    //   138: goto -13 -> 125
    //   141: astore_3
    //   142: aload_0
    //   143: monitorexit
    //   144: aload_3
    //   145: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	146	0	this	CameraManager
    //   0	146	1	paramInt1	int
    //   0	146	2	paramInt2	int
    //   16	44	3	localPoint	android.graphics.Point
    //   141	4	3	localObject	Object
    //   18	63	4	i	int
    //   67	18	5	j	int
    // Exception table:
    //   from	to	target	type
    //   2	17	141	finally
    //   20	34	141	finally
    //   36	49	141	finally
    //   49	125	141	finally
    //   128	138	141	finally
  }
  
  public void setTorch(boolean paramBoolean)
  {
    try
    {
      if (camera != null)
      {
        if (autoFocusManager != null) {
          autoFocusManager.stop();
        }
        configManager.setTorch(camera, paramBoolean);
        if (autoFocusManager != null) {
          autoFocusManager.start();
        }
      }
      return;
    }
    finally {}
  }
  
  public void startPreview()
  {
    try
    {
      Camera localCamera = camera;
      if ((localCamera != null) && (!previewing))
      {
        localCamera.startPreview();
        previewing = true;
        autoFocusManager = new AutoFocusManager(context, camera);
      }
      return;
    }
    finally {}
  }
  
  public void stopPreview()
  {
    try
    {
      if (autoFocusManager != null)
      {
        autoFocusManager.stop();
        autoFocusManager = null;
      }
      if ((camera != null) && (previewing))
      {
        camera.stopPreview();
        previewCallback.setHandler(null, 0);
        previewing = false;
      }
      return;
    }
    finally {}
  }
}

/* Location:
 * Qualified Name:     com.google.zxing.client.android.camera.CameraManager
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */