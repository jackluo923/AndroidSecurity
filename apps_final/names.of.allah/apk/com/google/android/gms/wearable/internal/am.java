package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public class am
  implements SafeParcelable
{
  public static final Parcelable.Creator<am> CREATOR = new an();
  public final m alL;
  public final int statusCode;
  public final int versionCode;
  
  am(int paramInt1, int paramInt2, m paramm)
  {
    versionCode = paramInt1;
    statusCode = paramInt2;
    alL = paramm;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    an.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.wearable.internal.am
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */