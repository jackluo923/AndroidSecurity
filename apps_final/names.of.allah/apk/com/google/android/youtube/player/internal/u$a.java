package com.google.android.youtube.player.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

public abstract class u$a
  extends Binder
  implements u
{
  public u$a()
  {
    attachInterface(this, "com.google.android.youtube.player.internal.dynamic.IObjectWrapper");
  }
  
  public static u a(IBinder paramIBinder)
  {
    if (paramIBinder == null) {
      return null;
    }
    IInterface localIInterface = paramIBinder.queryLocalInterface("com.google.android.youtube.player.internal.dynamic.IObjectWrapper");
    if ((localIInterface != null) && ((localIInterface instanceof u))) {
      return (u)localIInterface;
    }
    return new u.a.a(paramIBinder);
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
    }
    paramParcel2.writeString("com.google.android.youtube.player.internal.dynamic.IObjectWrapper");
    return true;
  }
}

/* Location:
 * Qualified Name:     com.google.android.youtube.player.internal.u.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */