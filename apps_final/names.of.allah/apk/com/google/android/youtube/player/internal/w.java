package com.google.android.youtube.player.internal;

import android.app.Activity;
import android.content.Context;
import android.os.IBinder;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;

public final class w
{
  private static IBinder a(Class<?> paramClass, IBinder paramIBinder1, IBinder paramIBinder2)
  {
    try
    {
      paramIBinder1 = (IBinder)paramClass.getConstructor(new Class[] { IBinder.class, IBinder.class }).newInstance(new Object[] { paramIBinder1, paramIBinder2 });
      return paramIBinder1;
    }
    catch (NoSuchMethodException paramIBinder1)
    {
      throw new w.a("Could not find the right constructor for " + paramClass.getName(), paramIBinder1);
    }
    catch (InvocationTargetException paramIBinder1)
    {
      throw new w.a("Exception thrown by invoked constructor in " + paramClass.getName(), paramIBinder1);
    }
    catch (InstantiationException paramIBinder1)
    {
      throw new w.a("Unable to instantiate the dynamic class " + paramClass.getName(), paramIBinder1);
    }
    catch (IllegalAccessException paramIBinder1)
    {
      throw new w.a("Unable to call the default constructor of " + paramClass.getName(), paramIBinder1);
    }
  }
  
  private static IBinder a(ClassLoader paramClassLoader, String paramString, IBinder paramIBinder1, IBinder paramIBinder2)
  {
    try
    {
      paramClassLoader = a(paramClassLoader.loadClass(paramString), paramIBinder1, paramIBinder2);
      return paramClassLoader;
    }
    catch (ClassNotFoundException paramClassLoader)
    {
      throw new w.a("Unable to find dynamic class " + paramString, paramClassLoader);
    }
  }
  
  public static d a(Activity paramActivity, IBinder paramIBinder)
  {
    ac.a(paramActivity, "activity cannot be null");
    ac.a(paramIBinder, "serviceBinder cannot be null");
    Context localContext = z.b(paramActivity);
    if (localContext == null) {
      throw new w.a("Could not create remote context");
    }
    paramActivity = new aa(paramActivity, localContext.getResources(), localContext.getClassLoader(), z.a(paramActivity, localContext));
    return d.a.a(a(localContext.getClassLoader(), "com.google.android.youtube.api.jar.client.RemoteEmbeddedPlayer", v.a(paramActivity).asBinder(), paramIBinder));
  }
}

/* Location:
 * Qualified Name:     com.google.android.youtube.player.internal.w
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */