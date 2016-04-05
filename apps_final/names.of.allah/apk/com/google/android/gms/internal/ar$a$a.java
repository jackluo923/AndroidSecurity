package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.dynamic.d;
import com.google.android.gms.dynamic.d.a;

class ar$a$a
  implements ar
{
  private IBinder ko;
  
  ar$a$a(IBinder paramIBinder)
  {
    ko = paramIBinder;
  }
  
  public d P()
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.ads.internal.client.IAdManager");
      ko.transact(1, localParcel1, localParcel2, 0);
      localParcel2.readException();
      d locald = d.a.ag(localParcel2.readStrongBinder());
      return locald;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }
  
  /* Error */
  public am Q()
  {
    // Byte code:
    //   0: invokestatic 24	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   3: astore_2
    //   4: invokestatic 24	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   7: astore_3
    //   8: aload_2
    //   9: ldc 26
    //   11: invokevirtual 30	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
    //   14: aload_0
    //   15: getfield 15	com/google/android/gms/internal/ar$a$a:ko	Landroid/os/IBinder;
    //   18: bipush 12
    //   20: aload_2
    //   21: aload_3
    //   22: iconst_0
    //   23: invokeinterface 36 5 0
    //   28: pop
    //   29: aload_3
    //   30: invokevirtual 39	android/os/Parcel:readException	()V
    //   33: aload_3
    //   34: invokevirtual 58	android/os/Parcel:readInt	()I
    //   37: ifeq +21 -> 58
    //   40: getstatic 64	com/google/android/gms/internal/am:CREATOR	Lcom/google/android/gms/internal/an;
    //   43: aload_3
    //   44: invokevirtual 70	com/google/android/gms/internal/an:c	(Landroid/os/Parcel;)Lcom/google/android/gms/internal/am;
    //   47: astore_1
    //   48: aload_3
    //   49: invokevirtual 52	android/os/Parcel:recycle	()V
    //   52: aload_2
    //   53: invokevirtual 52	android/os/Parcel:recycle	()V
    //   56: aload_1
    //   57: areturn
    //   58: aconst_null
    //   59: astore_1
    //   60: goto -12 -> 48
    //   63: astore_1
    //   64: aload_3
    //   65: invokevirtual 52	android/os/Parcel:recycle	()V
    //   68: aload_2
    //   69: invokevirtual 52	android/os/Parcel:recycle	()V
    //   72: aload_1
    //   73: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	74	0	this	a
    //   47	13	1	localam	am
    //   63	10	1	localObject	Object
    //   3	66	2	localParcel1	Parcel
    //   7	58	3	localParcel2	Parcel
    // Exception table:
    //   from	to	target	type
    //   8	48	63	finally
  }
  
  /* Error */
  public void a(am paramam)
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
    //   18: aload_2
    //   19: iconst_1
    //   20: invokevirtual 76	android/os/Parcel:writeInt	(I)V
    //   23: aload_1
    //   24: aload_2
    //   25: iconst_0
    //   26: invokevirtual 80	com/google/android/gms/internal/am:writeToParcel	(Landroid/os/Parcel;I)V
    //   29: aload_0
    //   30: getfield 15	com/google/android/gms/internal/ar$a$a:ko	Landroid/os/IBinder;
    //   33: bipush 13
    //   35: aload_2
    //   36: aload_3
    //   37: iconst_0
    //   38: invokeinterface 36 5 0
    //   43: pop
    //   44: aload_3
    //   45: invokevirtual 39	android/os/Parcel:readException	()V
    //   48: aload_3
    //   49: invokevirtual 52	android/os/Parcel:recycle	()V
    //   52: aload_2
    //   53: invokevirtual 52	android/os/Parcel:recycle	()V
    //   56: return
    //   57: aload_2
    //   58: iconst_0
    //   59: invokevirtual 76	android/os/Parcel:writeInt	(I)V
    //   62: goto -33 -> 29
    //   65: astore_1
    //   66: aload_3
    //   67: invokevirtual 52	android/os/Parcel:recycle	()V
    //   70: aload_2
    //   71: invokevirtual 52	android/os/Parcel:recycle	()V
    //   74: aload_1
    //   75: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	76	0	this	a
    //   0	76	1	paramam	am
    //   3	68	2	localParcel1	Parcel
    //   7	60	3	localParcel2	Parcel
    // Exception table:
    //   from	to	target	type
    //   8	14	65	finally
    //   18	29	65	finally
    //   29	48	65	finally
    //   57	62	65	finally
  }
  
  /* Error */
  public void a(aq paramaq)
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
    //   15: ifnull +43 -> 58
    //   18: aload_1
    //   19: invokeinterface 86 1 0
    //   24: astore_1
    //   25: aload_2
    //   26: aload_1
    //   27: invokevirtual 89	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
    //   30: aload_0
    //   31: getfield 15	com/google/android/gms/internal/ar$a$a:ko	Landroid/os/IBinder;
    //   34: bipush 7
    //   36: aload_2
    //   37: aload_3
    //   38: iconst_0
    //   39: invokeinterface 36 5 0
    //   44: pop
    //   45: aload_3
    //   46: invokevirtual 39	android/os/Parcel:readException	()V
    //   49: aload_3
    //   50: invokevirtual 52	android/os/Parcel:recycle	()V
    //   53: aload_2
    //   54: invokevirtual 52	android/os/Parcel:recycle	()V
    //   57: return
    //   58: aconst_null
    //   59: astore_1
    //   60: goto -35 -> 25
    //   63: astore_1
    //   64: aload_3
    //   65: invokevirtual 52	android/os/Parcel:recycle	()V
    //   68: aload_2
    //   69: invokevirtual 52	android/os/Parcel:recycle	()V
    //   72: aload_1
    //   73: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	74	0	this	a
    //   0	74	1	paramaq	aq
    //   3	66	2	localParcel1	Parcel
    //   7	58	3	localParcel2	Parcel
    // Exception table:
    //   from	to	target	type
    //   8	14	63	finally
    //   18	25	63	finally
    //   25	49	63	finally
  }
  
  /* Error */
  public void a(at paramat)
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
    //   15: ifnull +43 -> 58
    //   18: aload_1
    //   19: invokeinterface 93 1 0
    //   24: astore_1
    //   25: aload_2
    //   26: aload_1
    //   27: invokevirtual 89	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
    //   30: aload_0
    //   31: getfield 15	com/google/android/gms/internal/ar$a$a:ko	Landroid/os/IBinder;
    //   34: bipush 8
    //   36: aload_2
    //   37: aload_3
    //   38: iconst_0
    //   39: invokeinterface 36 5 0
    //   44: pop
    //   45: aload_3
    //   46: invokevirtual 39	android/os/Parcel:readException	()V
    //   49: aload_3
    //   50: invokevirtual 52	android/os/Parcel:recycle	()V
    //   53: aload_2
    //   54: invokevirtual 52	android/os/Parcel:recycle	()V
    //   57: return
    //   58: aconst_null
    //   59: astore_1
    //   60: goto -35 -> 25
    //   63: astore_1
    //   64: aload_3
    //   65: invokevirtual 52	android/os/Parcel:recycle	()V
    //   68: aload_2
    //   69: invokevirtual 52	android/os/Parcel:recycle	()V
    //   72: aload_1
    //   73: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	74	0	this	a
    //   0	74	1	paramat	at
    //   3	66	2	localParcel1	Parcel
    //   7	58	3	localParcel2	Parcel
    // Exception table:
    //   from	to	target	type
    //   8	14	63	finally
    //   18	25	63	finally
    //   25	49	63	finally
  }
  
  /* Error */
  public void a(dd paramdd)
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
    //   15: ifnull +43 -> 58
    //   18: aload_1
    //   19: invokeinterface 97 1 0
    //   24: astore_1
    //   25: aload_2
    //   26: aload_1
    //   27: invokevirtual 89	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
    //   30: aload_0
    //   31: getfield 15	com/google/android/gms/internal/ar$a$a:ko	Landroid/os/IBinder;
    //   34: bipush 14
    //   36: aload_2
    //   37: aload_3
    //   38: iconst_0
    //   39: invokeinterface 36 5 0
    //   44: pop
    //   45: aload_3
    //   46: invokevirtual 39	android/os/Parcel:readException	()V
    //   49: aload_3
    //   50: invokevirtual 52	android/os/Parcel:recycle	()V
    //   53: aload_2
    //   54: invokevirtual 52	android/os/Parcel:recycle	()V
    //   57: return
    //   58: aconst_null
    //   59: astore_1
    //   60: goto -35 -> 25
    //   63: astore_1
    //   64: aload_3
    //   65: invokevirtual 52	android/os/Parcel:recycle	()V
    //   68: aload_2
    //   69: invokevirtual 52	android/os/Parcel:recycle	()V
    //   72: aload_1
    //   73: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	74	0	this	a
    //   0	74	1	paramdd	dd
    //   3	66	2	localParcel1	Parcel
    //   7	58	3	localParcel2	Parcel
    // Exception table:
    //   from	to	target	type
    //   8	14	63	finally
    //   18	25	63	finally
    //   25	49	63	finally
  }
  
  /* Error */
  public void a(dh paramdh, String paramString)
  {
    // Byte code:
    //   0: invokestatic 24	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   3: astore_3
    //   4: invokestatic 24	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   7: astore 4
    //   9: aload_3
    //   10: ldc 26
    //   12: invokevirtual 30	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
    //   15: aload_1
    //   16: ifnull +51 -> 67
    //   19: aload_1
    //   20: invokeinterface 101 1 0
    //   25: astore_1
    //   26: aload_3
    //   27: aload_1
    //   28: invokevirtual 89	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
    //   31: aload_3
    //   32: aload_2
    //   33: invokevirtual 104	android/os/Parcel:writeString	(Ljava/lang/String;)V
    //   36: aload_0
    //   37: getfield 15	com/google/android/gms/internal/ar$a$a:ko	Landroid/os/IBinder;
    //   40: bipush 15
    //   42: aload_3
    //   43: aload 4
    //   45: iconst_0
    //   46: invokeinterface 36 5 0
    //   51: pop
    //   52: aload 4
    //   54: invokevirtual 39	android/os/Parcel:readException	()V
    //   57: aload 4
    //   59: invokevirtual 52	android/os/Parcel:recycle	()V
    //   62: aload_3
    //   63: invokevirtual 52	android/os/Parcel:recycle	()V
    //   66: return
    //   67: aconst_null
    //   68: astore_1
    //   69: goto -43 -> 26
    //   72: astore_1
    //   73: aload 4
    //   75: invokevirtual 52	android/os/Parcel:recycle	()V
    //   78: aload_3
    //   79: invokevirtual 52	android/os/Parcel:recycle	()V
    //   82: aload_1
    //   83: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	84	0	this	a
    //   0	84	1	paramdh	dh
    //   0	84	2	paramString	String
    //   3	76	3	localParcel1	Parcel
    //   7	67	4	localParcel2	Parcel
    // Exception table:
    //   from	to	target	type
    //   9	15	72	finally
    //   19	26	72	finally
    //   26	57	72	finally
  }
  
  public boolean a(aj paramaj)
  {
    boolean bool = true;
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    for (;;)
    {
      try
      {
        localParcel1.writeInterfaceToken("com.google.android.gms.ads.internal.client.IAdManager");
        if (paramaj != null)
        {
          localParcel1.writeInt(1);
          paramaj.writeToParcel(localParcel1, 0);
          ko.transact(4, localParcel1, localParcel2, 0);
          localParcel2.readException();
          int i = localParcel2.readInt();
          if (i != 0) {
            return bool;
          }
        }
        else
        {
          localParcel1.writeInt(0);
          continue;
        }
        bool = false;
      }
      finally
      {
        localParcel2.recycle();
        localParcel1.recycle();
      }
    }
  }
  
  public void ab()
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.ads.internal.client.IAdManager");
      ko.transact(11, localParcel1, localParcel2, 0);
      localParcel2.readException();
      return;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }
  
  public IBinder asBinder()
  {
    return ko;
  }
  
  public void destroy()
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.ads.internal.client.IAdManager");
      ko.transact(2, localParcel1, localParcel2, 0);
      localParcel2.readException();
      return;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }
  
  public boolean isReady()
  {
    boolean bool = false;
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.ads.internal.client.IAdManager");
      ko.transact(3, localParcel1, localParcel2, 0);
      localParcel2.readException();
      int i = localParcel2.readInt();
      if (i != 0) {
        bool = true;
      }
      return bool;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }
  
  public void pause()
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.ads.internal.client.IAdManager");
      ko.transact(5, localParcel1, localParcel2, 0);
      localParcel2.readException();
      return;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }
  
  public void resume()
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.ads.internal.client.IAdManager");
      ko.transact(6, localParcel1, localParcel2, 0);
      localParcel2.readException();
      return;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }
  
  public void showInterstitial()
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.ads.internal.client.IAdManager");
      ko.transact(9, localParcel1, localParcel2, 0);
      localParcel2.readException();
      return;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }
  
  public void stopLoading()
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.ads.internal.client.IAdManager");
      ko.transact(10, localParcel1, localParcel2, 0);
      localParcel2.readException();
      return;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ar.a.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */