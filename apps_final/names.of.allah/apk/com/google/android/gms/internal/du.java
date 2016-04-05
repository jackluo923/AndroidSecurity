package com.google.android.gms.internal;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.a.a;
import com.google.android.gms.common.internal.safeparcel.b;

public class du
  implements Parcelable.Creator<dt>
{
  static void a(dt paramdt, Parcel paramParcel, int paramInt)
  {
    int i = b.C(paramParcel);
    b.c(paramParcel, 1, versionCode);
    b.a(paramParcel, 2, pU, false);
    b.a(paramParcel, 3, pV, paramInt, false);
    b.a(paramParcel, 4, kR, paramInt, false);
    b.a(paramParcel, 5, kL, false);
    b.a(paramParcel, 6, applicationInfo, paramInt, false);
    b.a(paramParcel, 7, pW, paramInt, false);
    b.a(paramParcel, 8, pX, false);
    b.a(paramParcel, 9, pY, false);
    b.a(paramParcel, 10, pZ, false);
    b.a(paramParcel, 11, kO, paramInt, false);
    b.a(paramParcel, 12, qa, false);
    b.G(paramParcel, i);
  }
  
  public dt h(Parcel paramParcel)
  {
    int j = a.B(paramParcel);
    int i = 0;
    Bundle localBundle2 = null;
    aj localaj = null;
    am localam = null;
    String str4 = null;
    ApplicationInfo localApplicationInfo = null;
    PackageInfo localPackageInfo = null;
    String str3 = null;
    String str2 = null;
    String str1 = null;
    ew localew = null;
    Bundle localBundle1 = null;
    while (paramParcel.dataPosition() < j)
    {
      int k = a.A(paramParcel);
      switch (a.ar(k))
      {
      default: 
        a.b(paramParcel, k);
        break;
      case 1: 
        i = a.g(paramParcel, k);
        break;
      case 2: 
        localBundle2 = a.q(paramParcel, k);
        break;
      case 3: 
        localaj = (aj)a.a(paramParcel, k, aj.CREATOR);
        break;
      case 4: 
        localam = (am)a.a(paramParcel, k, am.CREATOR);
        break;
      case 5: 
        str4 = a.o(paramParcel, k);
        break;
      case 6: 
        localApplicationInfo = (ApplicationInfo)a.a(paramParcel, k, ApplicationInfo.CREATOR);
        break;
      case 7: 
        localPackageInfo = (PackageInfo)a.a(paramParcel, k, PackageInfo.CREATOR);
        break;
      case 8: 
        str3 = a.o(paramParcel, k);
        break;
      case 9: 
        str2 = a.o(paramParcel, k);
        break;
      case 10: 
        str1 = a.o(paramParcel, k);
        break;
      case 11: 
        localew = (ew)a.a(paramParcel, k, ew.CREATOR);
        break;
      case 12: 
        localBundle1 = a.q(paramParcel, k);
      }
    }
    if (paramParcel.dataPosition() != j) {
      throw new a.a("Overread allowed size end=" + j, paramParcel);
    }
    return new dt(i, localBundle2, localaj, localam, str4, localApplicationInfo, localPackageInfo, str3, str2, str1, localew, localBundle1);
  }
  
  public dt[] m(int paramInt)
  {
    return new dt[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.du
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */