package com.google.android.gms.wallet;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public final class InstrumentInfo
  implements SafeParcelable
{
  public static final Parcelable.Creator<InstrumentInfo> CREATOR = new h();
  private String aiZ;
  private String aja;
  private final int xJ;
  
  InstrumentInfo(int paramInt, String paramString1, String paramString2)
  {
    xJ = paramInt;
    aiZ = paramString1;
    aja = paramString2;
  }
  
  public final int describeContents()
  {
    return 0;
  }
  
  public final String getInstrumentDetails()
  {
    return aja;
  }
  
  public final String getInstrumentType()
  {
    return aiZ;
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
 * Qualified Name:     com.google.android.gms.wallet.InstrumentInfo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */