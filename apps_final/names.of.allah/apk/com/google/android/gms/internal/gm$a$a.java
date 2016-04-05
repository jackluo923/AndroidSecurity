package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.Parcel;

class gm$a$a
  implements gm
{
  private IBinder ko;
  
  gm$a$a(IBinder paramIBinder)
  {
    ko = paramIBinder;
  }
  
  /* Error */
  public void a(double paramDouble1, double paramDouble2, boolean paramBoolean)
  {
    // Byte code:
    //   0: iconst_1
    //   1: istore 8
    //   3: invokestatic 24	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   6: astore 6
    //   8: aload 6
    //   10: ldc 26
    //   12: invokevirtual 30	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
    //   15: aload 6
    //   17: dload_1
    //   18: invokevirtual 34	android/os/Parcel:writeDouble	(D)V
    //   21: aload 6
    //   23: dload_3
    //   24: invokevirtual 34	android/os/Parcel:writeDouble	(D)V
    //   27: iload 5
    //   29: ifeq +32 -> 61
    //   32: aload 6
    //   34: iload 8
    //   36: invokevirtual 38	android/os/Parcel:writeInt	(I)V
    //   39: aload_0
    //   40: getfield 15	com/google/android/gms/internal/gm$a$a:ko	Landroid/os/IBinder;
    //   43: bipush 7
    //   45: aload 6
    //   47: aconst_null
    //   48: iconst_1
    //   49: invokeinterface 44 5 0
    //   54: pop
    //   55: aload 6
    //   57: invokevirtual 47	android/os/Parcel:recycle	()V
    //   60: return
    //   61: iconst_0
    //   62: istore 8
    //   64: goto -32 -> 32
    //   67: astore 7
    //   69: aload 6
    //   71: invokevirtual 47	android/os/Parcel:recycle	()V
    //   74: aload 7
    //   76: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	77	0	this	a
    //   0	77	1	paramDouble1	double
    //   0	77	3	paramDouble2	double
    //   0	77	5	paramBoolean	boolean
    //   6	64	6	localParcel	Parcel
    //   67	8	7	localObject	Object
    //   1	62	8	i	int
    // Exception table:
    //   from	to	target	type
    //   8	27	67	finally
    //   32	55	67	finally
  }
  
  /* Error */
  public void a(String paramString, com.google.android.gms.cast.LaunchOptions paramLaunchOptions)
  {
    // Byte code:
    //   0: invokestatic 24	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   3: astore_3
    //   4: aload_3
    //   5: ldc 26
    //   7: invokevirtual 30	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
    //   10: aload_3
    //   11: aload_1
    //   12: invokevirtual 51	android/os/Parcel:writeString	(Ljava/lang/String;)V
    //   15: aload_2
    //   16: ifnull +34 -> 50
    //   19: aload_3
    //   20: iconst_1
    //   21: invokevirtual 38	android/os/Parcel:writeInt	(I)V
    //   24: aload_2
    //   25: aload_3
    //   26: iconst_0
    //   27: invokevirtual 57	com/google/android/gms/cast/LaunchOptions:writeToParcel	(Landroid/os/Parcel;I)V
    //   30: aload_0
    //   31: getfield 15	com/google/android/gms/internal/gm$a$a:ko	Landroid/os/IBinder;
    //   34: bipush 13
    //   36: aload_3
    //   37: aconst_null
    //   38: iconst_1
    //   39: invokeinterface 44 5 0
    //   44: pop
    //   45: aload_3
    //   46: invokevirtual 47	android/os/Parcel:recycle	()V
    //   49: return
    //   50: aload_3
    //   51: iconst_0
    //   52: invokevirtual 38	android/os/Parcel:writeInt	(I)V
    //   55: goto -25 -> 30
    //   58: astore_1
    //   59: aload_3
    //   60: invokevirtual 47	android/os/Parcel:recycle	()V
    //   63: aload_1
    //   64: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	65	0	this	a
    //   0	65	1	paramString	String
    //   0	65	2	paramLaunchOptions	com.google.android.gms.cast.LaunchOptions
    //   3	57	3	localParcel	Parcel
    // Exception table:
    //   from	to	target	type
    //   4	15	58	finally
    //   19	30	58	finally
    //   30	45	58	finally
    //   50	55	58	finally
  }
  
  public void a(String paramString1, String paramString2, long paramLong)
  {
    Parcel localParcel = Parcel.obtain();
    try
    {
      localParcel.writeInterfaceToken("com.google.android.gms.cast.internal.ICastDeviceController");
      localParcel.writeString(paramString1);
      localParcel.writeString(paramString2);
      localParcel.writeLong(paramLong);
      ko.transact(9, localParcel, null, 1);
      return;
    }
    finally
    {
      localParcel.recycle();
    }
  }
  
  public void a(String paramString, byte[] paramArrayOfByte, long paramLong)
  {
    Parcel localParcel = Parcel.obtain();
    try
    {
      localParcel.writeInterfaceToken("com.google.android.gms.cast.internal.ICastDeviceController");
      localParcel.writeString(paramString);
      localParcel.writeByteArray(paramArrayOfByte);
      localParcel.writeLong(paramLong);
      ko.transact(10, localParcel, null, 1);
      return;
    }
    finally
    {
      localParcel.recycle();
    }
  }
  
  /* Error */
  public void a(boolean paramBoolean1, double paramDouble, boolean paramBoolean2)
  {
    // Byte code:
    //   0: iconst_1
    //   1: istore 8
    //   3: invokestatic 24	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   6: astore 5
    //   8: aload 5
    //   10: ldc 26
    //   12: invokevirtual 30	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
    //   15: iload_1
    //   16: ifeq +57 -> 73
    //   19: iconst_1
    //   20: istore 7
    //   22: aload 5
    //   24: iload 7
    //   26: invokevirtual 38	android/os/Parcel:writeInt	(I)V
    //   29: aload 5
    //   31: dload_2
    //   32: invokevirtual 34	android/os/Parcel:writeDouble	(D)V
    //   35: iload 4
    //   37: ifeq +42 -> 79
    //   40: iload 8
    //   42: istore 7
    //   44: aload 5
    //   46: iload 7
    //   48: invokevirtual 38	android/os/Parcel:writeInt	(I)V
    //   51: aload_0
    //   52: getfield 15	com/google/android/gms/internal/gm$a$a:ko	Landroid/os/IBinder;
    //   55: bipush 8
    //   57: aload 5
    //   59: aconst_null
    //   60: iconst_1
    //   61: invokeinterface 44 5 0
    //   66: pop
    //   67: aload 5
    //   69: invokevirtual 47	android/os/Parcel:recycle	()V
    //   72: return
    //   73: iconst_0
    //   74: istore 7
    //   76: goto -54 -> 22
    //   79: iconst_0
    //   80: istore 7
    //   82: goto -38 -> 44
    //   85: astore 6
    //   87: aload 5
    //   89: invokevirtual 47	android/os/Parcel:recycle	()V
    //   92: aload 6
    //   94: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	95	0	this	a
    //   0	95	1	paramBoolean1	boolean
    //   0	95	2	paramDouble	double
    //   0	95	4	paramBoolean2	boolean
    //   6	82	5	localParcel	Parcel
    //   85	8	6	localObject	Object
    //   20	61	7	i	int
    //   1	40	8	j	int
    // Exception table:
    //   from	to	target	type
    //   8	15	85	finally
    //   22	35	85	finally
    //   44	67	85	finally
  }
  
  public void am(String paramString)
  {
    Parcel localParcel = Parcel.obtain();
    try
    {
      localParcel.writeInterfaceToken("com.google.android.gms.cast.internal.ICastDeviceController");
      localParcel.writeString(paramString);
      ko.transact(5, localParcel, null, 1);
      return;
    }
    finally
    {
      localParcel.recycle();
    }
  }
  
  public void an(String paramString)
  {
    Parcel localParcel = Parcel.obtain();
    try
    {
      localParcel.writeInterfaceToken("com.google.android.gms.cast.internal.ICastDeviceController");
      localParcel.writeString(paramString);
      ko.transact(11, localParcel, null, 1);
      return;
    }
    finally
    {
      localParcel.recycle();
    }
  }
  
  public void ao(String paramString)
  {
    Parcel localParcel = Parcel.obtain();
    try
    {
      localParcel.writeInterfaceToken("com.google.android.gms.cast.internal.ICastDeviceController");
      localParcel.writeString(paramString);
      ko.transact(12, localParcel, null, 1);
      return;
    }
    finally
    {
      localParcel.recycle();
    }
  }
  
  public IBinder asBinder()
  {
    return ko;
  }
  
  public void disconnect()
  {
    Parcel localParcel = Parcel.obtain();
    try
    {
      localParcel.writeInterfaceToken("com.google.android.gms.cast.internal.ICastDeviceController");
      ko.transact(1, localParcel, null, 1);
      return;
    }
    finally
    {
      localParcel.recycle();
    }
  }
  
  /* Error */
  public void e(String paramString, boolean paramBoolean)
  {
    // Byte code:
    //   0: iconst_1
    //   1: istore 4
    //   3: invokestatic 24	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   6: astore_3
    //   7: aload_3
    //   8: ldc 26
    //   10: invokevirtual 30	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
    //   13: aload_3
    //   14: aload_1
    //   15: invokevirtual 51	android/os/Parcel:writeString	(Ljava/lang/String;)V
    //   18: iload_2
    //   19: ifeq +28 -> 47
    //   22: aload_3
    //   23: iload 4
    //   25: invokevirtual 38	android/os/Parcel:writeInt	(I)V
    //   28: aload_0
    //   29: getfield 15	com/google/android/gms/internal/gm$a$a:ko	Landroid/os/IBinder;
    //   32: iconst_2
    //   33: aload_3
    //   34: aconst_null
    //   35: iconst_1
    //   36: invokeinterface 44 5 0
    //   41: pop
    //   42: aload_3
    //   43: invokevirtual 47	android/os/Parcel:recycle	()V
    //   46: return
    //   47: iconst_0
    //   48: istore 4
    //   50: goto -28 -> 22
    //   53: astore_1
    //   54: aload_3
    //   55: invokevirtual 47	android/os/Parcel:recycle	()V
    //   58: aload_1
    //   59: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	60	0	this	a
    //   0	60	1	paramString	String
    //   0	60	2	paramBoolean	boolean
    //   6	49	3	localParcel	Parcel
    //   1	48	4	i	int
    // Exception table:
    //   from	to	target	type
    //   7	18	53	finally
    //   22	42	53	finally
  }
  
  public void eb()
  {
    Parcel localParcel = Parcel.obtain();
    try
    {
      localParcel.writeInterfaceToken("com.google.android.gms.cast.internal.ICastDeviceController");
      ko.transact(6, localParcel, null, 1);
      return;
    }
    finally
    {
      localParcel.recycle();
    }
  }
  
  public void ek()
  {
    Parcel localParcel = Parcel.obtain();
    try
    {
      localParcel.writeInterfaceToken("com.google.android.gms.cast.internal.ICastDeviceController");
      ko.transact(4, localParcel, null, 1);
      return;
    }
    finally
    {
      localParcel.recycle();
    }
  }
  
  public void h(String paramString1, String paramString2)
  {
    Parcel localParcel = Parcel.obtain();
    try
    {
      localParcel.writeInterfaceToken("com.google.android.gms.cast.internal.ICastDeviceController");
      localParcel.writeString(paramString1);
      localParcel.writeString(paramString2);
      ko.transact(3, localParcel, null, 1);
      return;
    }
    finally
    {
      localParcel.recycle();
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.gm.a.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */