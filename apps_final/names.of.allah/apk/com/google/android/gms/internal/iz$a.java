package com.google.android.gms.internal;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.identity.intents.UserAddressRequest;

public abstract class iz$a
  extends Binder
  implements iz
{
  public static iz ap(IBinder paramIBinder)
  {
    if (paramIBinder == null) {
      return null;
    }
    IInterface localIInterface = paramIBinder.queryLocalInterface("com.google.android.gms.identity.intents.internal.IAddressService");
    if ((localIInterface != null) && ((localIInterface instanceof iz))) {
      return (iz)localIInterface;
    }
    return new iz.a.a(paramIBinder);
  }
  
  public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2)
  {
    switch (paramInt1)
    {
    default: 
      return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
    case 1598968902: 
      paramParcel2.writeString("com.google.android.gms.identity.intents.internal.IAddressService");
      return true;
    }
    paramParcel1.enforceInterface("com.google.android.gms.identity.intents.internal.IAddressService");
    iy localiy = iy.a.ao(paramParcel1.readStrongBinder());
    UserAddressRequest localUserAddressRequest;
    if (paramParcel1.readInt() != 0)
    {
      localUserAddressRequest = (UserAddressRequest)UserAddressRequest.CREATOR.createFromParcel(paramParcel1);
      if (paramParcel1.readInt() == 0) {
        break label123;
      }
    }
    label123:
    for (paramParcel1 = (Bundle)Bundle.CREATOR.createFromParcel(paramParcel1);; paramParcel1 = null)
    {
      a(localiy, localUserAddressRequest, paramParcel1);
      paramParcel2.writeNoException();
      return true;
      localUserAddressRequest = null;
      break;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.iz.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */