package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.a.a;
import com.google.android.gms.common.internal.safeparcel.b;

public class DetectedActivityCreator
  implements Parcelable.Creator<DetectedActivity>
{
  public static final int CONTENT_DESCRIPTION = 0;
  
  static void a(DetectedActivity paramDetectedActivity, Parcel paramParcel, int paramInt)
  {
    paramInt = b.C(paramParcel);
    b.c(paramParcel, 1, UV);
    b.c(paramParcel, 1000, paramDetectedActivity.getVersionCode());
    b.c(paramParcel, 2, UW);
    b.G(paramParcel, paramInt);
  }
  
  public DetectedActivity createFromParcel(Parcel paramParcel)
  {
    int k = 0;
    int m = a.B(paramParcel);
    int j = 0;
    int i = 0;
    while (paramParcel.dataPosition() < m)
    {
      int n = a.A(paramParcel);
      switch (a.ar(n))
      {
      default: 
        a.b(paramParcel, n);
        break;
      case 1: 
        j = a.g(paramParcel, n);
        break;
      case 1000: 
        i = a.g(paramParcel, n);
        break;
      case 2: 
        k = a.g(paramParcel, n);
      }
    }
    if (paramParcel.dataPosition() != m) {
      throw new a.a("Overread allowed size end=" + m, paramParcel);
    }
    return new DetectedActivity(i, j, k);
  }
  
  public DetectedActivity[] newArray(int paramInt)
  {
    return new DetectedActivity[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.location.DetectedActivityCreator
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */