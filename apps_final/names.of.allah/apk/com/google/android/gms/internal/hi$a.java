package com.google.android.gms.internal;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable.Creator;

public abstract class hi$a
  extends Binder
  implements hi
{
  public hi$a()
  {
    attachInterface(this, "com.google.android.gms.common.internal.IGmsCallbacks");
  }
  
  public static hi K(IBinder paramIBinder)
  {
    if (paramIBinder == null) {
      return null;
    }
    IInterface localIInterface = paramIBinder.queryLocalInterface("com.google.android.gms.common.internal.IGmsCallbacks");
    if ((localIInterface != null) && ((localIInterface instanceof hi))) {
      return (hi)localIInterface;
    }
    return new hi.a.a(paramIBinder);
  }
  
  public IBinder asBinder()
  {
    return this;
  }
  
  public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2)
  {
    switch (paramInt1)
    {
    default: 
      return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
    case 1598968902: 
      paramParcel2.writeString("com.google.android.gms.common.internal.IGmsCallbacks");
      return true;
    }
    paramParcel1.enforceInterface("com.google.android.gms.common.internal.IGmsCallbacks");
    paramInt1 = paramParcel1.readInt();
    IBinder localIBinder = paramParcel1.readStrongBinder();
    if (paramParcel1.readInt() != 0) {}
    for (paramParcel1 = (Bundle)Bundle.CREATOR.createFromParcel(paramParcel1);; paramParcel1 = null)
    {
      b(paramInt1, localIBinder, paramParcel1);
      paramParcel2.writeNoException();
      return true;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.hi.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */