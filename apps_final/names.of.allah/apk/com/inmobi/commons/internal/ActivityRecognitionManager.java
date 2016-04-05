package com.inmobi.commons.internal;

import android.app.IntentService;
import android.content.Context;
import android.content.Intent;
import android.os.Build.VERSION;
import com.google.android.gms.common.GooglePlayServicesUtil;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;

public class ActivityRecognitionManager
  extends IntentService
{
  static Object a = null;
  static Object b = null;
  static int c = -1;
  private static Object d = null;
  private static Object e = null;
  
  public ActivityRecognitionManager()
  {
    super("InMobi activity service");
  }
  
  private static void a(Context paramContext)
  {
    for (;;)
    {
      int i;
      try
      {
        if (a == null) {
          return;
        }
        Class localClass2 = Class.forName("com.google.android.gms.common.GooglePlayServicesClient");
        Class localClass3 = Class.forName("com.google.android.gms.location.ActivityRecognitionClient");
        if (b != null) {
          localClass2.getMethod("disconnect", null).invoke(b, null);
        }
        Class[] arrayOfClass = localClass2.getDeclaredClasses();
        int j = arrayOfClass.length;
        i = 0;
        Object localObject1 = null;
        Object localObject2 = null;
        if (i < j)
        {
          Class localClass1 = arrayOfClass[i];
          ActivityRecognitionManager.b localb;
          if (localClass1.getSimpleName().equalsIgnoreCase("ConnectionCallbacks"))
          {
            localObject1 = localClass1.getClassLoader();
            localb = new ActivityRecognitionManager.b(null);
            d = Proxy.newProxyInstance((ClassLoader)localObject1, new Class[] { localClass1 }, localb);
            localObject1 = localClass1;
            break label260;
          }
          if (localClass1.getSimpleName().equalsIgnoreCase("OnConnectionFailedListener"))
          {
            localObject2 = localClass1.getClassLoader();
            localb = new ActivityRecognitionManager.b(null);
            e = Proxy.newProxyInstance((ClassLoader)localObject2, new Class[] { localClass1 }, localb);
            localObject2 = localClass1;
            break label260;
          }
        }
        else
        {
          b = localClass3.getDeclaredConstructor(new Class[] { Context.class, localObject1, localObject2 }).newInstance(new Object[] { paramContext, d, e });
          localClass2.getMethod("connect", null).invoke(b, null);
          return;
        }
      }
      catch (ClassCastException paramContext)
      {
        Log.internal("[InMobi]-4.4.1", "Init: Google play services not included. Cannot get current activity.");
        return;
      }
      catch (Exception paramContext)
      {
        Log.internal("[InMobi]-4.4.1", "Init: Something went wrong during ActivityRecognitionManager.init", paramContext);
        return;
      }
      label260:
      i += 1;
    }
  }
  
  private void a(Intent paramIntent)
  {
    try
    {
      Class localClass = Class.forName("com.google.android.gms.location.ActivityRecognitionResult");
      if (((Boolean)localClass.getMethod("hasResult", new Class[] { Intent.class }).invoke(null, new Object[] { paramIntent })).booleanValue())
      {
        paramIntent = localClass.getMethod("extractResult", new Class[] { Intent.class }).invoke(null, new Object[] { paramIntent });
        a = localClass.getMethod("getMostProbableActivity", null).invoke(paramIntent, null);
      }
      return;
    }
    catch (ClassNotFoundException paramIntent)
    {
      Log.internal("[InMobi]-4.4.1", "HandleIntent: Google play services not included. Cannot get current activity.");
      return;
    }
    catch (Exception paramIntent)
    {
      Log.internal("[InMobi]-4.4.1", "HandleIntent: Google play services not included. Cannot get current activity.");
    }
  }
  
  private static boolean a()
  {
    if (Build.VERSION.SDK_INT < 8) {}
    for (;;)
    {
      return false;
      if (c == -1) {}
      try
      {
        a = Class.forName("com.google.android.gms.location.DetectedActivity").getConstructor(new Class[] { Integer.TYPE, Integer.TYPE }).newInstance(new Object[] { Integer.valueOf(-1), Integer.valueOf(100) });
        c = 1;
        if (GooglePlayServicesUtil.isGooglePlayServicesAvailable(InternalSDKUtil.getContext()) != 0)
        {
          c = 0;
          return false;
        }
      }
      catch (ClassNotFoundException localClassNotFoundException)
      {
        Log.debug("[InMobi]-4.4.1", "Google play services not included.");
        c = 0;
        if (c != 1) {
          continue;
        }
        return true;
      }
      catch (Exception localException)
      {
        for (;;)
        {
          Log.debug("[InMobi]-4.4.1", "Google play services not included.");
          c = 0;
        }
      }
    }
  }
  
  public static int getDetectedActivity()
  {
    try
    {
      if (a == null) {
        return -1;
      }
      int i = ((Integer)Class.forName("com.google.android.gms.location.DetectedActivity").getMethod("getType", null).invoke(a, null)).intValue();
      return i;
    }
    catch (ClassNotFoundException localClassNotFoundException)
    {
      Log.internal("[InMobi]-4.4.1", "getDetectedActivity: Google play services not included. Returning null.");
      return -1;
    }
    catch (Exception localException)
    {
      Log.internal("[InMobi]-4.4.1", "getDetectedActivity: Google play services not included. Returning null.");
    }
    return -1;
  }
  
  public static void init(Context paramContext)
  {
    if (a()) {
      a(paramContext);
    }
  }
  
  protected void onHandleIntent(Intent paramIntent)
  {
    if (a()) {
      a(paramIntent);
    }
  }
}

/* Location:
 * Qualified Name:     com.inmobi.commons.internal.ActivityRecognitionManager
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */