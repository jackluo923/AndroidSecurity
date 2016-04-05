package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public class hs
  implements SafeParcelable
{
  public static final ht CREATOR = new ht();
  public final String GQ;
  public final int GR;
  final int xJ;
  
  public hs(int paramInt1, String paramString, int paramInt2)
  {
    xJ = paramInt1;
    GQ = paramString;
    GR = paramInt2;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    ht.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.hs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */