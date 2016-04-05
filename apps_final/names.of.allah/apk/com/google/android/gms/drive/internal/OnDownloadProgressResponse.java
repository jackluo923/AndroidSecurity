package com.google.android.gms.drive.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public class OnDownloadProgressResponse
  implements SafeParcelable
{
  public static final Parcelable.Creator<OnDownloadProgressResponse> CREATOR = new ah();
  final long Jt;
  final long Ju;
  final int xJ;
  
  OnDownloadProgressResponse(int paramInt, long paramLong1, long paramLong2)
  {
    xJ = paramInt;
    Jt = paramLong1;
    Ju = paramLong2;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public long gp()
  {
    return Jt;
  }
  
  public long gq()
  {
    return Ju;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    ah.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.drive.internal.OnDownloadProgressResponse
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */