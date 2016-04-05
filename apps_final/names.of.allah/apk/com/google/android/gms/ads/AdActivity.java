package com.google.android.gms.ads;

import android.app.Activity;
import android.os.Bundle;
import android.os.RemoteException;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import com.google.android.gms.internal.cn;
import com.google.android.gms.internal.co;
import com.google.android.gms.internal.ev;

public final class AdActivity
  extends Activity
{
  public static final String CLASS_NAME = "com.google.android.gms.ads.AdActivity";
  public static final String SIMPLE_CLASS_NAME = "AdActivity";
  private co kp;
  
  private void N()
  {
    if (kp != null) {}
    try
    {
      kp.N();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      ev.c("Could not forward setContentViewSet to ad overlay:", localRemoteException);
    }
  }
  
  protected final void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    kp = cn.a(this);
    if (kp == null)
    {
      ev.D("Could not create ad overlay.");
      finish();
      return;
    }
    try
    {
      kp.onCreate(paramBundle);
      return;
    }
    catch (RemoteException paramBundle)
    {
      ev.c("Could not forward onCreate to ad overlay:", paramBundle);
      finish();
    }
  }
  
  protected final void onDestroy()
  {
    try
    {
      if (kp != null) {
        kp.onDestroy();
      }
      super.onDestroy();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      for (;;)
      {
        ev.c("Could not forward onDestroy to ad overlay:", localRemoteException);
      }
    }
  }
  
  protected final void onPause()
  {
    try
    {
      if (kp != null) {
        kp.onPause();
      }
      super.onPause();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      for (;;)
      {
        ev.c("Could not forward onPause to ad overlay:", localRemoteException);
        finish();
      }
    }
  }
  
  protected final void onRestart()
  {
    super.onRestart();
    try
    {
      if (kp != null) {
        kp.onRestart();
      }
      return;
    }
    catch (RemoteException localRemoteException)
    {
      ev.c("Could not forward onRestart to ad overlay:", localRemoteException);
      finish();
    }
  }
  
  protected final void onResume()
  {
    super.onResume();
    try
    {
      if (kp != null) {
        kp.onResume();
      }
      return;
    }
    catch (RemoteException localRemoteException)
    {
      ev.c("Could not forward onResume to ad overlay:", localRemoteException);
      finish();
    }
  }
  
  protected final void onSaveInstanceState(Bundle paramBundle)
  {
    try
    {
      if (kp != null) {
        kp.onSaveInstanceState(paramBundle);
      }
      super.onSaveInstanceState(paramBundle);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      for (;;)
      {
        ev.c("Could not forward onSaveInstanceState to ad overlay:", localRemoteException);
        finish();
      }
    }
  }
  
  protected final void onStart()
  {
    super.onStart();
    try
    {
      if (kp != null) {
        kp.onStart();
      }
      return;
    }
    catch (RemoteException localRemoteException)
    {
      ev.c("Could not forward onStart to ad overlay:", localRemoteException);
      finish();
    }
  }
  
  protected final void onStop()
  {
    try
    {
      if (kp != null) {
        kp.onStop();
      }
      super.onStop();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      for (;;)
      {
        ev.c("Could not forward onStop to ad overlay:", localRemoteException);
        finish();
      }
    }
  }
  
  public final void setContentView(int paramInt)
  {
    super.setContentView(paramInt);
    N();
  }
  
  public final void setContentView(View paramView)
  {
    super.setContentView(paramView);
    N();
  }
  
  public final void setContentView(View paramView, ViewGroup.LayoutParams paramLayoutParams)
  {
    super.setContentView(paramView, paramLayoutParams);
    N();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.AdActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */