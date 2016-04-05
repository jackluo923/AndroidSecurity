package com.google.android.gms.wallet.wobs;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public final class f
  implements SafeParcelable
{
  public static final Parcelable.Creator<f> CREATOR = new i();
  l ajp;
  g akP;
  String label;
  String type;
  private final int xJ;
  
  f()
  {
    xJ = 1;
  }
  
  f(int paramInt, String paramString1, g paramg, String paramString2, l paraml)
  {
    xJ = paramInt;
    label = paramString1;
    akP = paramg;
    type = paramString2;
    ajp = paraml;
  }
  
  public final int describeContents()
  {
    return 0;
  }
  
  public final int getVersionCode()
  {
    return xJ;
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    i.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.wallet.wobs.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */