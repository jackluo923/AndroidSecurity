package com.google.android.gms.drive.realtime.internal.event;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public class ParcelableEvent
  implements SafeParcelable
{
  public static final Parcelable.Creator<ParcelableEvent> CREATOR = new a();
  final String Lj;
  final String Ln;
  final boolean Lp;
  final String Lq;
  final TextInsertedDetails Lr;
  final TextDeletedDetails Ls;
  final ValuesAddedDetails Lt;
  final ValuesRemovedDetails Lu;
  final ValuesSetDetails Lv;
  final ValueChangedDetails Lw;
  final ReferenceShiftedDetails Lx;
  final String rO;
  final int xJ;
  
  ParcelableEvent(int paramInt, String paramString1, String paramString2, boolean paramBoolean, String paramString3, String paramString4, TextInsertedDetails paramTextInsertedDetails, TextDeletedDetails paramTextDeletedDetails, ValuesAddedDetails paramValuesAddedDetails, ValuesRemovedDetails paramValuesRemovedDetails, ValuesSetDetails paramValuesSetDetails, ValueChangedDetails paramValueChangedDetails, ReferenceShiftedDetails paramReferenceShiftedDetails)
  {
    xJ = paramInt;
    rO = paramString1;
    Lj = paramString2;
    Lp = paramBoolean;
    Ln = paramString3;
    Lq = paramString4;
    Lr = paramTextInsertedDetails;
    Ls = paramTextDeletedDetails;
    Lt = paramValuesAddedDetails;
    Lu = paramValuesRemovedDetails;
    Lv = paramValuesSetDetails;
    Lw = paramValueChangedDetails;
    Lx = paramReferenceShiftedDetails;
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
 * Qualified Name:     com.google.android.gms.drive.realtime.internal.event.ParcelableEvent
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */