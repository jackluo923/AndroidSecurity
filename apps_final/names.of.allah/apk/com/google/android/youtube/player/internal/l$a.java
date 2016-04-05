package com.google.android.youtube.player.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

public abstract class l$a
  extends Binder
  implements l
{
  public static l a(IBinder paramIBinder)
  {
    if (paramIBinder == null) {
      return null;
    }
    IInterface localIInterface = paramIBinder.queryLocalInterface("com.google.android.youtube.player.internal.IYouTubeService");
    if ((localIInterface != null) && ((localIInterface instanceof l))) {
      return (l)localIInterface;
    }
    return new l.a.a(paramIBinder);
  }
  
  public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2)
  {
    Object localObject1 = null;
    switch (paramInt1)
    {
    default: 
      return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
    case 1598968902: 
      paramParcel2.writeString("com.google.android.youtube.player.internal.IYouTubeService");
      return true;
    case 1: 
      paramParcel1.enforceInterface("com.google.android.youtube.player.internal.IYouTubeService");
      paramParcel1 = a();
      paramParcel2.writeNoException();
      paramParcel2.writeStrongBinder(paramParcel1);
      return true;
    case 2: 
      paramParcel1.enforceInterface("com.google.android.youtube.player.internal.IYouTubeService");
      paramParcel1 = paramParcel1.readStrongBinder();
      if (paramParcel1 == null) {
        paramParcel1 = null;
      }
      for (;;)
      {
        Object localObject2 = a(paramParcel1);
        paramParcel2.writeNoException();
        paramParcel1 = (Parcel)localObject1;
        if (localObject2 != null) {
          paramParcel1 = ((k)localObject2).asBinder();
        }
        paramParcel2.writeStrongBinder(paramParcel1);
        return true;
        localObject2 = paramParcel1.queryLocalInterface("com.google.android.youtube.player.internal.IThumbnailLoaderClient");
        if ((localObject2 != null) && ((localObject2 instanceof j))) {
          paramParcel1 = (j)localObject2;
        } else {
          paramParcel1 = new j.a.a(paramParcel1);
        }
      }
    }
    paramParcel1.enforceInterface("com.google.android.youtube.player.internal.IYouTubeService");
    if (paramParcel1.readInt() != 0) {}
    for (boolean bool = true;; bool = false)
    {
      a(bool);
      paramParcel2.writeNoException();
      return true;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.youtube.player.internal.l.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */