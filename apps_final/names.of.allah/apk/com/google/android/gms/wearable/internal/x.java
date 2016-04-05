package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public class x
  implements SafeParcelable
{
  public static final Parcelable.Creator<x> CREATOR = new y();
  public final ParcelFileDescriptor alM;
  public final int statusCode;
  public final int versionCode;
  
  x(int paramInt1, int paramInt2, ParcelFileDescriptor paramParcelFileDescriptor)
  {
    versionCode = paramInt1;
    statusCode = paramInt2;
    alM = paramParcelFileDescriptor;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    y.a(this, paramParcel, paramInt | 0x1);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.wearable.internal.x
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */