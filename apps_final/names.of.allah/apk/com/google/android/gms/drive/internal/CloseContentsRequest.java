package com.google.android.gms.drive.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.Contents;

public class CloseContentsRequest
  implements SafeParcelable
{
  public static final Parcelable.Creator<CloseContentsRequest> CREATOR = new f();
  final Contents It;
  final Boolean Iw;
  final int xJ;
  
  CloseContentsRequest(int paramInt, Contents paramContents, Boolean paramBoolean)
  {
    xJ = paramInt;
    It = paramContents;
    Iw = paramBoolean;
  }
  
  public CloseContentsRequest(Contents paramContents, boolean paramBoolean)
  {
    this(1, paramContents, Boolean.valueOf(paramBoolean));
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    f.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.drive.internal.CloseContentsRequest
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */