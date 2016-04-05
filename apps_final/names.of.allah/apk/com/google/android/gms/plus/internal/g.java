package com.google.android.gms.plus.internal;

import android.content.Context;
import android.os.IBinder;
import android.view.View;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.google.android.gms.dynamic.e;
import com.google.android.gms.internal.hn;
import com.google.android.gms.plus.PlusOneDummyView;

public final class g
{
  private static Context aag;
  private static c abP;
  
  private static c H(Context paramContext)
  {
    hn.f(paramContext);
    if (abP == null)
    {
      if (aag == null)
      {
        paramContext = GooglePlayServicesUtil.getRemoteContext(paramContext);
        aag = paramContext;
        if (paramContext == null) {
          throw new g.a("Could not get remote context.");
        }
      }
      paramContext = aag.getClassLoader();
    }
    try
    {
      abP = c.a.bl((IBinder)paramContext.loadClass("com.google.android.gms.plus.plusone.PlusOneButtonCreatorImpl").newInstance());
      return abP;
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
  
  public static View a(Context paramContext, int paramInt1, int paramInt2, String paramString, int paramInt3)
  {
    if (paramString == null) {
      try
      {
        throw new NullPointerException();
      }
      catch (Exception paramString)
      {
        return new PlusOneDummyView(paramContext, paramInt1);
      }
    }
    paramString = (View)e.e(H(paramContext).a(e.h(paramContext), paramInt1, paramInt2, paramString, paramInt3));
    return paramString;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.plus.internal.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */