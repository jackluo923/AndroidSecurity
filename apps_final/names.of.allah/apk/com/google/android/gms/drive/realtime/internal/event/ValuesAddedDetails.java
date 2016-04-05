package com.google.android.gms.drive.realtime.internal.event;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public class ValuesAddedDetails
  implements SafeParcelable
{
  public static final Parcelable.Creator<ValuesAddedDetails> CREATOR = new h();
  final int LC;
  final int LD;
  final String LK;
  final int LL;
  final int mIndex;
  final int xJ;
  
  ValuesAddedDetails(int paramInt1, int paramInt2, int paramInt3, int paramInt4, String paramString, int paramInt5)
  {
    xJ = paramInt1;
    mIndex = paramInt2;
    LC = paramInt3;
    LD = paramInt4;
    LK = paramString;
    LL = paramInt5;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    h.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.drive.realtime.internal.event.ValuesAddedDetails
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */