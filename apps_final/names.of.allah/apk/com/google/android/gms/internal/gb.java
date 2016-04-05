package com.google.android.gms.internal;

import android.content.Context;
import android.os.IBinder;
import android.os.Looper;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.appstate.AppStateManager.StateDeletedResult;
import com.google.android.gms.appstate.AppStateManager.StateListResult;
import com.google.android.gms.appstate.AppStateManager.StateResult;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.a.d;

public final class gb
  extends hc<gd>
{
  private final String yN;
  
  public gb(Context paramContext, Looper paramLooper, GoogleApiClient.ConnectionCallbacks paramConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener paramOnConnectionFailedListener, String paramString, String[] paramArrayOfString)
  {
    super(paramContext, paramLooper, paramConnectionCallbacks, paramOnConnectionFailedListener, paramArrayOfString);
    yN = ((String)hn.f(paramString));
  }
  
  protected final gd D(IBinder paramIBinder)
  {
    return gd.a.F(paramIBinder);
  }
  
  public final void a(a.d<AppStateManager.StateListResult> paramd)
  {
    try
    {
      ((gd)fo()).a(new gb.c(paramd));
      return;
    }
    catch (RemoteException paramd)
    {
      Log.w("AppStateClient", "service died");
    }
  }
  
  public final void a(a.d<AppStateManager.StateDeletedResult> paramd, int paramInt)
  {
    try
    {
      ((gd)fo()).b(new gb.a(paramd), paramInt);
      return;
    }
    catch (RemoteException paramd)
    {
      Log.w("AppStateClient", "service died");
    }
  }
  
  public final void a(a.d<AppStateManager.StateResult> paramd, int paramInt, String paramString, byte[] paramArrayOfByte)
  {
    try
    {
      ((gd)fo()).a(new gb.e(paramd), paramInt, paramString, paramArrayOfByte);
      return;
    }
    catch (RemoteException paramd)
    {
      Log.w("AppStateClient", "service died");
    }
  }
  
  public final void a(a.d<AppStateManager.StateResult> paramd, int paramInt, byte[] paramArrayOfByte)
  {
    if (paramd == null) {}
    for (paramd = null;; paramd = new gb.e(paramd)) {
      try
      {
        ((gd)fo()).a(paramd, paramInt, paramArrayOfByte);
        return;
      }
      catch (RemoteException paramd)
      {
        Log.w("AppStateClient", "service died");
      }
    }
  }
  
  protected final void a(hj paramhj, hc.e parame)
  {
    paramhj.a(parame, 5077000, getContext().getPackageName(), yN, fn());
  }
  
  public final void b(a.d<Status> paramd)
  {
    try
    {
      ((gd)fo()).b(new gb.g(paramd));
      return;
    }
    catch (RemoteException paramd)
    {
      Log.w("AppStateClient", "service died");
    }
  }
  
  public final void b(a.d<AppStateManager.StateResult> paramd, int paramInt)
  {
    try
    {
      ((gd)fo()).a(new gb.e(paramd), paramInt);
      return;
    }
    catch (RemoteException paramd)
    {
      Log.w("AppStateClient", "service died");
    }
  }
  
  protected final void b(String... paramVarArgs)
  {
    int i = 0;
    boolean bool = false;
    while (i < paramVarArgs.length)
    {
      if (paramVarArgs[i].equals("https://www.googleapis.com/auth/appstate")) {
        bool = true;
      }
      i += 1;
    }
    hn.a(bool, String.format("App State APIs requires %s to function.", new Object[] { "https://www.googleapis.com/auth/appstate" }));
  }
  
  protected final String bp()
  {
    return "com.google.android.gms.appstate.service.START";
  }
  
  protected final String bq()
  {
    return "com.google.android.gms.appstate.internal.IAppStateService";
  }
  
  public final int dP()
  {
    try
    {
      int i = ((gd)fo()).dP();
      return i;
    }
    catch (RemoteException localRemoteException)
    {
      Log.w("AppStateClient", "service died");
    }
    return 2;
  }
  
  public final int dQ()
  {
    try
    {
      int i = ((gd)fo()).dQ();
      return i;
    }
    catch (RemoteException localRemoteException)
    {
      Log.w("AppStateClient", "service died");
    }
    return 2;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.gb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */