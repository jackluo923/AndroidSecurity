package com.google.android.gms.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.GooglePlayServicesClient.ConnectionCallbacks;
import com.google.android.gms.common.GooglePlayServicesClient.OnConnectionFailedListener;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.google.android.gms.common.api.Api.a;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;
import java.util.ArrayList;

public abstract class hc<T extends IInterface>
  implements Api.a, hd.b
{
  public static final String[] Ge = { "service_esmobile", "service_googleme" };
  private final Looper DC;
  private final hd DP;
  private T FY;
  private final ArrayList<hc<T>.b<?>> FZ = new ArrayList();
  private hc<T>.f Ga;
  private volatile int Gb = 1;
  private final String[] Gc;
  boolean Gd = false;
  private final Context mContext;
  final Handler mHandler;
  
  public hc(Context paramContext, Looper paramLooper, GoogleApiClient.ConnectionCallbacks paramConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener paramOnConnectionFailedListener, String... paramVarArgs)
  {
    mContext = ((Context)hn.f(paramContext));
    DC = ((Looper)hn.b(paramLooper, "Looper must not be null"));
    DP = new hd(paramContext, paramLooper, this);
    mHandler = new hc.a(this, paramLooper);
    b(paramVarArgs);
    Gc = paramVarArgs;
    registerConnectionCallbacks((GoogleApiClient.ConnectionCallbacks)hn.f(paramConnectionCallbacks));
    registerConnectionFailedListener((GoogleApiClient.OnConnectionFailedListener)hn.f(paramOnConnectionFailedListener));
  }
  
  @Deprecated
  protected hc(Context paramContext, GooglePlayServicesClient.ConnectionCallbacks paramConnectionCallbacks, GooglePlayServicesClient.OnConnectionFailedListener paramOnConnectionFailedListener, String... paramVarArgs)
  {
    this(paramContext, paramContext.getMainLooper(), new hc.c(paramConnectionCallbacks), new hc.g(paramOnConnectionFailedListener), paramVarArgs);
  }
  
  private void am(int paramInt)
  {
    int i = Gb;
    Gb = paramInt;
    if (i != paramInt)
    {
      if (paramInt != 3) {
        break label25;
      }
      onConnected();
    }
    label25:
    while ((i != 3) || (paramInt != 1)) {
      return;
    }
    onDisconnected();
  }
  
  protected final void I(IBinder paramIBinder)
  {
    try
    {
      a(hj.a.L(paramIBinder), new hc.e(this));
      return;
    }
    catch (RemoteException paramIBinder)
    {
      Log.w("GmsClient", "service died");
    }
  }
  
  public void a(int paramInt, IBinder paramIBinder, Bundle paramBundle)
  {
    mHandler.sendMessage(mHandler.obtainMessage(1, new hc.h(this, paramInt, paramIBinder, paramBundle)));
  }
  
  @Deprecated
  public final void a(hc<T>.b<?> paramhc)
  {
    synchronized (FZ)
    {
      FZ.add(paramhc);
      mHandler.sendMessage(mHandler.obtainMessage(2, paramhc));
      return;
    }
  }
  
  protected abstract void a(hj paramhj, hc.e parame);
  
  public void an(int paramInt)
  {
    mHandler.sendMessage(mHandler.obtainMessage(4, Integer.valueOf(paramInt)));
  }
  
  protected void b(String... paramVarArgs) {}
  
  protected abstract String bp();
  
  protected abstract String bq();
  
  protected final void ci()
  {
    if (!isConnected()) {
      throw new IllegalStateException("Not connected. Call connect() and wait for onConnected() to be called.");
    }
  }
  
  public void connect()
  {
    Gd = true;
    am(2);
    int i = GooglePlayServicesUtil.isGooglePlayServicesAvailable(mContext);
    if (i != 0)
    {
      am(1);
      mHandler.sendMessage(mHandler.obtainMessage(3, Integer.valueOf(i)));
    }
    do
    {
      return;
      if (Ga != null)
      {
        Log.e("GmsClient", "Calling connect() while still connected, missing disconnect().");
        FY = null;
        he.B(mContext).b(bp(), Ga);
      }
      Ga = new hc.f(this);
    } while (he.B(mContext).a(bp(), Ga));
    Log.e("GmsClient", "unable to connect to service: " + bp());
    mHandler.sendMessage(mHandler.obtainMessage(3, Integer.valueOf(9)));
  }
  
  public void disconnect()
  {
    Gd = false;
    synchronized (FZ)
    {
      int j = FZ.size();
      int i = 0;
      while (i < j)
      {
        ((hc.b)FZ.get(i)).fr();
        i += 1;
      }
      FZ.clear();
      am(1);
      FY = null;
      if (Ga != null)
      {
        he.B(mContext).b(bp(), Ga);
        Ga = null;
      }
      return;
    }
  }
  
  public boolean eJ()
  {
    return Gd;
  }
  
  public Bundle ea()
  {
    return null;
  }
  
  public final String[] fn()
  {
    return Gc;
  }
  
  public final T fo()
  {
    ci();
    return FY;
  }
  
  public final Context getContext()
  {
    return mContext;
  }
  
  public final Looper getLooper()
  {
    return DC;
  }
  
  public boolean isConnected()
  {
    return Gb == 3;
  }
  
  public boolean isConnecting()
  {
    return Gb == 2;
  }
  
  @Deprecated
  public boolean isConnectionCallbacksRegistered(GooglePlayServicesClient.ConnectionCallbacks paramConnectionCallbacks)
  {
    return DP.isConnectionCallbacksRegistered(new hc.c(paramConnectionCallbacks));
  }
  
  @Deprecated
  public boolean isConnectionFailedListenerRegistered(GooglePlayServicesClient.OnConnectionFailedListener paramOnConnectionFailedListener)
  {
    return DP.isConnectionFailedListenerRegistered(paramOnConnectionFailedListener);
  }
  
  protected void onConnected() {}
  
  protected void onDisconnected() {}
  
  @Deprecated
  public void registerConnectionCallbacks(GooglePlayServicesClient.ConnectionCallbacks paramConnectionCallbacks)
  {
    DP.registerConnectionCallbacks(new hc.c(paramConnectionCallbacks));
  }
  
  public void registerConnectionCallbacks(GoogleApiClient.ConnectionCallbacks paramConnectionCallbacks)
  {
    DP.registerConnectionCallbacks(paramConnectionCallbacks);
  }
  
  @Deprecated
  public void registerConnectionFailedListener(GooglePlayServicesClient.OnConnectionFailedListener paramOnConnectionFailedListener)
  {
    DP.registerConnectionFailedListener(paramOnConnectionFailedListener);
  }
  
  public void registerConnectionFailedListener(GoogleApiClient.OnConnectionFailedListener paramOnConnectionFailedListener)
  {
    DP.registerConnectionFailedListener(paramOnConnectionFailedListener);
  }
  
  @Deprecated
  public void unregisterConnectionCallbacks(GooglePlayServicesClient.ConnectionCallbacks paramConnectionCallbacks)
  {
    DP.unregisterConnectionCallbacks(new hc.c(paramConnectionCallbacks));
  }
  
  @Deprecated
  public void unregisterConnectionFailedListener(GooglePlayServicesClient.OnConnectionFailedListener paramOnConnectionFailedListener)
  {
    DP.unregisterConnectionFailedListener(paramOnConnectionFailedListener);
  }
  
  protected abstract T x(IBinder paramIBinder);
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.hc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */