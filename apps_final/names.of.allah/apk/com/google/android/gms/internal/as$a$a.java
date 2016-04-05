package com.google.android.gms.internal;

import android.os.IBinder;

class as$a$a
  implements as
{
  private IBinder ko;
  
  as$a$a(IBinder paramIBinder)
  {
    ko = paramIBinder;
  }
  
  /* Error */
  public IBinder a(com.google.android.gms.dynamic.d paramd, am paramam, String paramString, bu parambu, int paramInt)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 6
    //   3: invokestatic 24	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   6: astore 7
    //   8: invokestatic 24	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   11: astore 8
    //   13: aload 7
    //   15: ldc 26
    //   17: invokevirtual 30	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
    //   20: aload_1
    //   21: ifnull +107 -> 128
    //   24: aload_1
    //   25: invokeinterface 36 1 0
    //   30: astore_1
    //   31: aload 7
    //   33: aload_1
    //   34: invokevirtual 39	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
    //   37: aload_2
    //   38: ifnull +95 -> 133
    //   41: aload 7
    //   43: iconst_1
    //   44: invokevirtual 43	android/os/Parcel:writeInt	(I)V
    //   47: aload_2
    //   48: aload 7
    //   50: iconst_0
    //   51: invokevirtual 49	com/google/android/gms/internal/am:writeToParcel	(Landroid/os/Parcel;I)V
    //   54: aload 7
    //   56: aload_3
    //   57: invokevirtual 52	android/os/Parcel:writeString	(Ljava/lang/String;)V
    //   60: aload 6
    //   62: astore_1
    //   63: aload 4
    //   65: ifnull +11 -> 76
    //   68: aload 4
    //   70: invokeinterface 55 1 0
    //   75: astore_1
    //   76: aload 7
    //   78: aload_1
    //   79: invokevirtual 39	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
    //   82: aload 7
    //   84: iload 5
    //   86: invokevirtual 43	android/os/Parcel:writeInt	(I)V
    //   89: aload_0
    //   90: getfield 15	com/google/android/gms/internal/as$a$a:ko	Landroid/os/IBinder;
    //   93: iconst_1
    //   94: aload 7
    //   96: aload 8
    //   98: iconst_0
    //   99: invokeinterface 61 5 0
    //   104: pop
    //   105: aload 8
    //   107: invokevirtual 64	android/os/Parcel:readException	()V
    //   110: aload 8
    //   112: invokevirtual 67	android/os/Parcel:readStrongBinder	()Landroid/os/IBinder;
    //   115: astore_1
    //   116: aload 8
    //   118: invokevirtual 70	android/os/Parcel:recycle	()V
    //   121: aload 7
    //   123: invokevirtual 70	android/os/Parcel:recycle	()V
    //   126: aload_1
    //   127: areturn
    //   128: aconst_null
    //   129: astore_1
    //   130: goto -99 -> 31
    //   133: aload 7
    //   135: iconst_0
    //   136: invokevirtual 43	android/os/Parcel:writeInt	(I)V
    //   139: goto -85 -> 54
    //   142: astore_1
    //   143: aload 8
    //   145: invokevirtual 70	android/os/Parcel:recycle	()V
    //   148: aload 7
    //   150: invokevirtual 70	android/os/Parcel:recycle	()V
    //   153: aload_1
    //   154: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	155	0	this	a
    //   0	155	1	paramd	com.google.android.gms.dynamic.d
    //   0	155	2	paramam	am
    //   0	155	3	paramString	String
    //   0	155	4	parambu	bu
    //   0	155	5	paramInt	int
    //   1	60	6	localObject	Object
    //   6	143	7	localParcel1	android.os.Parcel
    //   11	133	8	localParcel2	android.os.Parcel
    // Exception table:
    //   from	to	target	type
    //   13	20	142	finally
    //   24	31	142	finally
    //   31	37	142	finally
    //   41	54	142	finally
    //   54	60	142	finally
    //   68	76	142	finally
    //   76	116	142	finally
    //   133	139	142	finally
  }
  
  public IBinder asBinder()
  {
    return ko;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.as.a.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */