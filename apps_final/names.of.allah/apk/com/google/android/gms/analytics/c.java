package com.google.android.gms.analytics;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.RemoteException;
import com.google.android.gms.internal.fe;
import com.google.android.gms.internal.ff;
import java.util.List;
import java.util.Map;

class c
  implements b
{
  private Context mContext;
  private ServiceConnection tu;
  private c.b tv;
  private c.c tw;
  private ff tx;
  
  public c(Context paramContext, c.b paramb, c.c paramc)
  {
    mContext = paramContext;
    if (paramb == null) {
      throw new IllegalArgumentException("onConnectedListener cannot be null");
    }
    tv = paramb;
    if (paramc == null) {
      throw new IllegalArgumentException("onConnectionFailedListener cannot be null");
    }
    tw = paramc;
  }
  
  private ff ch()
  {
    ci();
    return tx;
  }
  
  private void cj()
  {
    ck();
  }
  
  private void ck()
  {
    tv.onConnected();
  }
  
  public void a(Map<String, String> paramMap, long paramLong, String paramString, List<fe> paramList)
  {
    try
    {
      ch().a(paramMap, paramLong, paramString, paramList);
      return;
    }
    catch (RemoteException paramMap)
    {
      aa.A("sendHit failed: " + paramMap);
    }
  }
  
  public void cg()
  {
    try
    {
      ch().cg();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      aa.A("clear hits failed: " + localRemoteException);
    }
  }
  
  protected void ci()
  {
    if (!isConnected()) {
      throw new IllegalStateException("Not connected. Call connect() and wait for onConnected() to be called.");
    }
  }
  
  public void connect()
  {
    Intent localIntent = new Intent("com.google.android.gms.analytics.service.START");
    localIntent.setComponent(new ComponentName("com.google.android.gms", "com.google.android.gms.analytics.service.AnalyticsService"));
    localIntent.putExtra("app_package_name", mContext.getPackageName());
    if (tu != null) {
      aa.A("Calling connect() while still connected, missing disconnect().");
    }
    boolean bool;
    do
    {
      return;
      tu = new c.a(this);
      bool = mContext.bindService(localIntent, tu, 129);
      aa.C("connect: bindService returned " + bool + " for " + localIntent);
    } while (bool);
    tu = null;
    tw.a(1, null);
  }
  
  public void disconnect()
  {
    tx = null;
    if (tu != null) {}
    try
    {
      mContext.unbindService(tu);
      tu = null;
      tv.onDisconnected();
      return;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      for (;;) {}
    }
    catch (IllegalStateException localIllegalStateException)
    {
      for (;;) {}
    }
  }
  
  public boolean isConnected()
  {
    return tx != null;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */