package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.wearable.c;

public class r
  implements SafeParcelable
{
  public static final Parcelable.Creator<r> CREATOR = new s();
  public final c alJ;
  public final int statusCode;
  public final int versionCode;
  
  r(int paramInt1, int paramInt2, c paramc)
  {
    versionCode = paramInt1;
    statusCode = paramInt2;
    alJ = paramc;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    s.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.wearable.internal.r
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */