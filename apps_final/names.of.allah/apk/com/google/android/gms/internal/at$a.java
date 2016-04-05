package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

public abstract class at$a
  extends Binder
  implements at
{
  public at$a()
  {
    attachInterface(this, "com.google.android.gms.ads.internal.client.IAppEventListener");
  }
  
  public static at h(IBinder paramIBinder)
  {
    if (paramIBinder == null) {
      return null;
    }
    IInterface localIInterface = paramIBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAppEventListener");
    if ((localIInterface != null) && ((localIInterface instanceof at))) {
      return (at)localIInterface;
    }
    return new at.a.a(paramIBinder);
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
      paramParcel2.writeString("com.google.android.gms.ads.internal.client.IAppEventListener");
      return true;
    }
    paramParcel1.enforceInterface("com.google.android.gms.ads.internal.client.IAppEventListener");
    onAppEvent(paramParcel1.readString(), paramParcel1.readString());
    paramParcel2.writeNoException();
    return true;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.at.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */