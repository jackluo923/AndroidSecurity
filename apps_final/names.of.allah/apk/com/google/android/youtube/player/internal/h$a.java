package com.google.android.youtube.player.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.Parcel;

public abstract class h$a
  extends Binder
  implements h
{
  public h$a()
  {
    attachInterface(this, "com.google.android.youtube.player.internal.IPlaylistEventListener");
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
      paramParcel2.writeString("com.google.android.youtube.player.internal.IPlaylistEventListener");
      return true;
    case 1: 
      paramParcel1.enforceInterface("com.google.android.youtube.player.internal.IPlaylistEventListener");
      a();
      paramParcel2.writeNoException();
      return true;
    case 2: 
      paramParcel1.enforceInterface("com.google.android.youtube.player.internal.IPlaylistEventListener");
      b();
      paramParcel2.writeNoException();
      return true;
    }
    paramParcel1.enforceInterface("com.google.android.youtube.player.internal.IPlaylistEventListener");
    c();
    paramParcel2.writeNoException();
    return true;
  }
}

/* Location:
 * Qualified Name:     com.google.android.youtube.player.internal.h.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */