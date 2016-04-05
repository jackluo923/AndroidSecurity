package com.google.android.gms.drive;

import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a.a;
import com.google.android.gms.common.internal.safeparcel.b;

public class a
  implements Parcelable.Creator<Contents>
{
  static void a(Contents paramContents, Parcel paramParcel, int paramInt)
  {
    int i = b.C(paramParcel);
    b.c(paramParcel, 1, xJ);
    b.a(paramParcel, 2, Fg, paramInt, false);
    b.c(paramParcel, 3, qX);
    b.c(paramParcel, 4, Hv);
    b.a(paramParcel, 5, Hw, paramInt, false);
    b.a(paramParcel, 6, Hx, false);
    b.a(paramParcel, 7, Hy);
    b.G(paramParcel, i);
  }
  
  public Contents M(Parcel paramParcel)
  {
    String str = null;
    boolean bool = false;
    int m = com.google.android.gms.common.internal.safeparcel.a.B(paramParcel);
    DriveId localDriveId = null;
    int i = 0;
    int j = 0;
    ParcelFileDescriptor localParcelFileDescriptor = null;
    int k = 0;
    while (paramParcel.dataPosition() < m)
    {
      int n = com.google.android.gms.common.internal.safeparcel.a.A(paramParcel);
      switch (com.google.android.gms.common.internal.safeparcel.a.ar(n))
      {
      default: 
        com.google.android.gms.common.internal.safeparcel.a.b(paramParcel, n);
        break;
      case 1: 
        k = com.google.android.gms.common.internal.safeparcel.a.g(paramParcel, n);
        break;
      case 2: 
        localParcelFileDescriptor = (ParcelFileDescriptor)com.google.android.gms.common.internal.safeparcel.a.a(paramParcel, n, ParcelFileDescriptor.CREATOR);
        break;
      case 3: 
        j = com.google.android.gms.common.internal.safeparcel.a.g(paramParcel, n);
        break;
      case 4: 
        i = com.google.android.gms.common.internal.safeparcel.a.g(paramParcel, n);
        break;
      case 5: 
        localDriveId = (DriveId)com.google.android.gms.common.internal.safeparcel.a.a(paramParcel, n, DriveId.CREATOR);
        break;
      case 6: 
        str = com.google.android.gms.common.internal.safeparcel.a.o(paramParcel, n);
        break;
      case 7: 
        bool = com.google.android.gms.common.internal.safeparcel.a.c(paramParcel, n);
      }
    }
    if (paramParcel.dataPosition() != m) {
      throw new a.a("Overread allowed size end=" + m, paramParcel);
    }
    return new Contents(k, localParcelFileDescriptor, j, i, localDriveId, str, bool);
  }
  
  public Contents[] aG(int paramInt)
  {
    return new Contents[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.drive.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */