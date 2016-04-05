package com.google.android.gms.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.identity.intents.UserAddressRequest;

class iz$a$a
  implements iz
{
  private IBinder ko;
  
  iz$a$a(IBinder paramIBinder)
  {
    ko = paramIBinder;
  }
  
  public void a(iy paramiy, UserAddressRequest paramUserAddressRequest, Bundle paramBundle)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    label127:
    for (;;)
    {
      try
      {
        localParcel1.writeInterfaceToken("com.google.android.gms.identity.intents.internal.IAddressService");
        if (paramiy != null)
        {
          paramiy = paramiy.asBinder();
          localParcel1.writeStrongBinder(paramiy);
          if (paramUserAddressRequest != null)
          {
            localParcel1.writeInt(1);
            paramUserAddressRequest.writeToParcel(localParcel1, 0);
            if (paramBundle == null) {
              break label127;
            }
            localParcel1.writeInt(1);
            paramBundle.writeToParcel(localParcel1, 0);
            ko.transact(2, localParcel1, localParcel2, 0);
            localParcel2.readException();
          }
        }
        else
        {
          paramiy = null;
          continue;
        }
        localParcel1.writeInt(0);
        continue;
        localParcel1.writeInt(0);
      }
      finally
      {
        localParcel2.recycle();
        localParcel1.recycle();
      }
    }
  }
  
  public IBinder asBinder()
  {
    return ko;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.iz.a.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */