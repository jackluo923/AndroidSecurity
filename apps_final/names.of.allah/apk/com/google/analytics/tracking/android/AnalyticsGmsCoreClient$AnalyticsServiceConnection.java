package com.google.analytics.tracking.android;

import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.analytics.internal.IAnalyticsService.Stub;

final class AnalyticsGmsCoreClient$AnalyticsServiceConnection
  implements ServiceConnection
{
  AnalyticsGmsCoreClient$AnalyticsServiceConnection(AnalyticsGmsCoreClient paramAnalyticsGmsCoreClient) {}
  
  public final void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder)
  {
    Log.v("service connected, binder: " + paramIBinder);
    try
    {
      if ("com.google.android.gms.analytics.internal.IAnalyticsService".equals(paramIBinder.getInterfaceDescriptor()))
      {
        Log.v("bound to service");
        AnalyticsGmsCoreClient.access$002(this$0, IAnalyticsService.Stub.asInterface(paramIBinder));
        AnalyticsGmsCoreClient.access$100(this$0);
        return;
      }
    }
    catch (RemoteException paramComponentName)
    {
      AnalyticsGmsCoreClient.access$200(this$0).unbindService(this);
      AnalyticsGmsCoreClient.access$302(this$0, null);
      AnalyticsGmsCoreClient.access$400(this$0).onConnectionFailed(2, null);
    }
  }
  
  public final void onServiceDisconnected(ComponentName paramComponentName)
  {
    Log.v("service disconnected: " + paramComponentName);
    AnalyticsGmsCoreClient.access$302(this$0, null);
    AnalyticsGmsCoreClient.access$500(this$0).onDisconnected();
  }
}

/* Location:
 * Qualified Name:     com.google.analytics.tracking.android.AnalyticsGmsCoreClient.AnalyticsServiceConnection
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */