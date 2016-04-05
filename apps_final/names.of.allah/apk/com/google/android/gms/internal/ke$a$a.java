package com.google.android.gms.internal;

import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;

class ke$a$a
  implements ke
{
  private IBinder ko;
  
  ke$a$a(IBinder paramIBinder)
  {
    ko = paramIBinder;
  }
  
  public void a(int paramInt1, Bundle paramBundle, int paramInt2, Intent paramIntent)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    for (;;)
    {
      try
      {
        localParcel1.writeInterfaceToken("com.google.android.gms.panorama.internal.IPanoramaCallbacks");
        localParcel1.writeInt(paramInt1);
        if (paramBundle != null)
        {
          localParcel1.writeInt(1);
          paramBundle.writeToParcel(localParcel1, 0);
          localParcel1.writeInt(paramInt2);
          if (paramIntent != null)
          {
            localParcel1.writeInt(1);
            paramIntent.writeToParcel(localParcel1, 0);
            ko.transact(1, localParcel1, localParcel2, 0);
            localParcel2.readException();
          }
        }
        else
        {
          localParcel1.writeInt(0);
          continue;
        }
        localParcel1.writeInt(0);
      }
      finally
      {
        localParcel2.recycle();
        localParcel1.recycle();
      }
    }
  }
  
  public IBinder asBinder()
  {
    return ko;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ke.a.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */