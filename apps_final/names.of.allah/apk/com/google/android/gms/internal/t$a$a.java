package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.Parcel;

class t$a$a
  implements t
{
  private IBinder ko;
  
  t$a$a(IBinder paramIBinder)
  {
    ko = paramIBinder;
  }
  
  /* Error */
  public boolean a(boolean paramBoolean)
  {
    // Byte code:
    //   0: iconst_1
    //   1: istore 6
    //   3: invokestatic 24	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   6: astore_2
    //   7: invokestatic 24	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   10: astore_3
    //   11: aload_2
    //   12: ldc 26
    //   14: invokevirtual 30	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
    //   17: iload_1
    //   18: ifeq +54 -> 72
    //   21: iconst_1
    //   22: istore 5
    //   24: aload_2
    //   25: iload 5
    //   27: invokevirtual 34	android/os/Parcel:writeInt	(I)V
    //   30: aload_0
    //   31: getfield 15	com/google/android/gms/internal/t$a$a:ko	Landroid/os/IBinder;
    //   34: iconst_2
    //   35: aload_2
    //   36: aload_3
    //   37: iconst_0
    //   38: invokeinterface 40 5 0
    //   43: pop
    //   44: aload_3
    //   45: invokevirtual 43	android/os/Parcel:readException	()V
    //   48: aload_3
    //   49: invokevirtual 47	android/os/Parcel:readInt	()I
    //   52: istore 5
    //   54: iload 5
    //   56: ifeq +22 -> 78
    //   59: iload 6
    //   61: istore_1
    //   62: aload_3
    //   63: invokevirtual 50	android/os/Parcel:recycle	()V
    //   66: aload_2
    //   67: invokevirtual 50	android/os/Parcel:recycle	()V
    //   70: iload_1
    //   71: ireturn
    //   72: iconst_0
    //   73: istore 5
    //   75: goto -51 -> 24
    //   78: iconst_0
    //   79: istore_1
    //   80: goto -18 -> 62
    //   83: astore 4
    //   85: aload_3
    //   86: invokevirtual 50	android/os/Parcel:recycle	()V
    //   89: aload_2
    //   90: invokevirtual 50	android/os/Parcel:recycle	()V
    //   93: aload 4
    //   95: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	96	0	this	a
    //   0	96	1	paramBoolean	boolean
    //   6	84	2	localParcel1	Parcel
    //   10	76	3	localParcel2	Parcel
    //   83	11	4	localObject	Object
    //   22	52	5	i	int
    //   1	59	6	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   11	17	83	finally
    //   24	54	83	finally
  }
  
  public IBinder asBinder()
  {
    return ko;
  }
  
  public void b(String paramString, boolean paramBoolean)
  {
    int i = 0;
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
      localParcel1.writeString(paramString);
      if (paramBoolean) {
        i = 1;
      }
      localParcel1.writeInt(i);
      ko.transact(4, localParcel1, localParcel2, 0);
      localParcel2.readException();
      return;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }
  
  public String c(String paramString)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
      localParcel1.writeString(paramString);
      ko.transact(3, localParcel1, localParcel2, 0);
      localParcel2.readException();
      paramString = localParcel2.readString();
      return paramString;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }
  
  public String getId()
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
      ko.transact(1, localParcel1, localParcel2, 0);
      localParcel2.readException();
      String str = localParcel2.readString();
      return str;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.t.a.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */