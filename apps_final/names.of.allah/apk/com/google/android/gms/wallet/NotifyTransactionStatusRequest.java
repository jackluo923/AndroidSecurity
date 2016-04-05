package com.google.android.gms.wallet;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public final class NotifyTransactionStatusRequest
  implements SafeParcelable
{
  public static final Parcelable.Creator<NotifyTransactionStatusRequest> CREATOR = new m();
  String aiN;
  String ajO;
  int status;
  final int xJ;
  
  NotifyTransactionStatusRequest()
  {
    xJ = 1;
  }
  
  NotifyTransactionStatusRequest(int paramInt1, String paramString1, int paramInt2, String paramString2)
  {
    xJ = paramInt1;
    aiN = paramString1;
    status = paramInt2;
    ajO = paramString2;
  }
  
  public static NotifyTransactionStatusRequest.Builder newBuilder()
  {
    NotifyTransactionStatusRequest localNotifyTransactionStatusRequest = new NotifyTransactionStatusRequest();
    localNotifyTransactionStatusRequest.getClass();
    return new NotifyTransactionStatusRequest.Builder(localNotifyTransactionStatusRequest, null);
  }
  
  public final int describeContents()
  {
    return 0;
  }
  
  public final String getDetailedReason()
  {
    return ajO;
  }
  
  public final String getGoogleTransactionId()
  {
    return aiN;
  }
  
  public final int getStatus()
  {
    return status;
  }
  
  public final int getVersionCode()
  {
    return xJ;
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    m.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.wallet.NotifyTransactionStatusRequest
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */