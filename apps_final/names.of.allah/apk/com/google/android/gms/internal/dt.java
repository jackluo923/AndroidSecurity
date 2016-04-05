package com.google.android.gms.internal;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.Bundle;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public final class dt
  implements SafeParcelable
{
  public static final du CREATOR = new du();
  public final ApplicationInfo applicationInfo;
  public final String kL;
  public final ew kO;
  public final am kR;
  public final Bundle pU;
  public final aj pV;
  public final PackageInfo pW;
  public final String pX;
  public final String pY;
  public final String pZ;
  public final Bundle qa;
  public final int versionCode;
  
  dt(int paramInt, Bundle paramBundle1, aj paramaj, am paramam, String paramString1, ApplicationInfo paramApplicationInfo, PackageInfo paramPackageInfo, String paramString2, String paramString3, String paramString4, ew paramew, Bundle paramBundle2)
  {
    versionCode = paramInt;
    pU = paramBundle1;
    pV = paramaj;
    kR = paramam;
    kL = paramString1;
    applicationInfo = paramApplicationInfo;
    pW = paramPackageInfo;
    pX = paramString2;
    pY = paramString3;
    pZ = paramString4;
    kO = paramew;
    qa = paramBundle2;
  }
  
  public dt(Bundle paramBundle1, aj paramaj, am paramam, String paramString1, ApplicationInfo paramApplicationInfo, PackageInfo paramPackageInfo, String paramString2, String paramString3, String paramString4, ew paramew, Bundle paramBundle2)
  {
    this(2, paramBundle1, paramaj, paramam, paramString1, paramApplicationInfo, paramPackageInfo, paramString2, paramString3, paramString4, paramew, paramBundle2);
  }
  
  public dt(dt.a parama, String paramString)
  {
    this(pU, pV, kR, kL, applicationInfo, pW, paramString, pY, pZ, kO, qa);
  }
  
  public final int describeContents()
  {
    return 0;
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    du.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.dt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */