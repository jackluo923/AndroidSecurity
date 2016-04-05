package com.google.android.gms.drive.realtime.internal;

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
  public void D(boolean paramBoolean)
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
    //   17: iload_1
    //   18: ifeq +36 -> 54
    //   21: aload_2
    //   22: iload 5
    //   24: invokevirtual 34	android/os/Parcel:writeInt	(I)V
    //   27: aload_0
    //   28: getfield 15	com/google/android/gms/drive/realtime/internal/c$a$a:ko	Landroid/os/IBinder;
    //   31: iconst_1
    //   32: aload_2
    //   33: aload_3
    //   34: iconst_0
    //   35: invokeinterface 40 5 0
    //   40: pop
    //   41: aload_3
    //   42: invokevirtual 43	android/os/Parcel:readException	()V
    //   45: aload_3
    //   46: invokevirtual 46	android/os/Parcel:recycle	()V
    //   49: aload_2
    //   50: invokevirtual 46	android/os/Parcel:recycle	()V
    //   53: return
    //   54: iconst_0
    //   55: istore 5
    //   57: goto -36 -> 21
    //   60: astore 4
    //   62: aload_3
    //   63: invokevirtual 46	android/os/Parcel:recycle	()V
    //   66: aload_2
    //   67: invokevirtual 46	android/os/Parcel:recycle	()V
    //   70: aload 4
    //   72: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	73	0	this	a
    //   0	73	1	paramBoolean	boolean
    //   6	61	2	localParcel1	android.os.Parcel
    //   10	53	3	localParcel2	android.os.Parcel
    //   60	11	4	localObject	Object
    //   1	55	5	i	int
    // Exception table:
    //   from	to	target	type
    //   11	17	60	finally
    //   21	45	60	finally
  }
  
  public IBinder asBinder()
  {
    return ko;
  }
  
  /* Error */
  public void o(com.google.android.gms.common.api.Status paramStatus)
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
    //   15: ifnull +41 -> 56
    //   18: aload_2
    //   19: iconst_1
    //   20: invokevirtual 34	android/os/Parcel:writeInt	(I)V
    //   23: aload_1
    //   24: aload_2
    //   25: iconst_0
    //   26: invokevirtual 56	com/google/android/gms/common/api/Status:writeToParcel	(Landroid/os/Parcel;I)V
    //   29: aload_0
    //   30: getfield 15	com/google/android/gms/drive/realtime/internal/c$a$a:ko	Landroid/os/IBinder;
    //   33: iconst_2
    //   34: aload_2
    //   35: aload_3
    //   36: iconst_0
    //   37: invokeinterface 40 5 0
    //   42: pop
    //   43: aload_3
    //   44: invokevirtual 43	android/os/Parcel:readException	()V
    //   47: aload_3
    //   48: invokevirtual 46	android/os/Parcel:recycle	()V
    //   51: aload_2
    //   52: invokevirtual 46	android/os/Parcel:recycle	()V
    //   55: return
    //   56: aload_2
    //   57: iconst_0
    //   58: invokevirtual 34	android/os/Parcel:writeInt	(I)V
    //   61: goto -32 -> 29
    //   64: astore_1
    //   65: aload_3
    //   66: invokevirtual 46	android/os/Parcel:recycle	()V
    //   69: aload_2
    //   70: invokevirtual 46	android/os/Parcel:recycle	()V
    //   73: aload_1
    //   74: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	75	0	this	a
    //   0	75	1	paramStatus	com.google.android.gms.common.api.Status
    //   3	67	2	localParcel1	android.os.Parcel
    //   7	59	3	localParcel2	android.os.Parcel
    // Exception table:
    //   from	to	target	type
    //   8	14	64	finally
    //   18	29	64	finally
    //   29	47	64	finally
    //   56	61	64	finally
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.drive.realtime.internal.c.a.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */