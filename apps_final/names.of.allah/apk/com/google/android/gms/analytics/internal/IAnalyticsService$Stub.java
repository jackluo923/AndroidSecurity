package com.google.android.gms.analytics.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

public abstract class IAnalyticsService$Stub
  extends Binder
  implements IAnalyticsService
{
  private static final String DESCRIPTOR = "com.google.android.gms.analytics.internal.IAnalyticsService";
  static final int TRANSACTION_clearHits = 2;
  static final int TRANSACTION_sendHit = 1;
  
  public IAnalyticsService$Stub()
  {
    attachInterface(this, "com.google.android.gms.analytics.internal.IAnalyticsService");
  }
  
  public static IAnalyticsService asInterface(IBinder paramIBinder)
  {
    if (paramIBinder == null) {
      return null;
    }
    IInterface localIInterface = paramIBinder.queryLocalInterface("com.google.android.gms.analytics.internal.IAnalyticsService");
    if ((localIInterface != null) && ((localIInterface instanceof IAnalyticsService))) {
      return (IAnalyticsService)localIInterface;
    }
    return new IAnalyticsService.Stub.Proxy(paramIBinder);
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
      paramParcel2.writeString("com.google.android.gms.analytics.internal.IAnalyticsService");
      return true;
    case 1: 
      paramParcel1.enforceInterface("com.google.android.gms.analytics.internal.IAnalyticsService");
      sendHit(paramParcel1.readHashMap(getClass().getClassLoader()), paramParcel1.readLong(), paramParcel1.readString(), paramParcel1.createTypedArrayList(Command.CREATOR));
      paramParcel2.writeNoException();
      return true;
    }
    paramParcel1.enforceInterface("com.google.android.gms.analytics.internal.IAnalyticsService");
    clearHits();
    paramParcel2.writeNoException();
    return true;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.internal.IAnalyticsService.Stub
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */