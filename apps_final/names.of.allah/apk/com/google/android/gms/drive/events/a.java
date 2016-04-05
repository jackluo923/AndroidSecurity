package com.google.android.gms.drive.events;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.drive.DriveId;

public class a
  implements Parcelable.Creator<ChangeEvent>
{
  static void a(ChangeEvent paramChangeEvent, Parcel paramParcel, int paramInt)
  {
    int i = b.C(paramParcel);
    b.c(paramParcel, 1, xJ);
    b.a(paramParcel, 2, Hw, paramInt, false);
    b.c(paramParcel, 3, Id);
    b.G(paramParcel, i);
  }
  
  public ChangeEvent P(Parcel paramParcel)
  {
    int k = com.google.android.gms.common.internal.safeparcel.a.B(paramParcel);
    DriveId localDriveId = null;
    int i = 0;
    int j = 0;
    while (paramParcel.dataPosition() < k)
    {
      int m = com.google.android.gms.common.internal.safeparcel.a.A(paramParcel);
      switch (com.google.android.gms.common.internal.safeparcel.a.ar(m))
      {
      default: 
        com.google.android.gms.common.internal.safeparcel.a.b(paramParcel, m);
        break;
      case 1: 
        i = com.google.android.gms.common.internal.safeparcel.a.g(paramParcel, m);
        break;
      case 2: 
        localDriveId = (DriveId)com.google.android.gms.common.internal.safeparcel.a.a(paramParcel, m, DriveId.CREATOR);
        break;
      case 3: 
        j = com.google.android.gms.common.internal.safeparcel.a.g(paramParcel, m);
      }
    }
    if (paramParcel.dataPosition() != k) {
      throw new a.a("Overread allowed size end=" + k, paramParcel);
    }
    return new ChangeEvent(i, localDriveId, j);
  }
  
  public ChangeEvent[] aJ(int paramInt)
  {
    return new ChangeEvent[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.drive.events.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */