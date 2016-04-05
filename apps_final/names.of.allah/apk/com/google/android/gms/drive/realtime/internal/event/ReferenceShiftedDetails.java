package com.google.android.gms.drive.realtime.internal.event;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public class ReferenceShiftedDetails
  implements SafeParcelable
{
  public static final Parcelable.Creator<ReferenceShiftedDetails> CREATOR = new d();
  final String LE;
  final String LF;
  final int LG;
  final int LH;
  final int xJ;
  
  ReferenceShiftedDetails(int paramInt1, String paramString1, String paramString2, int paramInt2, int paramInt3)
  {
    xJ = paramInt1;
    LE = paramString1;
    LF = paramString2;
    LG = paramInt2;
    LH = paramInt3;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    d.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.drive.realtime.internal.event.ReferenceShiftedDetails
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */