package com.google.android.gms.drive.realtime.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public class BeginCompoundOperationRequest
  implements SafeParcelable
{
  public static final Parcelable.Creator<BeginCompoundOperationRequest> CREATOR = new a();
  final boolean Lg;
  final String mName;
  final int xJ;
  
  BeginCompoundOperationRequest(int paramInt, boolean paramBoolean, String paramString)
  {
    xJ = paramInt;
    Lg = paramBoolean;
    mName = paramString;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    a.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.drive.realtime.internal.BeginCompoundOperationRequest
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */