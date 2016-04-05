package com.google.android.gms.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GooglePlayServicesClient.OnConnectionFailedListener;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import java.util.ArrayList;
import java.util.Iterator;

public final class hd
{
  private final hd.b Gm;
  private final ArrayList<GoogleApiClient.ConnectionCallbacks> Gn = new ArrayList();
  final ArrayList<GoogleApiClient.ConnectionCallbacks> Go = new ArrayList();
  private boolean Gp = false;
  private final ArrayList<GooglePlayServicesClient.OnConnectionFailedListener> Gq = new ArrayList();
  private final Handler mHandler;
  
  public hd(Context paramContext, Looper paramLooper, hd.b paramb)
  {
    Gm = paramb;
    mHandler = new hd.a(this, paramLooper);
  }
  
  public final void a(ConnectionResult paramConnectionResult)
  {
    mHandler.removeMessages(1);
    synchronized (Gq)
    {
      Iterator localIterator = new ArrayList(Gq).iterator();
      while (localIterator.hasNext())
      {
        GooglePlayServicesClient.OnConnectionFailedListener localOnConnectionFailedListener = (GooglePlayServicesClient.OnConnectionFailedListener)localIterator.next();
        if (!Gm.eJ()) {
          return;
        }
        if (Gq.contains(localOnConnectionFailedListener)) {
          localOnConnectionFailedListener.onConnectionFailed(paramConnectionResult);
        }
      }
    }
  }
  
  public final void ao(int paramInt)
  {
    mHandler.removeMessages(1);
    synchronized (Gn)
    {
      Gp = true;
      Iterator localIterator = new ArrayList(Gn).iterator();
      while (localIterator.hasNext())
      {
        GoogleApiClient.ConnectionCallbacks localConnectionCallbacks = (GoogleApiClient.ConnectionCallbacks)localIterator.next();
        if (Gm.eJ()) {
          if (Gn.contains(localConnectionCallbacks)) {
            localConnectionCallbacks.onConnectionSuspended(paramInt);
          }
        }
      }
    }
    Gp = false;
  }
  
  public final void c(Bundle paramBundle)
  {
    boolean bool2 = true;
    for (;;)
    {
      synchronized (Gn)
      {
        if (!Gp)
        {
          bool1 = true;
          hn.A(bool1);
          mHandler.removeMessages(1);
          Gp = true;
          if (Go.size() != 0) {
            break label150;
          }
          bool1 = bool2;
          hn.A(bool1);
          Iterator localIterator = new ArrayList(Gn).iterator();
          if (!localIterator.hasNext()) {
            break;
          }
          GoogleApiClient.ConnectionCallbacks localConnectionCallbacks = (GoogleApiClient.ConnectionCallbacks)localIterator.next();
          if ((!Gm.eJ()) || (!Gm.isConnected())) {
            break;
          }
          if (Go.contains(localConnectionCallbacks)) {
            continue;
          }
          localConnectionCallbacks.onConnected(paramBundle);
        }
      }
      boolean bool1 = false;
      continue;
      label150:
      bool1 = false;
    }
    Go.clear();
    Gp = false;
  }
  
  protected final void ck()
  {
    synchronized (Gn)
    {
      c(Gm.ea());
      return;
    }
  }
  
  public final boolean isConnectionCallbacksRegistered(GoogleApiClient.ConnectionCallbacks paramConnectionCallbacks)
  {
    hn.f(paramConnectionCallbacks);
    synchronized (Gn)
    {
      boolean bool = Gn.contains(paramConnectionCallbacks);
      return bool;
    }
  }
  
  public final boolean isConnectionFailedListenerRegistered(GooglePlayServicesClient.OnConnectionFailedListener paramOnConnectionFailedListener)
  {
    hn.f(paramOnConnectionFailedListener);
    synchronized (Gq)
    {
      boolean bool = Gq.contains(paramOnConnectionFailedListener);
      return bool;
    }
  }
  
  public final void registerConnectionCallbacks(GoogleApiClient.ConnectionCallbacks paramConnectionCallbacks)
  {
    hn.f(paramConnectionCallbacks);
    synchronized (Gn)
    {
      if (Gn.contains(paramConnectionCallbacks))
      {
        Log.w("GmsClientEvents", "registerConnectionCallbacks(): listener " + paramConnectionCallbacks + " is already registered");
        if (Gm.isConnected()) {
          mHandler.sendMessage(mHandler.obtainMessage(1, paramConnectionCallbacks));
        }
        return;
      }
      Gn.add(paramConnectionCallbacks);
    }
  }
  
  public final void registerConnectionFailedListener(GooglePlayServicesClient.OnConnectionFailedListener paramOnConnectionFailedListener)
  {
    hn.f(paramOnConnectionFailedListener);
    synchronized (Gq)
    {
      if (Gq.contains(paramOnConnectionFailedListener))
      {
        Log.w("GmsClientEvents", "registerConnectionFailedListener(): listener " + paramOnConnectionFailedListener + " is already registered");
        return;
      }
      Gq.add(paramOnConnectionFailedListener);
    }
  }
  
  public final void unregisterConnectionCallbacks(GoogleApiClient.ConnectionCallbacks paramConnectionCallbacks)
  {
    hn.f(paramConnectionCallbacks);
    synchronized (Gn)
    {
      if (Gn != null)
      {
        if (Gn.remove(paramConnectionCallbacks)) {
          break label60;
        }
        Log.w("GmsClientEvents", "unregisterConnectionCallbacks(): listener " + paramConnectionCallbacks + " not found");
      }
      label60:
      while (!Gp) {
        return;
      }
      Go.add(paramConnectionCallbacks);
    }
  }
  
  public final void unregisterConnectionFailedListener(GooglePlayServicesClient.OnConnectionFailedListener paramOnConnectionFailedListener)
  {
    hn.f(paramOnConnectionFailedListener);
    synchronized (Gq)
    {
      if ((Gq != null) && (!Gq.remove(paramOnConnectionFailedListener))) {
        Log.w("GmsClientEvents", "unregisterConnectionFailedListener(): listener " + paramOnConnectionFailedListener + " not found");
      }
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.hd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */