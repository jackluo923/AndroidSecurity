package com.google.android.gms.maps.model.internal;

import android.os.IBinder;
import android.os.Parcel;

class h$a$a
  implements h
{
  private IBinder ko;
  
  h$a$a(IBinder paramIBinder)
  {
    ko = paramIBinder;
  }
  
  /* Error */
  public boolean a(h paramh)
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore 5
    //   3: invokestatic 24	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   6: astore_2
    //   7: invokestatic 24	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   10: astore_3
    //   11: aload_2
    //   12: ldc 26
    //   14: invokevirtual 30	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
    //   17: aload_1
    //   18: ifnull +59 -> 77
    //   21: aload_1
    //   22: invokeinterface 34 1 0
    //   27: astore_1
    //   28: aload_2
    //   29: aload_1
    //   30: invokevirtual 37	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
    //   33: aload_0
    //   34: getfield 15	com/google/android/gms/maps/model/internal/h$a$a:ko	Landroid/os/IBinder;
    //   37: bipush 8
    //   39: aload_2
    //   40: aload_3
    //   41: iconst_0
    //   42: invokeinterface 43 5 0
    //   47: pop
    //   48: aload_3
    //   49: invokevirtual 46	android/os/Parcel:readException	()V
    //   52: aload_3
    //   53: invokevirtual 50	android/os/Parcel:readInt	()I
    //   56: istore 4
    //   58: iload 4
    //   60: ifeq +6 -> 66
    //   63: iconst_1
    //   64: istore 5
    //   66: aload_3
    //   67: invokevirtual 53	android/os/Parcel:recycle	()V
    //   70: aload_2
    //   71: invokevirtual 53	android/os/Parcel:recycle	()V
    //   74: iload 5
    //   76: ireturn
    //   77: aconst_null
    //   78: astore_1
    //   79: goto -51 -> 28
    //   82: astore_1
    //   83: aload_3
    //   84: invokevirtual 53	android/os/Parcel:recycle	()V
    //   87: aload_2
    //   88: invokevirtual 53	android/os/Parcel:recycle	()V
    //   91: aload_1
    //   92: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	93	0	this	a
    //   0	93	1	paramh	h
    //   6	82	2	localParcel1	Parcel
    //   10	74	3	localParcel2	Parcel
    //   56	3	4	i	int
    //   1	74	5	bool	boolean
    // Exception table:
    //   from	to	target	type
    //   11	17	82	finally
    //   21	28	82	finally
    //   28	58	82	finally
  }
  
  public IBinder asBinder()
  {
    return ko;
  }
  
  public void clearTileCache()
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.maps.model.internal.ITileOverlayDelegate");
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
  
  public boolean getFadeIn()
  {
    boolean bool = false;
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.maps.model.internal.ITileOverlayDelegate");
      ko.transact(11, localParcel1, localParcel2, 0);
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
  
  public String getId()
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.maps.model.internal.ITileOverlayDelegate");
      ko.transact(3, localParcel1, localParcel2, 0);
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
  
  public float getZIndex()
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.maps.model.internal.ITileOverlayDelegate");
      ko.transact(5, localParcel1, localParcel2, 0);
      localParcel2.readException();
      float f = localParcel2.readFloat();
      return f;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }
  
  public int hashCodeRemote()
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.maps.model.internal.ITileOverlayDelegate");
      ko.transact(9, localParcel1, localParcel2, 0);
      localParcel2.readException();
      int i = localParcel2.readInt();
      return i;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }
  
  public boolean isVisible()
  {
    boolean bool = false;
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.maps.model.internal.ITileOverlayDelegate");
      ko.transact(7, localParcel1, localParcel2, 0);
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
  
  public void remove()
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.maps.model.internal.ITileOverlayDelegate");
      ko.transact(1, localParcel1, localParcel2, 0);
      localParcel2.readException();
      return;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }
  
  public void setFadeIn(boolean paramBoolean)
  {
    int i = 0;
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.maps.model.internal.ITileOverlayDelegate");
      if (paramBoolean) {
        i = 1;
      }
      localParcel1.writeInt(i);
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
  
  public void setVisible(boolean paramBoolean)
  {
    int i = 0;
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.maps.model.internal.ITileOverlayDelegate");
      if (paramBoolean) {
        i = 1;
      }
      localParcel1.writeInt(i);
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
  
  public void setZIndex(float paramFloat)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.maps.model.internal.ITileOverlayDelegate");
      localParcel1.writeFloat(paramFloat);
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
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.model.internal.h.a.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */