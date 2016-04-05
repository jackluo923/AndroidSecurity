package com.google.analytics.tracking.android;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.RemoteException;
import com.google.android.gms.analytics.internal.Command;
import com.google.android.gms.analytics.internal.IAnalyticsService;
import java.util.List;
import java.util.Map;

class AnalyticsGmsCoreClient
  implements AnalyticsClient
{
  private static final int BIND_ADJUST_WITH_ACTIVITY = 128;
  public static final int BIND_FAILED = 1;
  public static final String KEY_APP_PACKAGE_NAME = "app_package_name";
  public static final int REMOTE_EXECUTION_FAILED = 2;
  static final String SERVICE_ACTION = "com.google.android.gms.analytics.service.START";
  private static final String SERVICE_DESCRIPTOR = "com.google.android.gms.analytics.internal.IAnalyticsService";
  private ServiceConnection mConnection;
  private Context mContext;
  private AnalyticsGmsCoreClient.OnConnectedListener mOnConnectedListener;
  private AnalyticsGmsCoreClient.OnConnectionFailedListener mOnConnectionFailedListener;
  private IAnalyticsService mService;
  
  public AnalyticsGmsCoreClient(Context paramContext, AnalyticsGmsCoreClient.OnConnectedListener paramOnConnectedListener, AnalyticsGmsCoreClient.OnConnectionFailedListener paramOnConnectionFailedListener)
  {
    mContext = paramContext;
    if (paramOnConnectedListener == null) {
      throw new IllegalArgumentException("onConnectedListener cannot be null");
    }
    mOnConnectedListener = paramOnConnectedListener;
    if (paramOnConnectionFailedListener == null) {
      throw new IllegalArgumentException("onConnectionFailedListener cannot be null");
    }
    mOnConnectionFailedListener = paramOnConnectionFailedListener;
  }
  
  private IAnalyticsService getService()
  {
    checkConnected();
    return mService;
  }
  
  private void onConnectionSuccess()
  {
    mOnConnectedListener.onConnected();
  }
  
  private void onServiceBound()
  {
    onConnectionSuccess();
  }
  
  protected void checkConnected()
  {
    if (!isConnected()) {
      throw new IllegalStateException("Not connected. Call connect() and wait for onConnected() to be called.");
    }
  }
  
  public void clearHits()
  {
    try
    {
      getService().clearHits();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      Log.e("clear hits failed: " + localRemoteException);
    }
  }
  
  public void connect()
  {
    Intent localIntent = new Intent("com.google.android.gms.analytics.service.START");
    localIntent.setComponent(new ComponentName("com.google.android.gms", "com.google.android.gms.analytics.service.AnalyticsService"));
    localIntent.putExtra("app_package_name", mContext.getPackageName());
    if (mConnection != null) {
      Log.e("Calling connect() while still connected, missing disconnect().");
    }
    boolean bool;
    do
    {
      return;
      mConnection = new AnalyticsGmsCoreClient.AnalyticsServiceConnection(this);
      bool = mContext.bindService(localIntent, mConnection, 129);
      Log.v("connect: bindService returned " + bool + " for " + localIntent);
    } while (bool);
    mConnection = null;
    mOnConnectionFailedListener.onConnectionFailed(1, null);
  }
  
  public void disconnect()
  {
    mService = null;
    if (mConnection != null) {}
    try
    {
      mContext.unbindService(mConnection);
      mConnection = null;
      mOnConnectedListener.onDisconnected();
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
    return mService != null;
  }
  
  public void sendHit(Map<String, String> paramMap, long paramLong, String paramString, List<Command> paramList)
  {
    try
    {
      getService().sendHit(paramMap, paramLong, paramString, paramList);
      return;
    }
    catch (RemoteException paramMap)
    {
      Log.e("sendHit failed: " + paramMap);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.analytics.tracking.android.AnalyticsGmsCoreClient
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */