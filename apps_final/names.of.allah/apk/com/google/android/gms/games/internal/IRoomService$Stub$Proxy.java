package com.google.android.gms.games.internal;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.common.data.DataHolder;

class IRoomService$Stub$Proxy
  implements IRoomService
{
  private IBinder ko;
  
  /* Error */
  public void G(boolean paramBoolean)
  {
    // Byte code:
    //   0: iconst_1
    //   1: istore 4
    //   3: invokestatic 16	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   6: astore_2
    //   7: aload_2
    //   8: ldc 18
    //   10: invokevirtual 22	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
    //   13: iload_1
    //   14: ifeq +30 -> 44
    //   17: aload_2
    //   18: iload 4
    //   20: invokevirtual 26	android/os/Parcel:writeInt	(I)V
    //   23: aload_0
    //   24: getfield 28	com/google/android/gms/games/internal/IRoomService$Stub$Proxy:ko	Landroid/os/IBinder;
    //   27: sipush 1008
    //   30: aload_2
    //   31: aconst_null
    //   32: iconst_1
    //   33: invokeinterface 34 5 0
    //   38: pop
    //   39: aload_2
    //   40: invokevirtual 38	android/os/Parcel:recycle	()V
    //   43: return
    //   44: iconst_0
    //   45: istore 4
    //   47: goto -30 -> 17
    //   50: astore_3
    //   51: aload_2
    //   52: invokevirtual 38	android/os/Parcel:recycle	()V
    //   55: aload_3
    //   56: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	57	0	this	Proxy
    //   0	57	1	paramBoolean	boolean
    //   6	46	2	localParcel	Parcel
    //   50	6	3	localObject	Object
    //   1	45	4	i	int
    // Exception table:
    //   from	to	target	type
    //   7	13	50	finally
    //   17	39	50	finally
  }
  
  public void a(IBinder paramIBinder, IRoomServiceCallbacks paramIRoomServiceCallbacks)
  {
    Object localObject = null;
    Parcel localParcel = Parcel.obtain();
    try
    {
      localParcel.writeInterfaceToken("com.google.android.gms.games.internal.IRoomService");
      localParcel.writeStrongBinder(paramIBinder);
      paramIBinder = (IBinder)localObject;
      if (paramIRoomServiceCallbacks != null) {
        paramIBinder = paramIRoomServiceCallbacks.asBinder();
      }
      localParcel.writeStrongBinder(paramIBinder);
      ko.transact(1001, localParcel, null, 1);
      return;
    }
    finally
    {
      localParcel.recycle();
    }
  }
  
  public void a(DataHolder paramDataHolder, boolean paramBoolean)
  {
    int i = 1;
    Parcel localParcel = Parcel.obtain();
    for (;;)
    {
      try
      {
        localParcel.writeInterfaceToken("com.google.android.gms.games.internal.IRoomService");
        if (paramDataHolder != null)
        {
          localParcel.writeInt(1);
          paramDataHolder.writeToParcel(localParcel, 0);
          break label79;
          localParcel.writeInt(i);
          ko.transact(1006, localParcel, null, 1);
        }
        else
        {
          localParcel.writeInt(0);
        }
      }
      finally
      {
        localParcel.recycle();
      }
      label79:
      do
      {
        i = 0;
        break;
      } while (!paramBoolean);
    }
  }
  
  public void a(byte[] paramArrayOfByte, String paramString, int paramInt)
  {
    Parcel localParcel = Parcel.obtain();
    try
    {
      localParcel.writeInterfaceToken("com.google.android.gms.games.internal.IRoomService");
      localParcel.writeByteArray(paramArrayOfByte);
      localParcel.writeString(paramString);
      localParcel.writeInt(paramInt);
      ko.transact(1009, localParcel, null, 1);
      return;
    }
    finally
    {
      localParcel.recycle();
    }
  }
  
  public void a(byte[] paramArrayOfByte, String[] paramArrayOfString)
  {
    Parcel localParcel = Parcel.obtain();
    try
    {
      localParcel.writeInterfaceToken("com.google.android.gms.games.internal.IRoomService");
      localParcel.writeByteArray(paramArrayOfByte);
      localParcel.writeStringArray(paramArrayOfString);
      ko.transact(1010, localParcel, null, 1);
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
  
  public void be(String paramString)
  {
    Parcel localParcel = Parcel.obtain();
    try
    {
      localParcel.writeInterfaceToken("com.google.android.gms.games.internal.IRoomService");
      localParcel.writeString(paramString);
      ko.transact(1013, localParcel, null, 1);
      return;
    }
    finally
    {
      localParcel.recycle();
    }
  }
  
  public void bf(String paramString)
  {
    Parcel localParcel = Parcel.obtain();
    try
    {
      localParcel.writeInterfaceToken("com.google.android.gms.games.internal.IRoomService");
      localParcel.writeString(paramString);
      ko.transact(1014, localParcel, null, 1);
      return;
    }
    finally
    {
      localParcel.recycle();
    }
  }
  
  public void c(String paramString1, String paramString2, String paramString3)
  {
    Parcel localParcel = Parcel.obtain();
    try
    {
      localParcel.writeInterfaceToken("com.google.android.gms.games.internal.IRoomService");
      localParcel.writeString(paramString1);
      localParcel.writeString(paramString2);
      localParcel.writeString(paramString3);
      ko.transact(1004, localParcel, null, 1);
      return;
    }
    finally
    {
      localParcel.recycle();
    }
  }
  
  public void hA()
  {
    Parcel localParcel = Parcel.obtain();
    try
    {
      localParcel.writeInterfaceToken("com.google.android.gms.games.internal.IRoomService");
      ko.transact(1002, localParcel, null, 1);
      return;
    }
    finally
    {
      localParcel.recycle();
    }
  }
  
  public void hB()
  {
    Parcel localParcel = Parcel.obtain();
    try
    {
      localParcel.writeInterfaceToken("com.google.android.gms.games.internal.IRoomService");
      ko.transact(1003, localParcel, null, 1);
      return;
    }
    finally
    {
      localParcel.recycle();
    }
  }
  
  public void hC()
  {
    Parcel localParcel = Parcel.obtain();
    try
    {
      localParcel.writeInterfaceToken("com.google.android.gms.games.internal.IRoomService");
      ko.transact(1005, localParcel, null, 1);
      return;
    }
    finally
    {
      localParcel.recycle();
    }
  }
  
  public void hD()
  {
    Parcel localParcel = Parcel.obtain();
    try
    {
      localParcel.writeInterfaceToken("com.google.android.gms.games.internal.IRoomService");
      ko.transact(1007, localParcel, null, 1);
      return;
    }
    finally
    {
      localParcel.recycle();
    }
  }
  
  public void r(String paramString, int paramInt)
  {
    Parcel localParcel = Parcel.obtain();
    try
    {
      localParcel.writeInterfaceToken("com.google.android.gms.games.internal.IRoomService");
      localParcel.writeString(paramString);
      localParcel.writeInt(paramInt);
      ko.transact(1011, localParcel, null, 1);
      return;
    }
    finally
    {
      localParcel.recycle();
    }
  }
  
  public void s(String paramString, int paramInt)
  {
    Parcel localParcel = Parcel.obtain();
    try
    {
      localParcel.writeInterfaceToken("com.google.android.gms.games.internal.IRoomService");
      localParcel.writeString(paramString);
      localParcel.writeInt(paramInt);
      ko.transact(1012, localParcel, null, 1);
      return;
    }
    finally
    {
      localParcel.recycle();
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.internal.IRoomService.Stub.Proxy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */