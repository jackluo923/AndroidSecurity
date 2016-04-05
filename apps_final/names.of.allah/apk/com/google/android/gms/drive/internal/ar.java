package com.google.android.gms.drive.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.a.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.drive.DriveId;

public class ar
  implements Parcelable.Creator<OpenContentsRequest>
{
  static void a(OpenContentsRequest paramOpenContentsRequest, Parcel paramParcel, int paramInt)
  {
    int i = b.C(paramParcel);
    b.c(paramParcel, 1, xJ);
    b.a(paramParcel, 2, Ir, paramInt, false);
    b.c(paramParcel, 3, Hv);
    b.G(paramParcel, i);
  }
  
  public OpenContentsRequest as(Parcel paramParcel)
  {
    int k = a.B(paramParcel);
    DriveId localDriveId = null;
    int i = 0;
    int j = 0;
    while (paramParcel.dataPosition() < k)
    {
      int m = a.A(paramParcel);
      switch (a.ar(m))
      {
      default: 
        a.b(paramParcel, m);
        break;
      case 1: 
        i = a.g(paramParcel, m);
        break;
      case 2: 
        localDriveId = (DriveId)a.a(paramParcel, m, DriveId.CREATOR);
        break;
      case 3: 
        j = a.g(paramParcel, m);
      }
    }
    if (paramParcel.dataPosition() != k) {
      throw new a.a("Overread allowed size end=" + k, paramParcel);
    }
    return new OpenContentsRequest(i, localDriveId, j);
  }
  
  public OpenContentsRequest[] bo(int paramInt)
  {
    return new OpenContentsRequest[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.drive.internal.ar
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */