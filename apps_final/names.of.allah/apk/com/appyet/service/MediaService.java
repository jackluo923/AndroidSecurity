package com.appyet.service;

import android.app.Notification;
import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import android.util.Log;
import com.appyet.context.ApplicationContext;
import com.appyet.manager.MediaProgressNotification;
import com.appyet.manager.as;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

public class MediaService
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
  private MediaProgressNotification k;
  
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
    k = a.c.c();
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
          int m;
          MediaProgressNotification localMediaProgressNotification;
          e = null;
          continue;
          if (e != null)
          {
            h[0] = Boolean.TRUE;
            a(e, h);
            continue;
            stopSelf();
          }
        }
      }
      if (k != null)
      {
        m = k.a();
        localMediaProgressNotification = k;
        if (f != null)
        {
          i[0] = Integer.valueOf(m);
          i[1] = localMediaProgressNotification;
          a(f, i);
          super.onCreate();
          return;
        }
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
 * Qualified Name:     com.appyet.service.MediaService
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */