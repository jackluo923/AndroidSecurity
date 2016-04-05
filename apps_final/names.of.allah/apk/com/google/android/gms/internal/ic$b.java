package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public class ic$b
  implements SafeParcelable
{
  public static final ib CREATOR = new ib();
  final hz.a<?, ?> Hm;
  final String eM;
  final int versionCode;
  
  ic$b(int paramInt, String paramString, hz.a<?, ?> parama)
  {
    versionCode = paramInt;
    eM = paramString;
    Hm = parama;
  }
  
  ic$b(String paramString, hz.a<?, ?> parama)
  {
    versionCode = 1;
    eM = paramString;
    Hm = parama;
  }
  
  public int describeContents()
  {
    ib localib = CREATOR;
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    ib localib = CREATOR;
    ib.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ic.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */