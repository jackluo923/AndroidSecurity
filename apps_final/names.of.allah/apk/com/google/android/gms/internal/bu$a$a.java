package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.Parcel;

class bu$a$a
  implements bu
{
  private IBinder ko;
  
  bu$a$a(IBinder paramIBinder)
  {
    ko = paramIBinder;
  }
  
  public IBinder asBinder()
  {
    return ko;
  }
  
  public bv m(String paramString)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.ads.internal.mediation.client.IAdapterCreator");
      localParcel1.writeString(paramString);
      ko.transact(1, localParcel1, localParcel2, 0);
      localParcel2.readException();
      paramString = bv.a.j(localParcel2.readStrongBinder());
      return paramString;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.bu.a.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */