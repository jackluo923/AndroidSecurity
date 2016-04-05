package com.google.android.gms.maps.internal;

import android.os.IBinder;

class n$a$a
  implements n
{
  private IBinder ko;
  
  n$a$a(IBinder paramIBinder)
  {
    ko = paramIBinder;
  }
  
  public IBinder asBinder()
  {
    return ko;
  }
  
  /* Error */
  public boolean onMyLocationButtonClick()
  {
    // Byte code:
    //   0: iconst_1
    //   1: istore 5
    //   3: invokestatic 26	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   6: astore_1
    //   7: invokestatic 26	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   10: astore_2
    //   11: aload_1
    //   12: ldc 28
    //   14: invokevirtual 32	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
    //   17: aload_0
    //   18: getfield 15	com/google/android/gms/maps/internal/n$a$a:ko	Landroid/os/IBinder;
    //   21: iconst_1
    //   22: aload_1
    //   23: aload_2
    //   24: iconst_0
    //   25: invokeinterface 38 5 0
    //   30: pop
    //   31: aload_2
    //   32: invokevirtual 41	android/os/Parcel:readException	()V
    //   35: aload_2
    //   36: invokevirtual 45	android/os/Parcel:readInt	()I
    //   39: istore 4
    //   41: iload 4
    //   43: ifeq +14 -> 57
    //   46: aload_2
    //   47: invokevirtual 48	android/os/Parcel:recycle	()V
    //   50: aload_1
    //   51: invokevirtual 48	android/os/Parcel:recycle	()V
    //   54: iload 5
    //   56: ireturn
    //   57: iconst_0
    //   58: istore 5
    //   60: goto -14 -> 46
    //   63: astore_3
    //   64: aload_2
    //   65: invokevirtual 48	android/os/Parcel:recycle	()V
    //   68: aload_1
    //   69: invokevirtual 48	android/os/Parcel:recycle	()V
    //   72: aload_3
    //   73: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	74	0	this	a
    //   6	63	1	localParcel1	android.os.Parcel
    //   10	55	2	localParcel2	android.os.Parcel
    //   63	10	3	localObject	Object
    //   39	3	4	i	int
    //   1	58	5	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   11	41	63	finally
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.internal.n.a.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */