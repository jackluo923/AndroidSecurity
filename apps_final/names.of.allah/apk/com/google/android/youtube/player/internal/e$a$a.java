package com.google.android.youtube.player.internal;

import android.os.IBinder;

final class e$a$a
  implements e
{
  private IBinder a;
  
  e$a$a(IBinder paramIBinder)
  {
    a = paramIBinder;
  }
  
  /* Error */
  public final void a(boolean paramBoolean)
  {
    // Byte code:
    //   0: iconst_1
    //   1: istore 5
    //   3: invokestatic 23	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   6: astore_2
    //   7: invokestatic 23	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   10: astore_3
    //   11: aload_2
    //   12: ldc 25
    //   14: invokevirtual 29	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
    //   17: iload_1
    //   18: ifeq +36 -> 54
    //   21: aload_2
    //   22: iload 5
    //   24: invokevirtual 33	android/os/Parcel:writeInt	(I)V
    //   27: aload_0
    //   28: getfield 15	com/google/android/youtube/player/internal/e$a$a:a	Landroid/os/IBinder;
    //   31: iconst_1
    //   32: aload_2
    //   33: aload_3
    //   34: iconst_0
    //   35: invokeinterface 39 5 0
    //   40: pop
    //   41: aload_3
    //   42: invokevirtual 42	android/os/Parcel:readException	()V
    //   45: aload_3
    //   46: invokevirtual 45	android/os/Parcel:recycle	()V
    //   49: aload_2
    //   50: invokevirtual 45	android/os/Parcel:recycle	()V
    //   53: return
    //   54: iconst_0
    //   55: istore 5
    //   57: goto -36 -> 21
    //   60: astore 4
    //   62: aload_3
    //   63: invokevirtual 45	android/os/Parcel:recycle	()V
    //   66: aload_2
    //   67: invokevirtual 45	android/os/Parcel:recycle	()V
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
  
  public final IBinder asBinder()
  {
    return a;
  }
}

/* Location:
 * Qualified Name:     com.google.android.youtube.player.internal.e.a.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */