package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.dynamic.c;
import com.google.android.gms.dynamic.c.a;
import com.google.android.gms.dynamic.d;
import com.google.android.gms.dynamic.d.a;
import com.google.android.gms.wallet.fragment.WalletFragmentOptions;

public abstract class lo$a
  extends Binder
  implements lo
{
  public static lo br(IBinder paramIBinder)
  {
    if (paramIBinder == null) {
      return null;
    }
    IInterface localIInterface = paramIBinder.queryLocalInterface("com.google.android.gms.wallet.internal.IWalletDynamiteCreator");
    if ((localIInterface != null) && ((localIInterface instanceof lo))) {
      return (lo)localIInterface;
    }
    return new lo.a.a(paramIBinder);
  }
  
  public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2)
  {
    Object localObject2 = null;
    switch (paramInt1)
    {
    default: 
      return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
    case 1598968902: 
      paramParcel2.writeString("com.google.android.gms.wallet.internal.IWalletDynamiteCreator");
      return true;
    }
    paramParcel1.enforceInterface("com.google.android.gms.wallet.internal.IWalletDynamiteCreator");
    d locald = d.a.ag(paramParcel1.readStrongBinder());
    c localc = c.a.af(paramParcel1.readStrongBinder());
    if (paramParcel1.readInt() != 0) {}
    for (Object localObject1 = (WalletFragmentOptions)WalletFragmentOptions.CREATOR.createFromParcel(paramParcel1);; localObject1 = null)
    {
      localObject1 = a(locald, localc, (WalletFragmentOptions)localObject1, lm.a.bp(paramParcel1.readStrongBinder()));
      paramParcel2.writeNoException();
      paramParcel1 = (Parcel)localObject2;
      if (localObject1 != null) {
        paramParcel1 = ((ll)localObject1).asBinder();
      }
      paramParcel2.writeStrongBinder(paramParcel1);
      return true;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.lo.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */