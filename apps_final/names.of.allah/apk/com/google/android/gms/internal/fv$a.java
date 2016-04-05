package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

public abstract class fv$a
  extends Binder
  implements fv
{
  public static fv A(IBinder paramIBinder)
  {
    if (paramIBinder == null) {
      return null;
    }
    IInterface localIInterface = paramIBinder.queryLocalInterface("com.google.android.gms.appdatasearch.internal.ILightweightAppDataSearch");
    if ((localIInterface != null) && ((localIInterface instanceof fv))) {
      return (fv)localIInterface;
    }
    return new fv.a.a(paramIBinder);
  }
  
  public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2)
  {
    switch (paramInt1)
    {
    default: 
      return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
    case 1598968902: 
      paramParcel2.writeString("com.google.android.gms.appdatasearch.internal.ILightweightAppDataSearch");
      return true;
    case 1: 
      paramParcel1.enforceInterface("com.google.android.gms.appdatasearch.internal.ILightweightAppDataSearch");
      a(fw.a.B(paramParcel1.readStrongBinder()), paramParcel1.readString(), (fs[])paramParcel1.createTypedArray(fs.CREATOR));
      paramParcel2.writeNoException();
      return true;
    case 2: 
      paramParcel1.enforceInterface("com.google.android.gms.appdatasearch.internal.ILightweightAppDataSearch");
      a(fw.a.B(paramParcel1.readStrongBinder()));
      paramParcel2.writeNoException();
      return true;
    case 3: 
      paramParcel1.enforceInterface("com.google.android.gms.appdatasearch.internal.ILightweightAppDataSearch");
      b(fw.a.B(paramParcel1.readStrongBinder()));
      paramParcel2.writeNoException();
      return true;
    }
    paramParcel1.enforceInterface("com.google.android.gms.appdatasearch.internal.ILightweightAppDataSearch");
    fw localfw = fw.a.B(paramParcel1.readStrongBinder());
    if (paramParcel1.readInt() != 0) {}
    for (boolean bool = true;; bool = false)
    {
      a(localfw, bool);
      paramParcel2.writeNoException();
      return true;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.fv.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */