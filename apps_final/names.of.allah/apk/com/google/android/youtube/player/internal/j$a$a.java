package com.google.android.youtube.player.internal;

import android.graphics.Bitmap;
import android.os.IBinder;
import android.os.Parcel;

final class j$a$a
  implements j
{
  private IBinder a;
  
  j$a$a(IBinder paramIBinder)
  {
    a = paramIBinder;
  }
  
  public final void a(Bitmap paramBitmap, String paramString, boolean paramBoolean1, boolean paramBoolean2)
  {
    int j = 1;
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    for (;;)
    {
      try
      {
        localParcel1.writeInterfaceToken("com.google.android.youtube.player.internal.IThumbnailLoaderClient");
        if (paramBitmap != null)
        {
          localParcel1.writeInt(1);
          paramBitmap.writeToParcel(localParcel1, 0);
          localParcel1.writeString(paramString);
          if (paramBoolean1)
          {
            i = 1;
            localParcel1.writeInt(i);
            if (!paramBoolean2) {
              break label133;
            }
            i = j;
            localParcel1.writeInt(i);
            a.transact(1, localParcel1, localParcel2, 0);
            localParcel2.readException();
          }
        }
        else
        {
          localParcel1.writeInt(0);
          continue;
        }
        i = 0;
      }
      finally
      {
        localParcel2.recycle();
        localParcel1.recycle();
      }
      continue;
      label133:
      int i = 0;
    }
  }
  
  /* Error */
  public final void a(String paramString, boolean paramBoolean1, boolean paramBoolean2)
  {
    // Byte code:
    //   0: iconst_1
    //   1: istore 7
    //   3: invokestatic 23	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   6: astore 4
    //   8: invokestatic 23	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   11: astore 5
    //   13: aload 4
    //   15: ldc 25
    //   17: invokevirtual 29	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
    //   20: aload 4
    //   22: aload_1
    //   23: invokevirtual 42	android/os/Parcel:writeString	(Ljava/lang/String;)V
    //   26: iload_2
    //   27: ifeq +60 -> 87
    //   30: iconst_1
    //   31: istore 6
    //   33: aload 4
    //   35: iload 6
    //   37: invokevirtual 33	android/os/Parcel:writeInt	(I)V
    //   40: iload_3
    //   41: ifeq +52 -> 93
    //   44: iload 7
    //   46: istore 6
    //   48: aload 4
    //   50: iload 6
    //   52: invokevirtual 33	android/os/Parcel:writeInt	(I)V
    //   55: aload_0
    //   56: getfield 15	com/google/android/youtube/player/internal/j$a$a:a	Landroid/os/IBinder;
    //   59: iconst_2
    //   60: aload 4
    //   62: aload 5
    //   64: iconst_0
    //   65: invokeinterface 48 5 0
    //   70: pop
    //   71: aload 5
    //   73: invokevirtual 51	android/os/Parcel:readException	()V
    //   76: aload 5
    //   78: invokevirtual 54	android/os/Parcel:recycle	()V
    //   81: aload 4
    //   83: invokevirtual 54	android/os/Parcel:recycle	()V
    //   86: return
    //   87: iconst_0
    //   88: istore 6
    //   90: goto -57 -> 33
    //   93: iconst_0
    //   94: istore 6
    //   96: goto -48 -> 48
    //   99: astore_1
    //   100: aload 5
    //   102: invokevirtual 54	android/os/Parcel:recycle	()V
    //   105: aload 4
    //   107: invokevirtual 54	android/os/Parcel:recycle	()V
    //   110: aload_1
    //   111: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	112	0	this	a
    //   0	112	1	paramString	String
    //   0	112	2	paramBoolean1	boolean
    //   0	112	3	paramBoolean2	boolean
    //   6	100	4	localParcel1	Parcel
    //   11	90	5	localParcel2	Parcel
    //   31	64	6	i	int
    //   1	44	7	j	int
    // Exception table:
    //   from	to	target	type
    //   13	26	99	finally
    //   33	40	99	finally
    //   48	76	99	finally
  }
  
  public final IBinder asBinder()
  {
    return a;
  }
}

/* Location:
 * Qualified Name:     com.google.android.youtube.player.internal.j.a.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */