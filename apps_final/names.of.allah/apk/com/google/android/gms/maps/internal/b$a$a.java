package com.google.android.gms.maps.internal;

import android.os.IBinder;
import android.os.Parcel;

class b$a$a
  implements b
{
  private IBinder ko;
  
  b$a$a(IBinder paramIBinder)
  {
    ko = paramIBinder;
  }
  
  public IBinder asBinder()
  {
    return ko;
  }
  
  public void onCancel()
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.ICancelableCallback");
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
  
  public void onFinish()
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.maps.internal.ICancelableCallback");
      ko.transact(1, localParcel1, localParcel2, 0);
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
 * Qualified Name:     com.google.android.gms.maps.internal.b.a.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */