package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import com.google.android.gms.common.api.Status;

class fw$a$a
  implements fw
{
  private IBinder ko;
  
  fw$a$a(IBinder paramIBinder)
  {
    ko = paramIBinder;
  }
  
  /* Error */
  public void a(Status paramStatus)
  {
    // Byte code:
    //   0: invokestatic 24	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   3: astore_2
    //   4: aload_2
    //   5: ldc 26
    //   7: invokevirtual 30	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
    //   10: aload_1
    //   11: ifnull +33 -> 44
    //   14: aload_2
    //   15: iconst_1
    //   16: invokevirtual 34	android/os/Parcel:writeInt	(I)V
    //   19: aload_1
    //   20: aload_2
    //   21: iconst_0
    //   22: invokevirtual 40	com/google/android/gms/common/api/Status:writeToParcel	(Landroid/os/Parcel;I)V
    //   25: aload_0
    //   26: getfield 15	com/google/android/gms/internal/fw$a$a:ko	Landroid/os/IBinder;
    //   29: iconst_1
    //   30: aload_2
    //   31: aconst_null
    //   32: iconst_1
    //   33: invokeinterface 46 5 0
    //   38: pop
    //   39: aload_2
    //   40: invokevirtual 49	android/os/Parcel:recycle	()V
    //   43: return
    //   44: aload_2
    //   45: iconst_0
    //   46: invokevirtual 34	android/os/Parcel:writeInt	(I)V
    //   49: goto -24 -> 25
    //   52: astore_1
    //   53: aload_2
    //   54: invokevirtual 49	android/os/Parcel:recycle	()V
    //   57: aload_1
    //   58: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	59	0	this	a
    //   0	59	1	paramStatus	Status
    //   3	51	2	localParcel	Parcel
    // Exception table:
    //   from	to	target	type
    //   4	10	52	finally
    //   14	25	52	finally
    //   25	39	52	finally
    //   44	49	52	finally
  }
  
  public void a(Status paramStatus, ParcelFileDescriptor paramParcelFileDescriptor)
  {
    Parcel localParcel = Parcel.obtain();
    for (;;)
    {
      try
      {
        localParcel.writeInterfaceToken("com.google.android.gms.appdatasearch.internal.ILightweightAppDataSearchCallbacks");
        if (paramStatus != null)
        {
          localParcel.writeInt(1);
          paramStatus.writeToParcel(localParcel, 0);
          if (paramParcelFileDescriptor != null)
          {
            localParcel.writeInt(1);
            paramParcelFileDescriptor.writeToParcel(localParcel, 0);
            ko.transact(2, localParcel, null, 1);
          }
        }
        else
        {
          localParcel.writeInt(0);
          continue;
        }
        localParcel.writeInt(0);
      }
      finally
      {
        localParcel.recycle();
      }
    }
  }
  
  public void a(Status paramStatus, boolean paramBoolean)
  {
    int i = 1;
    Parcel localParcel = Parcel.obtain();
    for (;;)
    {
      try
      {
        localParcel.writeInterfaceToken("com.google.android.gms.appdatasearch.internal.ILightweightAppDataSearchCallbacks");
        if (paramStatus != null)
        {
          localParcel.writeInt(1);
          paramStatus.writeToParcel(localParcel, 0);
          break label77;
          localParcel.writeInt(i);
          ko.transact(3, localParcel, null, 1);
        }
        else
        {
          localParcel.writeInt(0);
        }
      }
      finally
      {
        localParcel.recycle();
      }
      label77:
      do
      {
        i = 0;
        break;
      } while (!paramBoolean);
    }
  }
  
  public IBinder asBinder()
  {
    return ko;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.fw.a.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */