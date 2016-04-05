package com.google.android.gms.common.api;

import android.app.Activity;
import android.app.PendingIntent;
import android.os.Parcel;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.hl;
import com.google.android.gms.internal.hl.a;

public final class Status
  implements Result, SafeParcelable
{
  public static final StatusCreator CREATOR = new StatusCreator();
  public static final Status Ek = new Status(0);
  public static final Status El = new Status(14);
  public static final Status Em = new Status(8);
  public static final Status En = new Status(15);
  public static final Status Eo = new Status(16);
  private final int CQ;
  private final String Ep;
  private final PendingIntent mPendingIntent;
  private final int xJ;
  
  public Status(int paramInt)
  {
    this(1, paramInt, null, null);
  }
  
  Status(int paramInt1, int paramInt2, String paramString, PendingIntent paramPendingIntent)
  {
    xJ = paramInt1;
    CQ = paramInt2;
    Ep = paramString;
    mPendingIntent = paramPendingIntent;
  }
  
  public Status(int paramInt, String paramString, PendingIntent paramPendingIntent)
  {
    this(1, paramInt, paramString, paramPendingIntent);
  }
  
  private String es()
  {
    if (Ep != null) {
      return Ep;
    }
    return CommonStatusCodes.getStatusCodeString(CQ);
  }
  
  public final int describeContents()
  {
    return 0;
  }
  
  final PendingIntent eL()
  {
    return mPendingIntent;
  }
  
  @Deprecated
  public final ConnectionResult eM()
  {
    return new ConnectionResult(CQ, mPendingIntent);
  }
  
  public final boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof Status)) {}
    do
    {
      return false;
      paramObject = (Status)paramObject;
    } while ((xJ != xJ) || (CQ != CQ) || (!hl.equal(Ep, Ep)) || (!hl.equal(mPendingIntent, mPendingIntent)));
    return true;
  }
  
  public final PendingIntent getResolution()
  {
    return mPendingIntent;
  }
  
  public final Status getStatus()
  {
    return this;
  }
  
  public final int getStatusCode()
  {
    return CQ;
  }
  
  public final String getStatusMessage()
  {
    return Ep;
  }
  
  final int getVersionCode()
  {
    return xJ;
  }
  
  public final boolean hasResolution()
  {
    return mPendingIntent != null;
  }
  
  public final int hashCode()
  {
    return hl.hashCode(new Object[] { Integer.valueOf(xJ), Integer.valueOf(CQ), Ep, mPendingIntent });
  }
  
  public final boolean isCanceled()
  {
    return CQ == 16;
  }
  
  public final boolean isInterrupted()
  {
    return CQ == 14;
  }
  
  public final boolean isSuccess()
  {
    return CQ <= 0;
  }
  
  public final void startResolutionForResult(Activity paramActivity, int paramInt)
  {
    if (!hasResolution()) {
      return;
    }
    paramActivity.startIntentSenderForResult(mPendingIntent.getIntentSender(), paramInt, null, 0, 0, 0);
  }
  
  public final String toString()
  {
    return hl.e(this).a("statusCode", es()).a("resolution", mPendingIntent).toString();
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    StatusCreator.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.api.Status
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */