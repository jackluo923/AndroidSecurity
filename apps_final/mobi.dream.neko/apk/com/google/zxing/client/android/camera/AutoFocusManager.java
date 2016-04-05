package com.google.zxing.client.android.camera;

import android.content.Context;
import android.content.SharedPreferences;
import android.hardware.Camera;
import android.hardware.Camera.AutoFocusCallback;
import android.hardware.Camera.Parameters;
import android.os.AsyncTask;
import android.preference.PreferenceManager;
import android.util.Log;
import com.google.zxing.client.android.common.executor.AsyncTaskExecInterface;
import com.google.zxing.client.android.common.executor.AsyncTaskExecManager;
import java.util.ArrayList;
import java.util.Collection;

final class AutoFocusManager
  implements Camera.AutoFocusCallback
{
  private static final long AUTO_FOCUS_INTERVAL_MS = 2000L;
  private static final Collection<String> FOCUS_MODES_CALLING_AF;
  private static final String TAG = AutoFocusManager.class.getSimpleName();
  private boolean active;
  private final Camera camera;
  private AutoFocusTask outstandingTask;
  private final AsyncTaskExecInterface taskExec;
  private final boolean useAutoFocus;
  
  static
  {
    FOCUS_MODES_CALLING_AF = new ArrayList(2);
    FOCUS_MODES_CALLING_AF.add("auto");
    FOCUS_MODES_CALLING_AF.add("macro");
  }
  
  AutoFocusManager(Context paramContext, Camera paramCamera)
  {
    camera = paramCamera;
    taskExec = ((AsyncTaskExecInterface)new AsyncTaskExecManager().build());
    paramContext = PreferenceManager.getDefaultSharedPreferences(paramContext);
    paramCamera = paramCamera.getParameters().getFocusMode();
    if ((paramContext.getBoolean("preferences_auto_focus", true)) && (FOCUS_MODES_CALLING_AF.contains(paramCamera))) {}
    for (boolean bool = true;; bool = false)
    {
      useAutoFocus = bool;
      Log.i(TAG, "Current focus mode '" + paramCamera + "'; use auto focus? " + useAutoFocus);
      start();
      return;
    }
  }
  
  public void onAutoFocus(boolean paramBoolean, Camera paramCamera)
  {
    try
    {
      if (active)
      {
        outstandingTask = new AutoFocusTask(null);
        taskExec.execute(outstandingTask, new Object[0]);
      }
      return;
    }
    finally
    {
      paramCamera = finally;
      throw paramCamera;
    }
  }
  
  /* Error */
  void start()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 104	com/google/zxing/client/android/camera/AutoFocusManager:useAutoFocus	Z
    //   6: ifeq +16 -> 22
    //   9: aload_0
    //   10: iconst_1
    //   11: putfield 134	com/google/zxing/client/android/camera/AutoFocusManager:active	Z
    //   14: aload_0
    //   15: getfield 63	com/google/zxing/client/android/camera/AutoFocusManager:camera	Landroid/hardware/Camera;
    //   18: aload_0
    //   19: invokevirtual 151	android/hardware/Camera:autoFocus	(Landroid/hardware/Camera$AutoFocusCallback;)V
    //   22: aload_0
    //   23: monitorexit
    //   24: return
    //   25: astore_1
    //   26: getstatic 39	com/google/zxing/client/android/camera/AutoFocusManager:TAG	Ljava/lang/String;
    //   29: ldc -103
    //   31: aload_1
    //   32: invokestatic 157	android/util/Log:w	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   35: pop
    //   36: goto -14 -> 22
    //   39: astore_1
    //   40: aload_0
    //   41: monitorexit
    //   42: aload_1
    //   43: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	44	0	this	AutoFocusManager
    //   25	7	1	localRuntimeException	RuntimeException
    //   39	4	1	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   14	22	25	java/lang/RuntimeException
    //   2	14	39	finally
    //   14	22	39	finally
    //   26	36	39	finally
  }
  
  /* Error */
  void stop()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 104	com/google/zxing/client/android/camera/AutoFocusManager:useAutoFocus	Z
    //   6: istore_2
    //   7: iload_2
    //   8: ifeq +10 -> 18
    //   11: aload_0
    //   12: getfield 63	com/google/zxing/client/android/camera/AutoFocusManager:camera	Landroid/hardware/Camera;
    //   15: invokevirtual 161	android/hardware/Camera:cancelAutoFocus	()V
    //   18: aload_0
    //   19: getfield 141	com/google/zxing/client/android/camera/AutoFocusManager:outstandingTask	Lcom/google/zxing/client/android/camera/AutoFocusManager$AutoFocusTask;
    //   22: ifnull +17 -> 39
    //   25: aload_0
    //   26: getfield 141	com/google/zxing/client/android/camera/AutoFocusManager:outstandingTask	Lcom/google/zxing/client/android/camera/AutoFocusManager$AutoFocusTask;
    //   29: iconst_1
    //   30: invokevirtual 165	com/google/zxing/client/android/camera/AutoFocusManager$AutoFocusTask:cancel	(Z)Z
    //   33: pop
    //   34: aload_0
    //   35: aconst_null
    //   36: putfield 141	com/google/zxing/client/android/camera/AutoFocusManager:outstandingTask	Lcom/google/zxing/client/android/camera/AutoFocusManager$AutoFocusTask;
    //   39: aload_0
    //   40: iconst_0
    //   41: putfield 134	com/google/zxing/client/android/camera/AutoFocusManager:active	Z
    //   44: aload_0
    //   45: monitorexit
    //   46: return
    //   47: astore_1
    //   48: getstatic 39	com/google/zxing/client/android/camera/AutoFocusManager:TAG	Ljava/lang/String;
    //   51: ldc -89
    //   53: aload_1
    //   54: invokestatic 157	android/util/Log:w	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   57: pop
    //   58: goto -40 -> 18
    //   61: astore_1
    //   62: aload_0
    //   63: monitorexit
    //   64: aload_1
    //   65: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	66	0	this	AutoFocusManager
    //   47	7	1	localRuntimeException	RuntimeException
    //   61	4	1	localObject	Object
    //   6	2	2	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   11	18	47	java/lang/RuntimeException
    //   2	7	61	finally
    //   11	18	61	finally
    //   18	39	61	finally
    //   39	44	61	finally
    //   48	58	61	finally
  }
  
  private final class AutoFocusTask
    extends AsyncTask<Object, Object, Object>
  {
    private AutoFocusTask() {}
    
    protected Object doInBackground(Object... arg1)
    {
      try
      {
        Thread.sleep(2000L);
        synchronized (AutoFocusManager.this)
        {
          if (active) {
            start();
          }
          return null;
        }
      }
      catch (InterruptedException ???)
      {
        for (;;) {}
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.google.zxing.client.android.camera.AutoFocusManager
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */