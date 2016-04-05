package com.google.android.gms.drive.events;

import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.DriveId;
import com.google.android.gms.drive.metadata.internal.MetadataBundle;
import java.util.ArrayList;

public final class FileConflictEvent
  implements SafeParcelable, DriveEvent
{
  public static final Parcelable.Creator<FileConflictEvent> CREATOR = new c();
  final DriveId Hw;
  final ParcelFileDescriptor Ig;
  final ParcelFileDescriptor Ih;
  final MetadataBundle Ii;
  final ArrayList<String> Ij;
  private boolean Ik = false;
  private boolean Il = false;
  private boolean Im = false;
  final int xJ;
  final String yN;
  
  FileConflictEvent(int paramInt, DriveId paramDriveId, String paramString, ParcelFileDescriptor paramParcelFileDescriptor1, ParcelFileDescriptor paramParcelFileDescriptor2, MetadataBundle paramMetadataBundle, ArrayList<String> paramArrayList)
  {
    xJ = paramInt;
    Hw = paramDriveId;
    yN = paramString;
    Ig = paramParcelFileDescriptor1;
    Ih = paramParcelFileDescriptor2;
    Ii = paramMetadataBundle;
    Ij = paramArrayList;
  }
  
  public final int describeContents()
  {
    return 0;
  }
  
  public final DriveId getDriveId()
  {
    return Hw;
  }
  
  public final int getType()
  {
    return 2;
  }
  
  public final String toString()
  {
    return String.format("FileConflictEvent [id=%s]", new Object[] { Hw });
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    c.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.drive.events.FileConflictEvent
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */