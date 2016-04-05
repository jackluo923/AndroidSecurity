package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.Parcel;

class dx$a$a
  implements dx
{
  private IBinder ko;
  
  dx$a$a(IBinder paramIBinder)
  {
    ko = paramIBinder;
  }
  
  public IBinder asBinder()
  {
    return ko;
  }
  
  public dv b(dt paramdt)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    for (;;)
    {
      try
      {
        localParcel1.writeInterfaceToken("com.google.android.gms.ads.internal.request.IAdRequestService");
        if (paramdt != null)
        {
          localParcel1.writeInt(1);
          paramdt.writeToParcel(localParcel1, 0);
          ko.transact(1, localParcel1, localParcel2, 0);
          localParcel2.readException();
          if (localParcel2.readInt() != 0)
          {
            paramdt = dv.CREATOR.i(localParcel2);
            return paramdt;
          }
        }
        else
        {
          localParcel1.writeInt(0);
          continue;
        }
        paramdt = null;
      }
      finally
      {
        localParcel2.recycle();
        localParcel1.recycle();
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.dx.a.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */