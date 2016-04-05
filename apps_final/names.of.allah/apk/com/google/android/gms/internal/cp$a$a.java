package com.google.android.gms.internal;

import android.os.IBinder;

class cp$a$a
  implements cp
{
  private IBinder ko;
  
  cp$a$a(IBinder paramIBinder)
  {
    ko = paramIBinder;
  }
  
  /* Error */
  public IBinder a(com.google.android.gms.dynamic.d paramd)
  {
    // Byte code:
    //   0: invokestatic 24	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   3: astore_2
    //   4: invokestatic 24	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   7: astore_3
    //   8: aload_2
    //   9: ldc 26
    //   11: invokevirtual 30	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
    //   14: aload_1
    //   15: ifnull +48 -> 63
    //   18: aload_1
    //   19: invokeinterface 36 1 0
    //   24: astore_1
    //   25: aload_2
    //   26: aload_1
    //   27: invokevirtual 39	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
    //   30: aload_0
    //   31: getfield 15	com/google/android/gms/internal/cp$a$a:ko	Landroid/os/IBinder;
    //   34: iconst_1
    //   35: aload_2
    //   36: aload_3
    //   37: iconst_0
    //   38: invokeinterface 45 5 0
    //   43: pop
    //   44: aload_3
    //   45: invokevirtual 48	android/os/Parcel:readException	()V
    //   48: aload_3
    //   49: invokevirtual 51	android/os/Parcel:readStrongBinder	()Landroid/os/IBinder;
    //   52: astore_1
    //   53: aload_3
    //   54: invokevirtual 54	android/os/Parcel:recycle	()V
    //   57: aload_2
    //   58: invokevirtual 54	android/os/Parcel:recycle	()V
    //   61: aload_1
    //   62: areturn
    //   63: aconst_null
    //   64: astore_1
    //   65: goto -40 -> 25
    //   68: astore_1
    //   69: aload_3
    //   70: invokevirtual 54	android/os/Parcel:recycle	()V
    //   73: aload_2
    //   74: invokevirtual 54	android/os/Parcel:recycle	()V
    //   77: aload_1
    //   78: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	79	0	this	a
    //   0	79	1	paramd	com.google.android.gms.dynamic.d
    //   3	71	2	localParcel1	android.os.Parcel
    //   7	63	3	localParcel2	android.os.Parcel
    // Exception table:
    //   from	to	target	type
    //   8	14	68	finally
    //   18	25	68	finally
    //   25	53	68	finally
  }
  
  public IBinder asBinder()
  {
    return ko;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.cp.a.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */