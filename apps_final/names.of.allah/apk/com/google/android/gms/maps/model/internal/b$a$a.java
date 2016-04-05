package com.google.android.gms.maps.model.internal;

import android.os.IBinder;
import android.os.Parcel;

class b$a$a
  implements b
{
  private IBinder ko;
  
  b$a$a(IBinder paramIBinder)
  {
    ko = paramIBinder;
  }
  
  /* Error */
  public boolean a(b paramb)
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
    //   34: getfield 15	com/google/android/gms/maps/model/internal/b$a$a:ko	Landroid/os/IBinder;
    //   37: bipush 17
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
    //   0	93	1	paramb	b
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
  
  /* Error */
  public com.google.android.gms.maps.model.LatLng getCenter()
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
    //   15: getfield 15	com/google/android/gms/maps/model/internal/b$a$a:ko	Landroid/os/IBinder;
    //   18: iconst_4
    //   19: aload_2
    //   20: aload_3
    //   21: iconst_0
    //   22: invokeinterface 43 5 0
    //   27: pop
    //   28: aload_3
    //   29: invokevirtual 46	android/os/Parcel:readException	()V
    //   32: aload_3
    //   33: invokevirtual 50	android/os/Parcel:readInt	()I
    //   36: ifeq +21 -> 57
    //   39: getstatic 61	com/google/android/gms/maps/model/LatLng:CREATOR	Lcom/google/android/gms/maps/model/LatLngCreator;
    //   42: aload_3
    //   43: invokevirtual 67	com/google/android/gms/maps/model/LatLngCreator:createFromParcel	(Landroid/os/Parcel;)Lcom/google/android/gms/maps/model/LatLng;
    //   46: astore_1
    //   47: aload_3
    //   48: invokevirtual 53	android/os/Parcel:recycle	()V
    //   51: aload_2
    //   52: invokevirtual 53	android/os/Parcel:recycle	()V
    //   55: aload_1
    //   56: areturn
    //   57: aconst_null
    //   58: astore_1
    //   59: goto -12 -> 47
    //   62: astore_1
    //   63: aload_3
    //   64: invokevirtual 53	android/os/Parcel:recycle	()V
    //   67: aload_2
    //   68: invokevirtual 53	android/os/Parcel:recycle	()V
    //   71: aload_1
    //   72: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	73	0	this	a
    //   46	13	1	localLatLng	com.google.android.gms.maps.model.LatLng
    //   62	10	1	localObject	Object
    //   3	65	2	localParcel1	Parcel
    //   7	57	3	localParcel2	Parcel
    // Exception table:
    //   from	to	target	type
    //   8	47	62	finally
  }
  
  public int getFillColor()
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.maps.model.internal.ICircleDelegate");
      ko.transact(12, localParcel1, localParcel2, 0);
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
  
  public String getId()
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.maps.model.internal.ICircleDelegate");
      ko.transact(2, localParcel1, localParcel2, 0);
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
  
  public double getRadius()
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.maps.model.internal.ICircleDelegate");
      ko.transact(6, localParcel1, localParcel2, 0);
      localParcel2.readException();
      double d = localParcel2.readDouble();
      return d;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }
  
  public int getStrokeColor()
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.maps.model.internal.ICircleDelegate");
      ko.transact(10, localParcel1, localParcel2, 0);
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
  
  public float getStrokeWidth()
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.maps.model.internal.ICircleDelegate");
      ko.transact(8, localParcel1, localParcel2, 0);
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
  
  public float getZIndex()
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.maps.model.internal.ICircleDelegate");
      ko.transact(14, localParcel1, localParcel2, 0);
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
      localParcel1.writeInterfaceToken("com.google.android.gms.maps.model.internal.ICircleDelegate");
      ko.transact(18, localParcel1, localParcel2, 0);
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
      localParcel1.writeInterfaceToken("com.google.android.gms.maps.model.internal.ICircleDelegate");
      ko.transact(16, localParcel1, localParcel2, 0);
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
      localParcel1.writeInterfaceToken("com.google.android.gms.maps.model.internal.ICircleDelegate");
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
  
  /* Error */
  public void setCenter(com.google.android.gms.maps.model.LatLng paramLatLng)
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
    //   20: invokevirtual 95	android/os/Parcel:writeInt	(I)V
    //   23: aload_1
    //   24: aload_2
    //   25: iconst_0
    //   26: invokevirtual 99	com/google/android/gms/maps/model/LatLng:writeToParcel	(Landroid/os/Parcel;I)V
    //   29: aload_0
    //   30: getfield 15	com/google/android/gms/maps/model/internal/b$a$a:ko	Landroid/os/IBinder;
    //   33: iconst_3
    //   34: aload_2
    //   35: aload_3
    //   36: iconst_0
    //   37: invokeinterface 43 5 0
    //   42: pop
    //   43: aload_3
    //   44: invokevirtual 46	android/os/Parcel:readException	()V
    //   47: aload_3
    //   48: invokevirtual 53	android/os/Parcel:recycle	()V
    //   51: aload_2
    //   52: invokevirtual 53	android/os/Parcel:recycle	()V
    //   55: return
    //   56: aload_2
    //   57: iconst_0
    //   58: invokevirtual 95	android/os/Parcel:writeInt	(I)V
    //   61: goto -32 -> 29
    //   64: astore_1
    //   65: aload_3
    //   66: invokevirtual 53	android/os/Parcel:recycle	()V
    //   69: aload_2
    //   70: invokevirtual 53	android/os/Parcel:recycle	()V
    //   73: aload_1
    //   74: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	75	0	this	a
    //   0	75	1	paramLatLng	com.google.android.gms.maps.model.LatLng
    //   3	67	2	localParcel1	Parcel
    //   7	59	3	localParcel2	Parcel
    // Exception table:
    //   from	to	target	type
    //   8	14	64	finally
    //   18	29	64	finally
    //   29	47	64	finally
    //   56	61	64	finally
  }
  
  public void setFillColor(int paramInt)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.maps.model.internal.ICircleDelegate");
      localParcel1.writeInt(paramInt);
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
  
  public void setRadius(double paramDouble)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.maps.model.internal.ICircleDelegate");
      localParcel1.writeDouble(paramDouble);
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
  
  public void setStrokeColor(int paramInt)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.maps.model.internal.ICircleDelegate");
      localParcel1.writeInt(paramInt);
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
  
  public void setStrokeWidth(float paramFloat)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.maps.model.internal.ICircleDelegate");
      localParcel1.writeFloat(paramFloat);
      ko.transact(7, localParcel1, localParcel2, 0);
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
      localParcel1.writeInterfaceToken("com.google.android.gms.maps.model.internal.ICircleDelegate");
      if (paramBoolean) {
        i = 1;
      }
      localParcel1.writeInt(i);
      ko.transact(15, localParcel1, localParcel2, 0);
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
      localParcel1.writeInterfaceToken("com.google.android.gms.maps.model.internal.ICircleDelegate");
      localParcel1.writeFloat(paramFloat);
      ko.transact(13, localParcel1, localParcel2, 0);
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
 * Qualified Name:     com.google.android.gms.maps.model.internal.b.a.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */