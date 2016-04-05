package com.google.android.gms.drive.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.a.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.drive.DriveId;

public class ae
  implements Parcelable.Creator<LoadRealtimeRequest>
{
  static void a(LoadRealtimeRequest paramLoadRealtimeRequest, Parcel paramParcel, int paramInt)
  {
    int i = b.C(paramParcel);
    b.c(paramParcel, 1, xJ);
    b.a(paramParcel, 2, Hw, paramInt, false);
    b.a(paramParcel, 3, Jp);
    b.G(paramParcel, i);
  }
  
  public LoadRealtimeRequest ag(Parcel paramParcel)
  {
    int j = a.B(paramParcel);
    DriveId localDriveId = null;
    int i = 0;
    boolean bool = false;
    while (paramParcel.dataPosition() < j)
    {
      int k = a.A(paramParcel);
      switch (a.ar(k))
      {
      default: 
        a.b(paramParcel, k);
        break;
      case 1: 
        i = a.g(paramParcel, k);
        break;
      case 2: 
        localDriveId = (DriveId)a.a(paramParcel, k, DriveId.CREATOR);
        break;
      case 3: 
        bool = a.c(paramParcel, k);
      }
    }
    if (paramParcel.dataPosition() != j) {
      throw new a.a("Overread allowed size end=" + j, paramParcel);
    }
    return new LoadRealtimeRequest(i, localDriveId, bool);
  }
  
  public LoadRealtimeRequest[] bc(int paramInt)
  {
    return new LoadRealtimeRequest[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.drive.internal.ae
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */