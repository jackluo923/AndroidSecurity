package com.google.android.gms.common.api;

import android.app.PendingIntent;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.content.Intent;
import android.content.IntentSender.SendIntentException;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GooglePlayServicesUtil;
import java.util.List;

public class d
  extends Fragment
  implements DialogInterface.OnCancelListener, GoogleApiClient.ConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener
{
  private GoogleApiClient.OnConnectionFailedListener DK;
  private GoogleApiClient Eq;
  private ConnectionResult Er;
  private boolean Es;
  
  public void a(GoogleApiClient paramGoogleApiClient, GoogleApiClient.OnConnectionFailedListener paramOnConnectionFailedListener)
  {
    Eq = paramGoogleApiClient;
    Eq.registerConnectionCallbacks(this);
    DK = paramOnConnectionFailedListener;
    Eq.registerConnectionCallbacks(this);
    Eq.registerConnectionFailedListener(this);
  }
  
  public boolean isInitialized()
  {
    return Eq != null;
  }
  
  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    int i = 1;
    switch (paramInt1)
    {
    default: 
      paramInt1 = 0;
    }
    for (;;)
    {
      if (paramInt1 == 0) {
        break label76;
      }
      Eq.connect();
      Es = false;
      return;
      if (GooglePlayServicesUtil.isGooglePlayServicesAvailable(getActivity()) != 0) {
        break;
      }
      paramInt1 = i;
      continue;
      if (paramInt2 != -1) {
        break;
      }
      paramInt1 = i;
    }
    label76:
    DK.onConnectionFailed(Er);
  }
  
  public void onCancel(DialogInterface paramDialogInterface)
  {
    Es = false;
    DK.onConnectionFailed(Er);
  }
  
  public void onConnected(Bundle paramBundle)
  {
    Es = false;
  }
  
  public void onConnectionFailed(ConnectionResult paramConnectionResult)
  {
    Er = paramConnectionResult;
    if (Es) {
      return;
    }
    int i = getActivity().getSupportFragmentManager().getFragments().indexOf(this);
    if (paramConnectionResult.hasResolution()) {
      try
      {
        paramConnectionResult.startResolutionForResult(getActivity(), (i + 1 << 16) + 1);
        return;
      }
      catch (IntentSender.SendIntentException paramConnectionResult)
      {
        Eq.connect();
        return;
      }
    }
    if (GooglePlayServicesUtil.isUserRecoverableError(paramConnectionResult.getErrorCode()))
    {
      GooglePlayServicesUtil.b(paramConnectionResult.getErrorCode(), getActivity(), this, 2, this);
      return;
    }
    DK.onConnectionFailed(Er);
  }
  
  public void onConnectionSuspended(int paramInt) {}
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    if (paramBundle != null)
    {
      Es = paramBundle.getBoolean("resolving_error", false);
      int i = paramBundle.getInt("connection_result_status");
      if (i != 0) {
        Er = new ConnectionResult(i, (PendingIntent)paramBundle.getParcelable("resolution_pending_intent"));
      }
    }
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putBoolean("resolving_error", Es);
    if (Er != null)
    {
      paramBundle.putInt("connection_result_status", Er.getErrorCode());
      paramBundle.putParcelable("resolution_pending_intent", Er.getResolution());
    }
  }
  
  public void onStart()
  {
    super.onStart();
    if ((!Es) && (Eq != null)) {
      Eq.connect();
    }
  }
  
  public void onStop()
  {
    super.onStop();
    if (Eq != null) {
      Eq.disconnect();
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.api.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */