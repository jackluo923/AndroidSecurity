package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.Parcel;

class hh$a$a
  implements hh
{
  private IBinder ko;
  
  hh$a$a(IBinder paramIBinder)
  {
    ko = paramIBinder;
  }
  
  public IBinder asBinder()
  {
    return ko;
  }
  
  public void cancel()
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.common.internal.ICancelToken");
      ko.transact(2, localParcel1, localParcel2, 0);
      localParcel2.readException();
      return;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.hh.a.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */