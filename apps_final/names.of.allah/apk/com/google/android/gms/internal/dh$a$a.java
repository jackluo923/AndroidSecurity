package com.google.android.gms.internal;

import android.os.IBinder;

class dh$a$a
  implements dh
{
  private IBinder ko;
  
  dh$a$a(IBinder paramIBinder)
  {
    ko = paramIBinder;
  }
  
  /* Error */
  public void a(dg paramdg)
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
    //   15: ifnull +42 -> 57
    //   18: aload_1
    //   19: invokeinterface 36 1 0
    //   24: astore_1
    //   25: aload_2
    //   26: aload_1
    //   27: invokevirtual 39	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
    //   30: aload_0
    //   31: getfield 15	com/google/android/gms/internal/dh$a$a:ko	Landroid/os/IBinder;
    //   34: iconst_2
    //   35: aload_2
    //   36: aload_3
    //   37: iconst_0
    //   38: invokeinterface 45 5 0
    //   43: pop
    //   44: aload_3
    //   45: invokevirtual 48	android/os/Parcel:readException	()V
    //   48: aload_3
    //   49: invokevirtual 51	android/os/Parcel:recycle	()V
    //   52: aload_2
    //   53: invokevirtual 51	android/os/Parcel:recycle	()V
    //   56: return
    //   57: aconst_null
    //   58: astore_1
    //   59: goto -34 -> 25
    //   62: astore_1
    //   63: aload_3
    //   64: invokevirtual 51	android/os/Parcel:recycle	()V
    //   67: aload_2
    //   68: invokevirtual 51	android/os/Parcel:recycle	()V
    //   71: aload_1
    //   72: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	73	0	this	a
    //   0	73	1	paramdg	dg
    //   3	65	2	localParcel1	android.os.Parcel
    //   7	57	3	localParcel2	android.os.Parcel
    // Exception table:
    //   from	to	target	type
    //   8	14	62	finally
    //   18	25	62	finally
    //   25	48	62	finally
  }
  
  public IBinder asBinder()
  {
    return ko;
  }
  
  /* Error */
  public boolean isValidPurchase(String paramString)
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
    //   17: aload_2
    //   18: aload_1
    //   19: invokevirtual 56	android/os/Parcel:writeString	(Ljava/lang/String;)V
    //   22: aload_0
    //   23: getfield 15	com/google/android/gms/internal/dh$a$a:ko	Landroid/os/IBinder;
    //   26: iconst_1
    //   27: aload_2
    //   28: aload_3
    //   29: iconst_0
    //   30: invokeinterface 45 5 0
    //   35: pop
    //   36: aload_3
    //   37: invokevirtual 48	android/os/Parcel:readException	()V
    //   40: aload_3
    //   41: invokevirtual 60	android/os/Parcel:readInt	()I
    //   44: istore 4
    //   46: iload 4
    //   48: ifeq +14 -> 62
    //   51: aload_3
    //   52: invokevirtual 51	android/os/Parcel:recycle	()V
    //   55: aload_2
    //   56: invokevirtual 51	android/os/Parcel:recycle	()V
    //   59: iload 5
    //   61: ireturn
    //   62: iconst_0
    //   63: istore 5
    //   65: goto -14 -> 51
    //   68: astore_1
    //   69: aload_3
    //   70: invokevirtual 51	android/os/Parcel:recycle	()V
    //   73: aload_2
    //   74: invokevirtual 51	android/os/Parcel:recycle	()V
    //   77: aload_1
    //   78: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	79	0	this	a
    //   0	79	1	paramString	String
    //   6	68	2	localParcel1	android.os.Parcel
    //   10	60	3	localParcel2	android.os.Parcel
    //   44	3	4	i	int
    //   1	63	5	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   11	46	68	finally
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.dh.a.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */