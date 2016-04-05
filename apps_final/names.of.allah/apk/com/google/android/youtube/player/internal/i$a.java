package com.google.android.youtube.player.internal;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable.Creator;

public abstract class i$a
  extends Binder
  implements i
{
  public static i a(IBinder paramIBinder)
  {
    if (paramIBinder == null) {
      return null;
    }
    IInterface localIInterface = paramIBinder.queryLocalInterface("com.google.android.youtube.player.internal.IServiceBroker");
    if ((localIInterface != null) && ((localIInterface instanceof i))) {
      return (i)localIInterface;
    }
    return new i.a.a(paramIBinder);
  }
  
  public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2)
  {
    Bundle localBundle = null;
    switch (paramInt1)
    {
    default: 
      return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
    case 1598968902: 
      paramParcel2.writeString("com.google.android.youtube.player.internal.IServiceBroker");
      return true;
    }
    paramParcel1.enforceInterface("com.google.android.youtube.player.internal.IServiceBroker");
    Object localObject1 = paramParcel1.readStrongBinder();
    if (localObject1 == null) {
      localObject1 = null;
    }
    for (;;)
    {
      paramInt1 = paramParcel1.readInt();
      Object localObject2 = paramParcel1.readString();
      String str1 = paramParcel1.readString();
      String str2 = paramParcel1.readString();
      if (paramParcel1.readInt() != 0) {
        localBundle = (Bundle)Bundle.CREATOR.createFromParcel(paramParcel1);
      }
      a((c)localObject1, paramInt1, (String)localObject2, str1, str2, localBundle);
      paramParcel2.writeNoException();
      return true;
      localObject2 = ((IBinder)localObject1).queryLocalInterface("com.google.android.youtube.player.internal.IConnectionCallbacks");
      if ((localObject2 != null) && ((localObject2 instanceof c))) {
        localObject1 = (c)localObject2;
      } else {
        localObject1 = new c.a.a((IBinder)localObject1);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.youtube.player.internal.i.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */