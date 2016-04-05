package com.google.android.gms.cast;

import android.os.RemoteException;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.gi;
import java.io.IOException;

public final class Cast$CastApi$a
  implements Cast.CastApi
{
  public final ApplicationMetadata getApplicationMetadata(GoogleApiClient paramGoogleApiClient)
  {
    return ((gi)paramGoogleApiClient.a(Cast.yE)).getApplicationMetadata();
  }
  
  public final String getApplicationStatus(GoogleApiClient paramGoogleApiClient)
  {
    return ((gi)paramGoogleApiClient.a(Cast.yE)).getApplicationStatus();
  }
  
  public final double getVolume(GoogleApiClient paramGoogleApiClient)
  {
    return ((gi)paramGoogleApiClient.a(Cast.yE)).ec();
  }
  
  public final boolean isMute(GoogleApiClient paramGoogleApiClient)
  {
    return ((gi)paramGoogleApiClient.a(Cast.yE)).isMute();
  }
  
  public final PendingResult<Cast.ApplicationConnectionResult> joinApplication(GoogleApiClient paramGoogleApiClient)
  {
    return paramGoogleApiClient.b(new Cast.CastApi.a.6(this));
  }
  
  public final PendingResult<Cast.ApplicationConnectionResult> joinApplication(GoogleApiClient paramGoogleApiClient, String paramString)
  {
    return paramGoogleApiClient.b(new Cast.CastApi.a.5(this, paramString));
  }
  
  public final PendingResult<Cast.ApplicationConnectionResult> joinApplication(GoogleApiClient paramGoogleApiClient, String paramString1, String paramString2)
  {
    return paramGoogleApiClient.b(new Cast.CastApi.a.4(this, paramString1, paramString2));
  }
  
  public final PendingResult<Cast.ApplicationConnectionResult> launchApplication(GoogleApiClient paramGoogleApiClient, String paramString)
  {
    return paramGoogleApiClient.b(new Cast.CastApi.a.2(this, paramString));
  }
  
  public final PendingResult<Cast.ApplicationConnectionResult> launchApplication(GoogleApiClient paramGoogleApiClient, String paramString, LaunchOptions paramLaunchOptions)
  {
    return paramGoogleApiClient.b(new Cast.CastApi.a.3(this, paramString, paramLaunchOptions));
  }
  
  @Deprecated
  public final PendingResult<Cast.ApplicationConnectionResult> launchApplication(GoogleApiClient paramGoogleApiClient, String paramString, boolean paramBoolean)
  {
    return launchApplication(paramGoogleApiClient, paramString, new LaunchOptions.Builder().setRelaunchIfRunning(paramBoolean).build());
  }
  
  public final PendingResult<Status> leaveApplication(GoogleApiClient paramGoogleApiClient)
  {
    return paramGoogleApiClient.b(new Cast.CastApi.a.7(this));
  }
  
  public final void removeMessageReceivedCallbacks(GoogleApiClient paramGoogleApiClient, String paramString)
  {
    try
    {
      ((gi)paramGoogleApiClient.a(Cast.yE)).aj(paramString);
      return;
    }
    catch (RemoteException paramGoogleApiClient)
    {
      throw new IOException("service error");
    }
  }
  
  public final void requestStatus(GoogleApiClient paramGoogleApiClient)
  {
    try
    {
      ((gi)paramGoogleApiClient.a(Cast.yE)).eb();
      return;
    }
    catch (RemoteException paramGoogleApiClient)
    {
      throw new IOException("service error");
    }
  }
  
  public final PendingResult<Status> sendMessage(GoogleApiClient paramGoogleApiClient, String paramString1, String paramString2)
  {
    return paramGoogleApiClient.b(new Cast.CastApi.a.1(this, paramString1, paramString2));
  }
  
  public final void setMessageReceivedCallbacks(GoogleApiClient paramGoogleApiClient, String paramString, Cast.MessageReceivedCallback paramMessageReceivedCallback)
  {
    try
    {
      ((gi)paramGoogleApiClient.a(Cast.yE)).a(paramString, paramMessageReceivedCallback);
      return;
    }
    catch (RemoteException paramGoogleApiClient)
    {
      throw new IOException("service error");
    }
  }
  
  public final void setMute(GoogleApiClient paramGoogleApiClient, boolean paramBoolean)
  {
    try
    {
      ((gi)paramGoogleApiClient.a(Cast.yE)).y(paramBoolean);
      return;
    }
    catch (RemoteException paramGoogleApiClient)
    {
      throw new IOException("service error");
    }
  }
  
  public final void setVolume(GoogleApiClient paramGoogleApiClient, double paramDouble)
  {
    try
    {
      ((gi)paramGoogleApiClient.a(Cast.yE)).a(paramDouble);
      return;
    }
    catch (RemoteException paramGoogleApiClient)
    {
      throw new IOException("service error");
    }
  }
  
  public final PendingResult<Status> stopApplication(GoogleApiClient paramGoogleApiClient)
  {
    return paramGoogleApiClient.b(new Cast.CastApi.a.8(this));
  }
  
  public final PendingResult<Status> stopApplication(GoogleApiClient paramGoogleApiClient, String paramString)
  {
    return paramGoogleApiClient.b(new Cast.CastApi.a.9(this, paramString));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.cast.Cast.CastApi.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */