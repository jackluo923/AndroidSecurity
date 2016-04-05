package com.google.android.gms.drive.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.Contents;
import com.google.android.gms.drive.DriveId;
import com.google.android.gms.drive.metadata.internal.MetadataBundle;

public class CloseContentsAndUpdateMetadataRequest
  implements SafeParcelable
{
  public static final Parcelable.Creator<CloseContentsAndUpdateMetadataRequest> CREATOR = new e();
  final DriveId Ir;
  final MetadataBundle Is;
  final Contents It;
  final boolean Iu;
  final String Iv;
  final int xJ;
  
  CloseContentsAndUpdateMetadataRequest(int paramInt, DriveId paramDriveId, MetadataBundle paramMetadataBundle, Contents paramContents, boolean paramBoolean, String paramString)
  {
    xJ = paramInt;
    Ir = paramDriveId;
    Is = paramMetadataBundle;
    It = paramContents;
    Iu = paramBoolean;
    Iv = paramString;
  }
  
  public CloseContentsAndUpdateMetadataRequest(DriveId paramDriveId, MetadataBundle paramMetadataBundle, Contents paramContents, boolean paramBoolean, String paramString)
  {
    this(1, paramDriveId, paramMetadataBundle, paramContents, paramBoolean, paramString);
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    e.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.drive.internal.CloseContentsAndUpdateMetadataRequest
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */