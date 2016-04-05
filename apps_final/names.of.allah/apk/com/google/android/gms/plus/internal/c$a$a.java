package com.google.android.gms.plus.internal;

import android.os.IBinder;

class c$a$a
  implements c
{
  private IBinder ko;
  
  c$a$a(IBinder paramIBinder)
  {
    ko = paramIBinder;
  }
  
  /* Error */
  public com.google.android.gms.dynamic.d a(com.google.android.gms.dynamic.d paramd, int paramInt1, int paramInt2, String paramString, int paramInt3)
  {
    // Byte code:
    //   0: invokestatic 24	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   3: astore 6
    //   5: invokestatic 24	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   8: astore 7
    //   10: aload 6
    //   12: ldc 26
    //   14: invokevirtual 30	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
    //   17: aload_1
    //   18: ifnull +84 -> 102
    //   21: aload_1
    //   22: invokeinterface 36 1 0
    //   27: astore_1
    //   28: aload 6
    //   30: aload_1
    //   31: invokevirtual 39	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
    //   34: aload 6
    //   36: iload_2
    //   37: invokevirtual 43	android/os/Parcel:writeInt	(I)V
    //   40: aload 6
    //   42: iload_3
    //   43: invokevirtual 43	android/os/Parcel:writeInt	(I)V
    //   46: aload 6
    //   48: aload 4
    //   50: invokevirtual 46	android/os/Parcel:writeString	(Ljava/lang/String;)V
    //   53: aload 6
    //   55: iload 5
    //   57: invokevirtual 43	android/os/Parcel:writeInt	(I)V
    //   60: aload_0
    //   61: getfield 15	com/google/android/gms/plus/internal/c$a$a:ko	Landroid/os/IBinder;
    //   64: iconst_1
    //   65: aload 6
    //   67: aload 7
    //   69: iconst_0
    //   70: invokeinterface 52 5 0
    //   75: pop
    //   76: aload 7
    //   78: invokevirtual 55	android/os/Parcel:readException	()V
    //   81: aload 7
    //   83: invokevirtual 58	android/os/Parcel:readStrongBinder	()Landroid/os/IBinder;
    //   86: invokestatic 64	com/google/android/gms/dynamic/d$a:ag	(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/d;
    //   89: astore_1
    //   90: aload 7
    //   92: invokevirtual 67	android/os/Parcel:recycle	()V
    //   95: aload 6
    //   97: invokevirtual 67	android/os/Parcel:recycle	()V
    //   100: aload_1
    //   101: areturn
    //   102: aconst_null
    //   103: astore_1
    //   104: goto -76 -> 28
    //   107: astore_1
    //   108: aload 7
    //   110: invokevirtual 67	android/os/Parcel:recycle	()V
    //   113: aload 6
    //   115: invokevirtual 67	android/os/Parcel:recycle	()V
    //   118: aload_1
    //   119: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	120	0	this	a
    //   0	120	1	paramd	com.google.android.gms.dynamic.d
    //   0	120	2	paramInt1	int
    //   0	120	3	paramInt2	int
    //   0	120	4	paramString	String
    //   0	120	5	paramInt3	int
    //   3	111	6	localParcel1	android.os.Parcel
    //   8	101	7	localParcel2	android.os.Parcel
    // Exception table:
    //   from	to	target	type
    //   10	17	107	finally
    //   21	28	107	finally
    //   28	90	107	finally
  }
  
  /* Error */
  public com.google.android.gms.dynamic.d a(com.google.android.gms.dynamic.d paramd, int paramInt1, int paramInt2, String paramString1, String paramString2)
  {
    // Byte code:
    //   0: invokestatic 24	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   3: astore 6
    //   5: invokestatic 24	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   8: astore 7
    //   10: aload 6
    //   12: ldc 26
    //   14: invokevirtual 30	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
    //   17: aload_1
    //   18: ifnull +84 -> 102
    //   21: aload_1
    //   22: invokeinterface 36 1 0
    //   27: astore_1
    //   28: aload 6
    //   30: aload_1
    //   31: invokevirtual 39	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
    //   34: aload 6
    //   36: iload_2
    //   37: invokevirtual 43	android/os/Parcel:writeInt	(I)V
    //   40: aload 6
    //   42: iload_3
    //   43: invokevirtual 43	android/os/Parcel:writeInt	(I)V
    //   46: aload 6
    //   48: aload 4
    //   50: invokevirtual 46	android/os/Parcel:writeString	(Ljava/lang/String;)V
    //   53: aload 6
    //   55: aload 5
    //   57: invokevirtual 46	android/os/Parcel:writeString	(Ljava/lang/String;)V
    //   60: aload_0
    //   61: getfield 15	com/google/android/gms/plus/internal/c$a$a:ko	Landroid/os/IBinder;
    //   64: iconst_2
    //   65: aload 6
    //   67: aload 7
    //   69: iconst_0
    //   70: invokeinterface 52 5 0
    //   75: pop
    //   76: aload 7
    //   78: invokevirtual 55	android/os/Parcel:readException	()V
    //   81: aload 7
    //   83: invokevirtual 58	android/os/Parcel:readStrongBinder	()Landroid/os/IBinder;
    //   86: invokestatic 64	com/google/android/gms/dynamic/d$a:ag	(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/d;
    //   89: astore_1
    //   90: aload 7
    //   92: invokevirtual 67	android/os/Parcel:recycle	()V
    //   95: aload 6
    //   97: invokevirtual 67	android/os/Parcel:recycle	()V
    //   100: aload_1
    //   101: areturn
    //   102: aconst_null
    //   103: astore_1
    //   104: goto -76 -> 28
    //   107: astore_1
    //   108: aload 7
    //   110: invokevirtual 67	android/os/Parcel:recycle	()V
    //   113: aload 6
    //   115: invokevirtual 67	android/os/Parcel:recycle	()V
    //   118: aload_1
    //   119: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	120	0	this	a
    //   0	120	1	paramd	com.google.android.gms.dynamic.d
    //   0	120	2	paramInt1	int
    //   0	120	3	paramInt2	int
    //   0	120	4	paramString1	String
    //   0	120	5	paramString2	String
    //   3	111	6	localParcel1	android.os.Parcel
    //   8	101	7	localParcel2	android.os.Parcel
    // Exception table:
    //   from	to	target	type
    //   10	17	107	finally
    //   21	28	107	finally
    //   28	90	107	finally
  }
  
  public IBinder asBinder()
  {
    return ko;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.plus.internal.c.a.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */