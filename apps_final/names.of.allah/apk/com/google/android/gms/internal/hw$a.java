package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public final class hw$a
  implements SafeParcelable
{
  public static final hy CREATOR = new hy();
  final String GW;
  final int GX;
  final int versionCode;
  
  hw$a(int paramInt1, String paramString, int paramInt2)
  {
    versionCode = paramInt1;
    GW = paramString;
    GX = paramInt2;
  }
  
  hw$a(String paramString, int paramInt)
  {
    versionCode = 1;
    GW = paramString;
    GX = paramInt;
  }
  
  public final int describeContents()
  {
    hy localhy = CREATOR;
    return 0;
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    hy localhy = CREATOR;
    hy.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.hw.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */