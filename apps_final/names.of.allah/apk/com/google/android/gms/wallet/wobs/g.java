package com.google.android.gms.wallet.wobs;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public final class g
  implements SafeParcelable
{
  public static final Parcelable.Creator<g> CREATOR = new h();
  int akQ;
  String akR;
  double akS;
  String akT;
  long akU;
  int akV;
  private final int xJ;
  
  g()
  {
    xJ = 1;
    akV = -1;
    akQ = -1;
    akS = -1.0D;
  }
  
  g(int paramInt1, int paramInt2, String paramString1, double paramDouble, String paramString2, long paramLong, int paramInt3)
  {
    xJ = paramInt1;
    akQ = paramInt2;
    akR = paramString1;
    akS = paramDouble;
    akT = paramString2;
    akU = paramLong;
    akV = paramInt3;
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
    h.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.wallet.wobs.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */