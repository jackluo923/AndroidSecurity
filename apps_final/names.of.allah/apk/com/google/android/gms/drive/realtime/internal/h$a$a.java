package com.google.android.gms.drive.realtime.internal;

import android.os.IBinder;

class h$a$a
  implements h
{
  private IBinder ko;
  
  h$a$a(IBinder paramIBinder)
  {
    ko = paramIBinder;
  }
  
  public IBinder asBinder()
  {
    return ko;
  }
  
  /* Error */
  public void c(boolean paramBoolean1, boolean paramBoolean2)
  {
    // Byte code:
    //   0: iconst_1
    //   1: istore 7
    //   3: invokestatic 26	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   6: astore_3
    //   7: invokestatic 26	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   10: astore 4
    //   12: aload_3
    //   13: ldc 28
    //   15: invokevirtual 32	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
    //   18: iload_1
    //   19: ifeq +56 -> 75
    //   22: iconst_1
    //   23: istore 6
    //   25: aload_3
    //   26: iload 6
    //   28: invokevirtual 36	android/os/Parcel:writeInt	(I)V
    //   31: iload_2
    //   32: ifeq +49 -> 81
    //   35: iload 7
    //   37: istore 6
    //   39: aload_3
    //   40: iload 6
    //   42: invokevirtual 36	android/os/Parcel:writeInt	(I)V
    //   45: aload_0
    //   46: getfield 15	com/google/android/gms/drive/realtime/internal/h$a$a:ko	Landroid/os/IBinder;
    //   49: iconst_1
    //   50: aload_3
    //   51: aload 4
    //   53: iconst_0
    //   54: invokeinterface 42 5 0
    //   59: pop
    //   60: aload 4
    //   62: invokevirtual 45	android/os/Parcel:readException	()V
    //   65: aload 4
    //   67: invokevirtual 48	android/os/Parcel:recycle	()V
    //   70: aload_3
    //   71: invokevirtual 48	android/os/Parcel:recycle	()V
    //   74: return
    //   75: iconst_0
    //   76: istore 6
    //   78: goto -53 -> 25
    //   81: iconst_0
    //   82: istore 6
    //   84: goto -45 -> 39
    //   87: astore 5
    //   89: aload 4
    //   91: invokevirtual 48	android/os/Parcel:recycle	()V
    //   94: aload_3
    //   95: invokevirtual 48	android/os/Parcel:recycle	()V
    //   98: aload 5
    //   100: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	101	0	this	a
    //   0	101	1	paramBoolean1	boolean
    //   0	101	2	paramBoolean2	boolean
    //   6	89	3	localParcel1	android.os.Parcel
    //   10	80	4	localParcel2	android.os.Parcel
    //   87	12	5	localObject	Object
    //   23	60	6	i	int
    //   1	35	7	j	int
    // Exception table:
    //   from	to	target	type
    //   12	18	87	finally
    //   25	31	87	finally
    //   39	65	87	finally
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.drive.realtime.internal.h.a.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */