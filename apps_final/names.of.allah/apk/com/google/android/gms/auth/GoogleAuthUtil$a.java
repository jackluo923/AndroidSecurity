package com.google.android.gms.auth;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.google.android.gms.common.GooglePlayServicesUtil;

class GoogleAuthUtil$a
  extends Handler
{
  private final Context lx;
  
  GoogleAuthUtil$a(Context paramContext) {}
  
  public void handleMessage(Message paramMessage)
  {
    if (what == 1)
    {
      int i = GooglePlayServicesUtil.isGooglePlayServicesAvailable(lx);
      if (GooglePlayServicesUtil.isUserRecoverableError(i)) {
        GooglePlayServicesUtil.showErrorNotification(i, lx);
      }
      return;
    }
    Log.wtf("GoogleAuthUtil", "Don't know how to handle this message: " + what);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.auth.GoogleAuthUtil.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */