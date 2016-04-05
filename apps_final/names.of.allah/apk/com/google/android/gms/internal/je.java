package com.google.android.gms.internal;

import android.app.PendingIntent;
import android.os.IInterface;

public abstract interface je
  extends IInterface
{
  public abstract void onAddGeofencesResult(int paramInt, String[] paramArrayOfString);
  
  public abstract void onRemoveGeofencesByPendingIntentResult(int paramInt, PendingIntent paramPendingIntent);
  
  public abstract void onRemoveGeofencesByRequestIdsResult(int paramInt, String[] paramArrayOfString);
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.je
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */