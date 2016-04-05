package com.google.android.gms.wallet.wobs;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.ih;
import java.util.ArrayList;

public final class d
  implements SafeParcelable
{
  public static final Parcelable.Creator<d> CREATOR = new e();
  String akM;
  String akN;
  ArrayList<b> akO;
  private final int xJ;
  
  d()
  {
    xJ = 1;
    akO = ih.fV();
  }
  
  d(int paramInt, String paramString1, String paramString2, ArrayList<b> paramArrayList)
  {
    xJ = paramInt;
    akM = paramString1;
    akN = paramString2;
    akO = paramArrayList;
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
    e.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.wallet.wobs.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */