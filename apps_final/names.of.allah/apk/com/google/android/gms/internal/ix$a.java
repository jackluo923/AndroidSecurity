package com.google.android.gms.internal;

import android.app.Activity;
import android.app.PendingIntent;
import android.app.PendingIntent.CanceledException;
import android.content.Intent;
import android.content.IntentSender.SendIntentException;
import android.os.Bundle;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;

public final class ix$a
  extends iy.a
{
  private final int FT;
  private Activity oe;
  
  public ix$a(int paramInt, Activity paramActivity)
  {
    FT = paramInt;
    oe = paramActivity;
  }
  
  private void setActivity(Activity paramActivity)
  {
    oe = paramActivity;
  }
  
  public final void g(int paramInt, Bundle paramBundle)
  {
    Object localObject;
    if (paramInt == 1)
    {
      localObject = new Intent();
      ((Intent)localObject).putExtras(paramBundle);
      paramBundle = oe.createPendingResult(FT, (Intent)localObject, 1073741824);
      if (paramBundle != null) {}
    }
    for (;;)
    {
      return;
      try
      {
        paramBundle.send(1);
        return;
      }
      catch (PendingIntent.CanceledException paramBundle)
      {
        Log.w("AddressClientImpl", "Exception settng pending result", paramBundle);
        return;
      }
      localObject = null;
      if (paramBundle != null) {
        localObject = (PendingIntent)paramBundle.getParcelable("com.google.android.gms.identity.intents.EXTRA_PENDING_INTENT");
      }
      paramBundle = new ConnectionResult(paramInt, (PendingIntent)localObject);
      if (paramBundle.hasResolution()) {
        try
        {
          paramBundle.startResolutionForResult(oe, FT);
          return;
        }
        catch (IntentSender.SendIntentException paramBundle)
        {
          Log.w("AddressClientImpl", "Exception starting pending intent", paramBundle);
          return;
        }
      }
      try
      {
        paramBundle = oe.createPendingResult(FT, new Intent(), 1073741824);
        if (paramBundle != null)
        {
          paramBundle.send(1);
          return;
        }
      }
      catch (PendingIntent.CanceledException paramBundle)
      {
        Log.w("AddressClientImpl", "Exception setting pending result", paramBundle);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ix.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */