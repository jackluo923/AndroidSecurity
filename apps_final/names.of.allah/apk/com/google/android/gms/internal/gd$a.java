package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

public abstract class gd$a
  extends Binder
  implements gd
{
  public static gd F(IBinder paramIBinder)
  {
    if (paramIBinder == null) {
      return null;
    }
    IInterface localIInterface = paramIBinder.queryLocalInterface("com.google.android.gms.appstate.internal.IAppStateService");
    if ((localIInterface != null) && ((localIInterface instanceof gd))) {
      return (gd)localIInterface;
    }
    return new gd.a.a(paramIBinder);
  }
  
  public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2)
  {
    switch (paramInt1)
    {
    default: 
      return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
    case 1598968902: 
      paramParcel2.writeString("com.google.android.gms.appstate.internal.IAppStateService");
      return true;
    case 5001: 
      paramParcel1.enforceInterface("com.google.android.gms.appstate.internal.IAppStateService");
      paramInt1 = dP();
      paramParcel2.writeNoException();
      paramParcel2.writeInt(paramInt1);
      return true;
    case 5002: 
      paramParcel1.enforceInterface("com.google.android.gms.appstate.internal.IAppStateService");
      paramInt1 = dQ();
      paramParcel2.writeNoException();
      paramParcel2.writeInt(paramInt1);
      return true;
    case 5003: 
      paramParcel1.enforceInterface("com.google.android.gms.appstate.internal.IAppStateService");
      a(gc.a.E(paramParcel1.readStrongBinder()), paramParcel1.readInt(), paramParcel1.createByteArray());
      paramParcel2.writeNoException();
      return true;
    case 5004: 
      paramParcel1.enforceInterface("com.google.android.gms.appstate.internal.IAppStateService");
      a(gc.a.E(paramParcel1.readStrongBinder()), paramParcel1.readInt());
      paramParcel2.writeNoException();
      return true;
    case 5005: 
      paramParcel1.enforceInterface("com.google.android.gms.appstate.internal.IAppStateService");
      a(gc.a.E(paramParcel1.readStrongBinder()));
      paramParcel2.writeNoException();
      return true;
    case 5006: 
      paramParcel1.enforceInterface("com.google.android.gms.appstate.internal.IAppStateService");
      a(gc.a.E(paramParcel1.readStrongBinder()), paramParcel1.readInt(), paramParcel1.readString(), paramParcel1.createByteArray());
      paramParcel2.writeNoException();
      return true;
    case 5007: 
      paramParcel1.enforceInterface("com.google.android.gms.appstate.internal.IAppStateService");
      b(gc.a.E(paramParcel1.readStrongBinder()), paramParcel1.readInt());
      paramParcel2.writeNoException();
      return true;
    case 5008: 
      paramParcel1.enforceInterface("com.google.android.gms.appstate.internal.IAppStateService");
      b(gc.a.E(paramParcel1.readStrongBinder()));
      paramParcel2.writeNoException();
      return true;
    }
    paramParcel1.enforceInterface("com.google.android.gms.appstate.internal.IAppStateService");
    c(gc.a.E(paramParcel1.readStrongBinder()));
    paramParcel2.writeNoException();
    return true;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.gd.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */