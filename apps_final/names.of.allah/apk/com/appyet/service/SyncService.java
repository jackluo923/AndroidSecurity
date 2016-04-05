package com.appyet.service;

import android.app.Notification;
import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import android.util.Log;
import com.appyet.context.ApplicationContext;
import com.appyet.manager.ProgressNotificationManager;
import com.appyet.manager.bq;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

public class SyncService
  extends Service
{
  private static final Class<?>[] b = { Boolean.TYPE };
  private static final Class<?>[] c = { Integer.TYPE, Notification.class };
  private static final Class<?>[] d = { Boolean.TYPE };
  private ApplicationContext a;
  private Method e;
  private Method f;
  private Method g;
  private Object[] h = new Object[1];
  private Object[] i = new Object[2];
  private Object[] j = new Object[1];
  private ProgressNotificationManager k;
  
  private void a(Method paramMethod, Object[] paramArrayOfObject)
  {
    try
    {
      paramMethod.invoke(this, paramArrayOfObject);
      return;
    }
    catch (InvocationTargetException paramMethod)
    {
      Log.w("ApiDemos", "Unable to invoke method", paramMethod);
      return;
    }
    catch (IllegalAccessException paramMethod)
    {
      Log.w("ApiDemos", "Unable to invoke method", paramMethod);
    }
  }
  
  public IBinder onBind(Intent paramIntent)
  {
    return null;
  }
  
  public void onCreate()
  {
    a = ((ApplicationContext)getApplicationContext());
    k = a.t.d();
    try
    {
      f = getClass().getMethod("startForeground", c);
      g = getClass().getMethod("stopForeground", d);
      try
      {
        if ((f == null) || (g == null)) {
          e = getClass().getMethod("setForeground", b);
        }
      }
      catch (NoSuchMethodException localNoSuchMethodException2)
      {
        for (;;)
        {
          ProgressNotificationManager localProgressNotificationManager;
          e = null;
          continue;
          if (e != null)
          {
            h[0] = Boolean.TRUE;
            a(e, h);
          }
        }
      }
      localProgressNotificationManager = k;
      if ((f != null) && (localProgressNotificationManager != null))
      {
        i[0] = Integer.valueOf(localProgressNotificationManager.b());
        i[1] = localProgressNotificationManager;
        a(f, i);
        super.onCreate();
        return;
      }
    }
    catch (NoSuchMethodException localNoSuchMethodException1)
    {
      for (;;)
      {
        g = null;
        f = null;
      }
    }
  }
  
  public void onDestroy()
  {
    if (g != null)
    {
      j[0] = Boolean.TRUE;
      a(g, j);
    }
    for (;;)
    {
      stopSelf();
      return;
      if (e != null)
      {
        h[0] = Boolean.FALSE;
        a(e, h);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.appyet.service.SyncService
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */