package com.google.android.gms.dynamic;

import android.content.Context;
import android.os.IBinder;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.google.android.gms.internal.hn;

public abstract class g<T>
{
  private final String Mi;
  private T Mj;
  
  public g(String paramString)
  {
    Mi = paramString;
  }
  
  protected final T D(Context paramContext)
  {
    if (Mj == null)
    {
      hn.f(paramContext);
      paramContext = GooglePlayServicesUtil.getRemoteContext(paramContext);
      if (paramContext == null) {
        throw new g.a("Could not get remote context.");
      }
      paramContext = paramContext.getClassLoader();
    }
    try
    {
      Mj = d((IBinder)paramContext.loadClass(Mi).newInstance());
      return (T)Mj;
    }
    catch (ClassNotFoundException paramContext)
    {
      throw new g.a("Could not load creator class.");
    }
    catch (InstantiationException paramContext)
    {
      throw new g.a("Could not instantiate creator.");
    }
    catch (IllegalAccessException paramContext)
    {
      throw new g.a("Could not access creator.");
    }
  }
  
  protected abstract T d(IBinder paramIBinder);
}

/* Location:
 * Qualified Name:     com.google.android.gms.dynamic.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */