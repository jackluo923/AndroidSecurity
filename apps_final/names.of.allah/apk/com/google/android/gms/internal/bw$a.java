package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

public abstract class bw$a
  extends Binder
  implements bw
{
  public bw$a()
  {
    attachInterface(this, "com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
  }
  
  public static bw k(IBinder paramIBinder)
  {
    if (paramIBinder == null) {
      return null;
    }
    IInterface localIInterface = paramIBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
    if ((localIInterface != null) && ((localIInterface instanceof bw))) {
      return (bw)localIInterface;
    }
    return new bw.a.a(paramIBinder);
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
      paramParcel2.writeString("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
      return true;
    case 1: 
      paramParcel1.enforceInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
      onAdClicked();
      paramParcel2.writeNoException();
      return true;
    case 2: 
      paramParcel1.enforceInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
      onAdClosed();
      paramParcel2.writeNoException();
      return true;
    case 3: 
      paramParcel1.enforceInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
      onAdFailedToLoad(paramParcel1.readInt());
      paramParcel2.writeNoException();
      return true;
    case 4: 
      paramParcel1.enforceInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
      onAdLeftApplication();
      paramParcel2.writeNoException();
      return true;
    case 5: 
      paramParcel1.enforceInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
      onAdOpened();
      paramParcel2.writeNoException();
      return true;
    }
    paramParcel1.enforceInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
    onAdLoaded();
    paramParcel2.writeNoException();
    return true;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.bw.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */