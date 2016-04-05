package com.google.android.gms.drive.realtime.internal.event;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public class ParcelableEventList
  implements SafeParcelable
{
  public static final Parcelable.Creator<ParcelableEventList> CREATOR = new b();
  final boolean LA;
  final ParcelableObjectChangedEvent[] LB;
  final ParcelableEvent[] Ly;
  final DataHolder Lz;
  final int xJ;
  
  ParcelableEventList(int paramInt, ParcelableEvent[] paramArrayOfParcelableEvent, DataHolder paramDataHolder, boolean paramBoolean, ParcelableObjectChangedEvent[] paramArrayOfParcelableObjectChangedEvent)
  {
    xJ = paramInt;
    Ly = paramArrayOfParcelableEvent;
    Lz = paramDataHolder;
    LA = paramBoolean;
    LB = paramArrayOfParcelableObjectChangedEvent;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    b.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.drive.realtime.internal.event.ParcelableEventList
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */