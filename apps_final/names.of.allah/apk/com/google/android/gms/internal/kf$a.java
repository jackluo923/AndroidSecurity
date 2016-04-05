package com.google.android.gms.internal;

import android.net.Uri;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable.Creator;

public abstract class kf$a
  extends Binder
  implements kf
{
  public static kf bi(IBinder paramIBinder)
  {
    if (paramIBinder == null) {
      return null;
    }
    IInterface localIInterface = paramIBinder.queryLocalInterface("com.google.android.gms.panorama.internal.IPanoramaService");
    if ((localIInterface != null) && ((localIInterface instanceof kf))) {
      return (kf)localIInterface;
    }
    return new kf.a.a(paramIBinder);
  }
  
  public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2)
  {
    switch (paramInt1)
    {
    default: 
      return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
    case 1598968902: 
      paramParcel2.writeString("com.google.android.gms.panorama.internal.IPanoramaService");
      return true;
    }
    paramParcel1.enforceInterface("com.google.android.gms.panorama.internal.IPanoramaService");
    ke localke = ke.a.bh(paramParcel1.readStrongBinder());
    Bundle localBundle;
    if (paramParcel1.readInt() != 0)
    {
      paramParcel2 = (Uri)Uri.CREATOR.createFromParcel(paramParcel1);
      if (paramParcel1.readInt() == 0) {
        break label130;
      }
      localBundle = (Bundle)Bundle.CREATOR.createFromParcel(paramParcel1);
      label102:
      if (paramParcel1.readInt() == 0) {
        break label136;
      }
    }
    label130:
    label136:
    for (boolean bool = true;; bool = false)
    {
      a(localke, paramParcel2, localBundle, bool);
      return true;
      paramParcel2 = null;
      break;
      localBundle = null;
      break label102;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.kf.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */