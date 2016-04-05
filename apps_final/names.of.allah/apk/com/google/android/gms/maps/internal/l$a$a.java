package com.google.android.gms.maps.internal;

import android.os.IBinder;

class l$a$a
  implements l
{
  private IBinder ko;
  
  l$a$a(IBinder paramIBinder)
  {
    ko = paramIBinder;
  }
  
  /* Error */
  public boolean a(com.google.android.gms.maps.model.internal.f paramf)
  {
    // Byte code:
    //   0: iconst_1
    //   1: istore 5
    //   3: invokestatic 24	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   6: astore_2
    //   7: invokestatic 24	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   10: astore_3
    //   11: aload_2
    //   12: ldc 26
    //   14: invokevirtual 30	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
    //   17: aload_1
    //   18: ifnull +55 -> 73
    //   21: aload_1
    //   22: invokeinterface 36 1 0
    //   27: astore_1
    //   28: aload_2
    //   29: aload_1
    //   30: invokevirtual 39	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
    //   33: aload_0
    //   34: getfield 15	com/google/android/gms/maps/internal/l$a$a:ko	Landroid/os/IBinder;
    //   37: iconst_1
    //   38: aload_2
    //   39: aload_3
    //   40: iconst_0
    //   41: invokeinterface 45 5 0
    //   46: pop
    //   47: aload_3
    //   48: invokevirtual 48	android/os/Parcel:readException	()V
    //   51: aload_3
    //   52: invokevirtual 52	android/os/Parcel:readInt	()I
    //   55: istore 4
    //   57: iload 4
    //   59: ifeq +19 -> 78
    //   62: aload_3
    //   63: invokevirtual 55	android/os/Parcel:recycle	()V
    //   66: aload_2
    //   67: invokevirtual 55	android/os/Parcel:recycle	()V
    //   70: iload 5
    //   72: ireturn
    //   73: aconst_null
    //   74: astore_1
    //   75: goto -47 -> 28
    //   78: iconst_0
    //   79: istore 5
    //   81: goto -19 -> 62
    //   84: astore_1
    //   85: aload_3
    //   86: invokevirtual 55	android/os/Parcel:recycle	()V
    //   89: aload_2
    //   90: invokevirtual 55	android/os/Parcel:recycle	()V
    //   93: aload_1
    //   94: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	95	0	this	a
    //   0	95	1	paramf	com.google.android.gms.maps.model.internal.f
    //   6	84	2	localParcel1	android.os.Parcel
    //   10	76	3	localParcel2	android.os.Parcel
    //   55	3	4	i	int
    //   1	79	5	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   11	17	84	finally
    //   21	28	84	finally
    //   28	57	84	finally
  }
  
  public IBinder asBinder()
  {
    return ko;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.internal.l.a.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */