package com.google.android.gms.drive.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.a.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.drive.DriveId;
import com.google.android.gms.drive.metadata.CustomPropertyKey;

public class m
  implements Parcelable.Creator<DeleteCustomPropertyRequest>
{
  static void a(DeleteCustomPropertyRequest paramDeleteCustomPropertyRequest, Parcel paramParcel, int paramInt)
  {
    int i = b.C(paramParcel);
    b.c(paramParcel, 1, xJ);
    b.a(paramParcel, 2, Hw, paramInt, false);
    b.a(paramParcel, 3, IG, paramInt, false);
    b.G(paramParcel, i);
  }
  
  public DeleteCustomPropertyRequest[] aW(int paramInt)
  {
    return new DeleteCustomPropertyRequest[paramInt];
  }
  
  public DeleteCustomPropertyRequest aa(Parcel paramParcel)
  {
    int j = a.B(paramParcel);
    DriveId localDriveId = null;
    int i = 0;
    CustomPropertyKey localCustomPropertyKey = null;
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
        localCustomPropertyKey = (CustomPropertyKey)a.a(paramParcel, k, CustomPropertyKey.CREATOR);
      }
    }
    if (paramParcel.dataPosition() != j) {
      throw new a.a("Overread allowed size end=" + j, paramParcel);
    }
    return new DeleteCustomPropertyRequest(i, localDriveId, localCustomPropertyKey);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.drive.internal.m
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */