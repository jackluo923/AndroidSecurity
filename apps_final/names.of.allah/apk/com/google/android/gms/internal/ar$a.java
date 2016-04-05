package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.d;

public abstract class ar$a
  extends Binder
  implements ar
{
  public ar$a()
  {
    attachInterface(this, "com.google.android.gms.ads.internal.client.IAdManager");
  }
  
  public static ar f(IBinder paramIBinder)
  {
    if (paramIBinder == null) {
      return null;
    }
    IInterface localIInterface = paramIBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManager");
    if ((localIInterface != null) && ((localIInterface instanceof ar))) {
      return (ar)localIInterface;
    }
    return new ar.a.a(paramIBinder);
  }
  
  public IBinder asBinder()
  {
    return this;
  }
  
  public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2)
  {
    d locald = null;
    Object localObject2 = null;
    Object localObject1 = null;
    int i = 0;
    boolean bool;
    switch (paramInt1)
    {
    default: 
      return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
    case 1598968902: 
      paramParcel2.writeString("com.google.android.gms.ads.internal.client.IAdManager");
      return true;
    case 1: 
      paramParcel1.enforceInterface("com.google.android.gms.ads.internal.client.IAdManager");
      locald = P();
      paramParcel2.writeNoException();
      paramParcel1 = (Parcel)localObject1;
      if (locald != null) {
        paramParcel1 = locald.asBinder();
      }
      paramParcel2.writeStrongBinder(paramParcel1);
      return true;
    case 2: 
      paramParcel1.enforceInterface("com.google.android.gms.ads.internal.client.IAdManager");
      destroy();
      paramParcel2.writeNoException();
      return true;
    case 3: 
      paramParcel1.enforceInterface("com.google.android.gms.ads.internal.client.IAdManager");
      bool = isReady();
      paramParcel2.writeNoException();
      if (bool) {}
      for (paramInt1 = 1;; paramInt1 = 0)
      {
        paramParcel2.writeInt(paramInt1);
        return true;
      }
    case 4: 
      paramParcel1.enforceInterface("com.google.android.gms.ads.internal.client.IAdManager");
      localObject1 = locald;
      if (paramParcel1.readInt() != 0) {
        localObject1 = aj.CREATOR.b(paramParcel1);
      }
      bool = a((aj)localObject1);
      paramParcel2.writeNoException();
      paramInt1 = i;
      if (bool) {
        paramInt1 = 1;
      }
      paramParcel2.writeInt(paramInt1);
      return true;
    case 5: 
      paramParcel1.enforceInterface("com.google.android.gms.ads.internal.client.IAdManager");
      pause();
      paramParcel2.writeNoException();
      return true;
    case 6: 
      paramParcel1.enforceInterface("com.google.android.gms.ads.internal.client.IAdManager");
      resume();
      paramParcel2.writeNoException();
      return true;
    case 7: 
      paramParcel1.enforceInterface("com.google.android.gms.ads.internal.client.IAdManager");
      a(aq.a.e(paramParcel1.readStrongBinder()));
      paramParcel2.writeNoException();
      return true;
    case 8: 
      paramParcel1.enforceInterface("com.google.android.gms.ads.internal.client.IAdManager");
      a(at.a.h(paramParcel1.readStrongBinder()));
      paramParcel2.writeNoException();
      return true;
    case 9: 
      paramParcel1.enforceInterface("com.google.android.gms.ads.internal.client.IAdManager");
      showInterstitial();
      paramParcel2.writeNoException();
      return true;
    case 10: 
      paramParcel1.enforceInterface("com.google.android.gms.ads.internal.client.IAdManager");
      stopLoading();
      paramParcel2.writeNoException();
      return true;
    case 11: 
      paramParcel1.enforceInterface("com.google.android.gms.ads.internal.client.IAdManager");
      ab();
      paramParcel2.writeNoException();
      return true;
    case 12: 
      paramParcel1.enforceInterface("com.google.android.gms.ads.internal.client.IAdManager");
      paramParcel1 = Q();
      paramParcel2.writeNoException();
      if (paramParcel1 != null)
      {
        paramParcel2.writeInt(1);
        paramParcel1.writeToParcel(paramParcel2, 1);
        return true;
      }
      paramParcel2.writeInt(0);
      return true;
    case 13: 
      paramParcel1.enforceInterface("com.google.android.gms.ads.internal.client.IAdManager");
      localObject1 = localObject2;
      if (paramParcel1.readInt() != 0) {
        localObject1 = am.CREATOR.c(paramParcel1);
      }
      a((am)localObject1);
      paramParcel2.writeNoException();
      return true;
    case 14: 
      paramParcel1.enforceInterface("com.google.android.gms.ads.internal.client.IAdManager");
      a(dd.a.q(paramParcel1.readStrongBinder()));
      paramParcel2.writeNoException();
      return true;
    }
    paramParcel1.enforceInterface("com.google.android.gms.ads.internal.client.IAdManager");
    a(dh.a.u(paramParcel1.readStrongBinder()), paramParcel1.readString());
    paramParcel2.writeNoException();
    return true;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ar.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */