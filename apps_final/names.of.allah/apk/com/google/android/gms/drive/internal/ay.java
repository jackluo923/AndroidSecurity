package com.google.android.gms.drive.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.a.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.drive.DriveId;
import com.google.android.gms.drive.metadata.internal.MetadataBundle;

public class ay
  implements Parcelable.Creator<UpdateMetadataRequest>
{
  static void a(UpdateMetadataRequest paramUpdateMetadataRequest, Parcel paramParcel, int paramInt)
  {
    int i = b.C(paramParcel);
    b.c(paramParcel, 1, xJ);
    b.a(paramParcel, 2, Ir, paramInt, false);
    b.a(paramParcel, 3, Is, paramInt, false);
    b.G(paramParcel, i);
  }
  
  public UpdateMetadataRequest ay(Parcel paramParcel)
  {
    int j = a.B(paramParcel);
    DriveId localDriveId = null;
    int i = 0;
    MetadataBundle localMetadataBundle = null;
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
        localMetadataBundle = (MetadataBundle)a.a(paramParcel, k, MetadataBundle.CREATOR);
      }
    }
    if (paramParcel.dataPosition() != j) {
      throw new a.a("Overread allowed size end=" + j, paramParcel);
    }
    return new UpdateMetadataRequest(i, localDriveId, localMetadataBundle);
  }
  
  public UpdateMetadataRequest[] bu(int paramInt)
  {
    return new UpdateMetadataRequest[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.drive.internal.ay
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */