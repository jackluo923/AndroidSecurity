package com.google.android.gms.drive.internal;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.drive.DriveId;

public class a
  implements Parcelable.Creator<AddEventListenerRequest>
{
  static void a(AddEventListenerRequest paramAddEventListenerRequest, Parcel paramParcel, int paramInt)
  {
    int i = b.C(paramParcel);
    b.c(paramParcel, 1, xJ);
    b.a(paramParcel, 2, Hw, paramInt, false);
    b.c(paramParcel, 3, In);
    b.a(paramParcel, 4, Io, paramInt, false);
    b.G(paramParcel, i);
  }
  
  public AddEventListenerRequest R(Parcel paramParcel)
  {
    int k = com.google.android.gms.common.internal.safeparcel.a.B(paramParcel);
    int j = 0;
    DriveId localDriveId = null;
    int i = 0;
    PendingIntent localPendingIntent = null;
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
        break;
      case 4: 
        localPendingIntent = (PendingIntent)com.google.android.gms.common.internal.safeparcel.a.a(paramParcel, m, PendingIntent.CREATOR);
      }
    }
    if (paramParcel.dataPosition() != k) {
      throw new a.a("Overread allowed size end=" + k, paramParcel);
    }
    return new AddEventListenerRequest(i, localDriveId, j, localPendingIntent);
  }
  
  public AddEventListenerRequest[] aM(int paramInt)
  {
    return new AddEventListenerRequest[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.drive.internal.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */