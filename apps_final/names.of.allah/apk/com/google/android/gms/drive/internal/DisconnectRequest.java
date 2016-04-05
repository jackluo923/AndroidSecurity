package com.google.android.gms.drive.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public class DisconnectRequest
  implements SafeParcelable
{
  public static final Parcelable.Creator<DisconnectRequest> CREATOR = new o();
  final int xJ;
  
  public DisconnectRequest()
  {
    this(1);
  }
  
  DisconnectRequest(int paramInt)
  {
    xJ = paramInt;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    o.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.drive.internal.DisconnectRequest
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */