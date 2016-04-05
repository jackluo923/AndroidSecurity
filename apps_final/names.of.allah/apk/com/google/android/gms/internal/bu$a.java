package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

public abstract class bu$a
  extends Binder
  implements bu
{
  public bu$a()
  {
    attachInterface(this, "com.google.android.gms.ads.internal.mediation.client.IAdapterCreator");
  }
  
  public static bu i(IBinder paramIBinder)
  {
    if (paramIBinder == null) {
      return null;
    }
    IInterface localIInterface = paramIBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IAdapterCreator");
    if ((localIInterface != null) && ((localIInterface instanceof bu))) {
      return (bu)localIInterface;
    }
    return new bu.a.a(paramIBinder);
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
      paramParcel2.writeString("com.google.android.gms.ads.internal.mediation.client.IAdapterCreator");
      return true;
    }
    paramParcel1.enforceInterface("com.google.android.gms.ads.internal.mediation.client.IAdapterCreator");
    paramParcel1 = m(paramParcel1.readString());
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
 * Qualified Name:     com.google.android.gms.internal.bu.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */