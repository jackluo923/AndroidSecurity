package com.google.android.gms.internal;

import android.os.IBinder;

class hk$a$a
  implements hk
{
  private IBinder ko;
  
  hk$a$a(IBinder paramIBinder)
  {
    ko = paramIBinder;
  }
  
  /* Error */
  public com.google.android.gms.dynamic.d a(com.google.android.gms.dynamic.d paramd, int paramInt1, int paramInt2)
  {
    // Byte code:
    //   0: invokestatic 24	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   3: astore 4
    //   5: invokestatic 24	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   8: astore 5
    //   10: aload 4
    //   12: ldc 26
    //   14: invokevirtual 30	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
    //   17: aload_1
    //   18: ifnull +70 -> 88
    //   21: aload_1
    //   22: invokeinterface 36 1 0
    //   27: astore_1
    //   28: aload 4
    //   30: aload_1
    //   31: invokevirtual 39	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
    //   34: aload 4
    //   36: iload_2
    //   37: invokevirtual 43	android/os/Parcel:writeInt	(I)V
    //   40: aload 4
    //   42: iload_3
    //   43: invokevirtual 43	android/os/Parcel:writeInt	(I)V
    //   46: aload_0
    //   47: getfield 15	com/google/android/gms/internal/hk$a$a:ko	Landroid/os/IBinder;
    //   50: iconst_1
    //   51: aload 4
    //   53: aload 5
    //   55: iconst_0
    //   56: invokeinterface 49 5 0
    //   61: pop
    //   62: aload 5
    //   64: invokevirtual 52	android/os/Parcel:readException	()V
    //   67: aload 5
    //   69: invokevirtual 55	android/os/Parcel:readStrongBinder	()Landroid/os/IBinder;
    //   72: invokestatic 61	com/google/android/gms/dynamic/d$a:ag	(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/d;
    //   75: astore_1
    //   76: aload 5
    //   78: invokevirtual 64	android/os/Parcel:recycle	()V
    //   81: aload 4
    //   83: invokevirtual 64	android/os/Parcel:recycle	()V
    //   86: aload_1
    //   87: areturn
    //   88: aconst_null
    //   89: astore_1
    //   90: goto -62 -> 28
    //   93: astore_1
    //   94: aload 5
    //   96: invokevirtual 64	android/os/Parcel:recycle	()V
    //   99: aload 4
    //   101: invokevirtual 64	android/os/Parcel:recycle	()V
    //   104: aload_1
    //   105: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	106	0	this	a
    //   0	106	1	paramd	com.google.android.gms.dynamic.d
    //   0	106	2	paramInt1	int
    //   0	106	3	paramInt2	int
    //   3	97	4	localParcel1	android.os.Parcel
    //   8	87	5	localParcel2	android.os.Parcel
    // Exception table:
    //   from	to	target	type
    //   10	17	93	finally
    //   21	28	93	finally
    //   28	76	93	finally
  }
  
  public IBinder asBinder()
  {
    return ko;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.hk.a.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */