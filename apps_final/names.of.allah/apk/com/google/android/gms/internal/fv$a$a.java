package com.google.android.gms.internal;

import android.os.IBinder;

class fv$a$a
  implements fv
{
  private IBinder ko;
  
  fv$a$a(IBinder paramIBinder)
  {
    ko = paramIBinder;
  }
  
  /* Error */
  public void a(fw paramfw)
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
    //   31: getfield 15	com/google/android/gms/internal/fv$a$a:ko	Landroid/os/IBinder;
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
    //   0	73	1	paramfw	fw
    //   3	65	2	localParcel1	android.os.Parcel
    //   7	57	3	localParcel2	android.os.Parcel
    // Exception table:
    //   from	to	target	type
    //   8	14	62	finally
    //   18	25	62	finally
    //   25	48	62	finally
  }
  
  /* Error */
  public void a(fw paramfw, String paramString, fs[] paramArrayOffs)
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
    //   18: ifnull +61 -> 79
    //   21: aload_1
    //   22: invokeinterface 36 1 0
    //   27: astore_1
    //   28: aload 4
    //   30: aload_1
    //   31: invokevirtual 39	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
    //   34: aload 4
    //   36: aload_2
    //   37: invokevirtual 55	android/os/Parcel:writeString	(Ljava/lang/String;)V
    //   40: aload 4
    //   42: aload_3
    //   43: iconst_0
    //   44: invokevirtual 59	android/os/Parcel:writeTypedArray	([Landroid/os/Parcelable;I)V
    //   47: aload_0
    //   48: getfield 15	com/google/android/gms/internal/fv$a$a:ko	Landroid/os/IBinder;
    //   51: iconst_1
    //   52: aload 4
    //   54: aload 5
    //   56: iconst_0
    //   57: invokeinterface 45 5 0
    //   62: pop
    //   63: aload 5
    //   65: invokevirtual 48	android/os/Parcel:readException	()V
    //   68: aload 5
    //   70: invokevirtual 51	android/os/Parcel:recycle	()V
    //   73: aload 4
    //   75: invokevirtual 51	android/os/Parcel:recycle	()V
    //   78: return
    //   79: aconst_null
    //   80: astore_1
    //   81: goto -53 -> 28
    //   84: astore_1
    //   85: aload 5
    //   87: invokevirtual 51	android/os/Parcel:recycle	()V
    //   90: aload 4
    //   92: invokevirtual 51	android/os/Parcel:recycle	()V
    //   95: aload_1
    //   96: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	97	0	this	a
    //   0	97	1	paramfw	fw
    //   0	97	2	paramString	String
    //   0	97	3	paramArrayOffs	fs[]
    //   3	88	4	localParcel1	android.os.Parcel
    //   8	78	5	localParcel2	android.os.Parcel
    // Exception table:
    //   from	to	target	type
    //   10	17	84	finally
    //   21	28	84	finally
    //   28	68	84	finally
  }
  
  /* Error */
  public void a(fw paramfw, boolean paramBoolean)
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore 5
    //   3: invokestatic 24	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   6: astore_3
    //   7: invokestatic 24	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   10: astore 4
    //   12: aload_3
    //   13: ldc 26
    //   15: invokevirtual 30	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
    //   18: aload_1
    //   19: ifnull +58 -> 77
    //   22: aload_1
    //   23: invokeinterface 36 1 0
    //   28: astore_1
    //   29: aload_3
    //   30: aload_1
    //   31: invokevirtual 39	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
    //   34: iload_2
    //   35: ifeq +6 -> 41
    //   38: iconst_1
    //   39: istore 5
    //   41: aload_3
    //   42: iload 5
    //   44: invokevirtual 64	android/os/Parcel:writeInt	(I)V
    //   47: aload_0
    //   48: getfield 15	com/google/android/gms/internal/fv$a$a:ko	Landroid/os/IBinder;
    //   51: iconst_4
    //   52: aload_3
    //   53: aload 4
    //   55: iconst_0
    //   56: invokeinterface 45 5 0
    //   61: pop
    //   62: aload 4
    //   64: invokevirtual 48	android/os/Parcel:readException	()V
    //   67: aload 4
    //   69: invokevirtual 51	android/os/Parcel:recycle	()V
    //   72: aload_3
    //   73: invokevirtual 51	android/os/Parcel:recycle	()V
    //   76: return
    //   77: aconst_null
    //   78: astore_1
    //   79: goto -50 -> 29
    //   82: astore_1
    //   83: aload 4
    //   85: invokevirtual 51	android/os/Parcel:recycle	()V
    //   88: aload_3
    //   89: invokevirtual 51	android/os/Parcel:recycle	()V
    //   92: aload_1
    //   93: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	94	0	this	a
    //   0	94	1	paramfw	fw
    //   0	94	2	paramBoolean	boolean
    //   6	83	3	localParcel1	android.os.Parcel
    //   10	74	4	localParcel2	android.os.Parcel
    //   1	42	5	i	int
    // Exception table:
    //   from	to	target	type
    //   12	18	82	finally
    //   22	29	82	finally
    //   29	34	82	finally
    //   41	67	82	finally
  }
  
  public IBinder asBinder()
  {
    return ko;
  }
  
  /* Error */
  public void b(fw paramfw)
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
    //   31: getfield 15	com/google/android/gms/internal/fv$a$a:ko	Landroid/os/IBinder;
    //   34: iconst_3
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
    //   0	73	1	paramfw	fw
    //   3	65	2	localParcel1	android.os.Parcel
    //   7	57	3	localParcel2	android.os.Parcel
    // Exception table:
    //   from	to	target	type
    //   8	14	62	finally
    //   18	25	62	finally
    //   25	48	62	finally
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.fv.a.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */