package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.List;

public class as
  implements SafeParcelable
{
  public static final Parcelable.Creator<as> CREATOR = new at();
  public final long alY;
  public final List<ak> ama;
  public final int statusCode;
  public final int versionCode;
  
  as(int paramInt1, int paramInt2, long paramLong, List<ak> paramList)
  {
    versionCode = paramInt1;
    statusCode = paramInt2;
    alY = paramLong;
    ama = paramList;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    at.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.wearable.internal.as
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */