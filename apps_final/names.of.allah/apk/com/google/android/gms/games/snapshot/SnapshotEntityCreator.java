package com.google.android.gms.games.snapshot;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.a.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.drive.Contents;

public class SnapshotEntityCreator
  implements Parcelable.Creator<SnapshotEntity>
{
  public static final int CONTENT_DESCRIPTION = 0;
  
  static void a(SnapshotEntity paramSnapshotEntity, Parcel paramParcel, int paramInt)
  {
    int i = b.C(paramParcel);
    b.a(paramParcel, 1, paramSnapshotEntity.getMetadata(), paramInt, false);
    b.c(paramParcel, 1000, paramSnapshotEntity.getVersionCode());
    b.a(paramParcel, 2, paramSnapshotEntity.getContents(), paramInt, false);
    b.G(paramParcel, i);
  }
  
  public SnapshotEntity createFromParcel(Parcel paramParcel)
  {
    int j = a.B(paramParcel);
    SnapshotMetadataEntity localSnapshotMetadataEntity = null;
    int i = 0;
    Contents localContents = null;
    while (paramParcel.dataPosition() < j)
    {
      int k = a.A(paramParcel);
      switch (a.ar(k))
      {
      default: 
        a.b(paramParcel, k);
        break;
      case 1: 
        localSnapshotMetadataEntity = (SnapshotMetadataEntity)a.a(paramParcel, k, SnapshotMetadataEntity.CREATOR);
        break;
      case 1000: 
        i = a.g(paramParcel, k);
        break;
      case 2: 
        localContents = (Contents)a.a(paramParcel, k, Contents.CREATOR);
      }
    }
    if (paramParcel.dataPosition() != j) {
      throw new a.a("Overread allowed size end=" + j, paramParcel);
    }
    return new SnapshotEntity(i, localSnapshotMetadataEntity, localContents);
  }
  
  public SnapshotEntity[] newArray(int paramInt)
  {
    return new SnapshotEntity[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.snapshot.SnapshotEntityCreator
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */