package com.google.android.gms.wallet.wobs;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public final class b
  implements SafeParcelable
{
  public static final Parcelable.Creator<b> CREATOR = new c();
  String label;
  String value;
  private final int xJ;
  
  b()
  {
    xJ = 1;
  }
  
  b(int paramInt, String paramString1, String paramString2)
  {
    xJ = paramInt;
    label = paramString1;
    value = paramString2;
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
    c.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.wallet.wobs.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */