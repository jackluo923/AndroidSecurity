package com.google.android.gms.location;

import android.app.PendingIntent;
import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.common.GooglePlayServicesClient;
import com.google.android.gms.common.GooglePlayServicesClient.ConnectionCallbacks;
import com.google.android.gms.common.GooglePlayServicesClient.OnConnectionFailedListener;
import com.google.android.gms.internal.jh;

@Deprecated
public class ActivityRecognitionClient
  implements GooglePlayServicesClient
{
  private final jh UR;
  
  public ActivityRecognitionClient(Context paramContext, GooglePlayServicesClient.ConnectionCallbacks paramConnectionCallbacks, GooglePlayServicesClient.OnConnectionFailedListener paramOnConnectionFailedListener)
  {
    UR = new jh(paramContext, paramConnectionCallbacks, paramOnConnectionFailedListener, "activity_recognition");
  }
  
  public void connect()
  {
    UR.connect();
  }
  
  public void disconnect()
  {
    UR.disconnect();
  }
  
  public boolean isConnected()
  {
    return UR.isConnected();
  }
  
  public boolean isConnecting()
  {
    return UR.isConnecting();
  }
  
  public boolean isConnectionCallbacksRegistered(GooglePlayServicesClient.ConnectionCallbacks paramConnectionCallbacks)
  {
    return UR.isConnectionCallbacksRegistered(paramConnectionCallbacks);
  }
  
  public boolean isConnectionFailedListenerRegistered(GooglePlayServicesClient.OnConnectionFailedListener paramOnConnectionFailedListener)
  {
    return UR.isConnectionFailedListenerRegistered(paramOnConnectionFailedListener);
  }
  
  public void registerConnectionCallbacks(GooglePlayServicesClient.ConnectionCallbacks paramConnectionCallbacks)
  {
    UR.registerConnectionCallbacks(paramConnectionCallbacks);
  }
  
  public void registerConnectionFailedListener(GooglePlayServicesClient.OnConnectionFailedListener paramOnConnectionFailedListener)
  {
    UR.registerConnectionFailedListener(paramOnConnectionFailedListener);
  }
  
  public void removeActivityUpdates(PendingIntent paramPendingIntent)
  {
    try
    {
      UR.removeActivityUpdates(paramPendingIntent);
      return;
    }
    catch (RemoteException paramPendingIntent)
    {
      throw new IllegalStateException(paramPendingIntent);
    }
  }
  
  public void requestActivityUpdates(long paramLong, PendingIntent paramPendingIntent)
  {
    try
    {
      UR.requestActivityUpdates(paramLong, paramPendingIntent);
      return;
    }
    catch (RemoteException paramPendingIntent)
    {
      throw new IllegalStateException(paramPendingIntent);
    }
  }
  
  public void unregisterConnectionCallbacks(GooglePlayServicesClient.ConnectionCallbacks paramConnectionCallbacks)
  {
    UR.unregisterConnectionCallbacks(paramConnectionCallbacks);
  }
  
  public void unregisterConnectionFailedListener(GooglePlayServicesClient.OnConnectionFailedListener paramOnConnectionFailedListener)
  {
    UR.unregisterConnectionFailedListener(paramOnConnectionFailedListener);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.location.ActivityRecognitionClient
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */