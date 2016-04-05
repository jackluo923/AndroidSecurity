package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

public abstract class ff$a
  extends Binder
  implements ff
{
  public static ff z(IBinder paramIBinder)
  {
    if (paramIBinder == null) {
      return null;
    }
    IInterface localIInterface = paramIBinder.queryLocalInterface("com.google.android.gms.analytics.internal.IAnalyticsService");
    if ((localIInterface != null) && ((localIInterface instanceof ff))) {
      return (ff)localIInterface;
    }
    return new ff.a.a(paramIBinder);
  }
  
  public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2)
  {
    switch (paramInt1)
    {
    default: 
      return super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
    case 1598968902: 
      paramParcel2.writeString("com.google.android.gms.analytics.internal.IAnalyticsService");
      return true;
    case 1: 
      paramParcel1.enforceInterface("com.google.android.gms.analytics.internal.IAnalyticsService");
      a(paramParcel1.readHashMap(getClass().getClassLoader()), paramParcel1.readLong(), paramParcel1.readString(), paramParcel1.createTypedArrayList(fe.CREATOR));
      paramParcel2.writeNoException();
      return true;
    case 2: 
      paramParcel1.enforceInterface("com.google.android.gms.analytics.internal.IAnalyticsService");
      cg();
      paramParcel2.writeNoException();
      return true;
    }
    paramParcel1.enforceInterface("com.google.android.gms.analytics.internal.IAnalyticsService");
    paramParcel1 = getVersion();
    paramParcel2.writeNoException();
    paramParcel2.writeString(paramParcel1);
    return true;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ff.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */