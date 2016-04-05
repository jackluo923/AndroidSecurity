package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.List;

public class t
  implements SafeParcelable
{
  public static final Parcelable.Creator<t> CREATOR = new u();
  public final List<ai> alK;
  public final int statusCode;
  public final int versionCode;
  
  t(int paramInt1, int paramInt2, List<ai> paramList)
  {
    versionCode = paramInt1;
    statusCode = paramInt2;
    alK = paramList;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    u.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.wearable.internal.t
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */