package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.d;
import com.google.android.gms.dynamic.d.a;

public abstract class hk$a
  extends Binder
  implements hk
{
  public static hk M(IBinder paramIBinder)
  {
    if (paramIBinder == null) {
      return null;
    }
    IInterface localIInterface = paramIBinder.queryLocalInterface("com.google.android.gms.common.internal.ISignInButtonCreator");
    if ((localIInterface != null) && ((localIInterface instanceof hk))) {
      return (hk)localIInterface;
    }
    return new hk.a.a(paramIBinder);
  }
  
  public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2)
  {
    switch (paramInt1)
    {
    default: 
      return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
    case 1598968902: 
      paramParcel2.writeString("com.google.android.gms.common.internal.ISignInButtonCreator");
      return true;
    }
    paramParcel1.enforceInterface("com.google.android.gms.common.internal.ISignInButtonCreator");
    paramParcel1 = a(d.a.ag(paramParcel1.readStrongBinder()), paramParcel1.readInt(), paramParcel1.readInt());
    paramParcel2.writeNoException();
    if (paramParcel1 != null) {}
    for (paramParcel1 = paramParcel1.asBinder();; paramParcel1 = null)
    {
      paramParcel2.writeStrongBinder(paramParcel1);
      return true;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.hk.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */