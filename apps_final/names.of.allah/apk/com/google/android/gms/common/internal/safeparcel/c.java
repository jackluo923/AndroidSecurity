package com.google.android.gms.common.internal.safeparcel;

import android.os.Parcel;

public final class c
{
  public static <T extends SafeParcelable> byte[] a(T paramT)
  {
    Parcel localParcel = Parcel.obtain();
    paramT.writeToParcel(localParcel, 0);
    paramT = localParcel.marshall();
    localParcel.recycle();
    return paramT;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.internal.safeparcel.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */