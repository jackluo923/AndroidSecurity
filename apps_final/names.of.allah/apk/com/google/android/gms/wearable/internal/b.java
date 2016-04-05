package com.google.android.gms.wearable.internal;

import android.content.IntentFilter;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public class b
  implements SafeParcelable
{
  public static final Parcelable.Creator<b> CREATOR = new c();
  public final ac alw;
  public final IntentFilter[] alx;
  final int xJ;
  
  b(int paramInt, IBinder paramIBinder, IntentFilter[] paramArrayOfIntentFilter)
  {
    xJ = paramInt;
    if (paramIBinder != null) {}
    for (alw = ac.a.bx(paramIBinder);; alw = null)
    {
      alx = paramArrayOfIntentFilter;
      return;
    }
  }
  
  public b(av paramav)
  {
    xJ = 1;
    alw = paramav;
    alx = paramav.np();
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  IBinder nj()
  {
    if (alw == null) {
      return null;
    }
    return alw.asBinder();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    c.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.wearable.internal.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */