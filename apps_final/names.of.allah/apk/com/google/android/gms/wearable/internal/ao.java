package com.google.android.gms.wearable.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public class ao
  implements SafeParcelable
{
  public static final Parcelable.Creator<ao> CREATOR = new ap();
  public final ac alw;
  final int xJ;
  
  ao(int paramInt, IBinder paramIBinder)
  {
    xJ = paramInt;
    if (paramIBinder != null)
    {
      alw = ac.a.bx(paramIBinder);
      return;
    }
    alw = null;
  }
  
  public ao(ac paramac)
  {
    xJ = 1;
    alw = paramac;
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
    ap.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.wearable.internal.ao
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */