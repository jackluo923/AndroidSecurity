package com.google.android.gms.games.internal;

import android.os.IBinder;
import android.os.Parcel;

class IGamesSignInService$Stub$Proxy
  implements IGamesSignInService
{
  private IBinder ko;
  
  /* Error */
  public void a(IGamesSignInCallbacks paramIGamesSignInCallbacks, String paramString1, String paramString2)
  {
    // Byte code:
    //   0: invokestatic 16	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   3: astore 4
    //   5: invokestatic 16	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   8: astore 5
    //   10: aload 4
    //   12: ldc 18
    //   14: invokevirtual 22	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
    //   17: aload_1
    //   18: ifnull +62 -> 80
    //   21: aload_1
    //   22: invokeinterface 28 1 0
    //   27: astore_1
    //   28: aload 4
    //   30: aload_1
    //   31: invokevirtual 32	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
    //   34: aload 4
    //   36: aload_2
    //   37: invokevirtual 35	android/os/Parcel:writeString	(Ljava/lang/String;)V
    //   40: aload 4
    //   42: aload_3
    //   43: invokevirtual 35	android/os/Parcel:writeString	(Ljava/lang/String;)V
    //   46: aload_0
    //   47: getfield 37	com/google/android/gms/games/internal/IGamesSignInService$Stub$Proxy:ko	Landroid/os/IBinder;
    //   50: sipush 5006
    //   53: aload 4
    //   55: aload 5
    //   57: iconst_0
    //   58: invokeinterface 43 5 0
    //   63: pop
    //   64: aload 5
    //   66: invokevirtual 47	android/os/Parcel:readException	()V
    //   69: aload 5
    //   71: invokevirtual 50	android/os/Parcel:recycle	()V
    //   74: aload 4
    //   76: invokevirtual 50	android/os/Parcel:recycle	()V
    //   79: return
    //   80: aconst_null
    //   81: astore_1
    //   82: goto -54 -> 28
    //   85: astore_1
    //   86: aload 5
    //   88: invokevirtual 50	android/os/Parcel:recycle	()V
    //   91: aload 4
    //   93: invokevirtual 50	android/os/Parcel:recycle	()V
    //   96: aload_1
    //   97: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	98	0	this	Proxy
    //   0	98	1	paramIGamesSignInCallbacks	IGamesSignInCallbacks
    //   0	98	2	paramString1	String
    //   0	98	3	paramString2	String
    //   3	89	4	localParcel1	Parcel
    //   8	79	5	localParcel2	Parcel
    // Exception table:
    //   from	to	target	type
    //   10	17	85	finally
    //   21	28	85	finally
    //   28	69	85	finally
  }
  
  /* Error */
  public void a(IGamesSignInCallbacks paramIGamesSignInCallbacks, String paramString1, String paramString2, String paramString3)
  {
    // Byte code:
    //   0: invokestatic 16	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   3: astore 5
    //   5: invokestatic 16	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   8: astore 6
    //   10: aload 5
    //   12: ldc 18
    //   14: invokevirtual 22	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
    //   17: aload_1
    //   18: ifnull +69 -> 87
    //   21: aload_1
    //   22: invokeinterface 28 1 0
    //   27: astore_1
    //   28: aload 5
    //   30: aload_1
    //   31: invokevirtual 32	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
    //   34: aload 5
    //   36: aload_2
    //   37: invokevirtual 35	android/os/Parcel:writeString	(Ljava/lang/String;)V
    //   40: aload 5
    //   42: aload_3
    //   43: invokevirtual 35	android/os/Parcel:writeString	(Ljava/lang/String;)V
    //   46: aload 5
    //   48: aload 4
    //   50: invokevirtual 35	android/os/Parcel:writeString	(Ljava/lang/String;)V
    //   53: aload_0
    //   54: getfield 37	com/google/android/gms/games/internal/IGamesSignInService$Stub$Proxy:ko	Landroid/os/IBinder;
    //   57: sipush 5005
    //   60: aload 5
    //   62: aload 6
    //   64: iconst_0
    //   65: invokeinterface 43 5 0
    //   70: pop
    //   71: aload 6
    //   73: invokevirtual 47	android/os/Parcel:readException	()V
    //   76: aload 6
    //   78: invokevirtual 50	android/os/Parcel:recycle	()V
    //   81: aload 5
    //   83: invokevirtual 50	android/os/Parcel:recycle	()V
    //   86: return
    //   87: aconst_null
    //   88: astore_1
    //   89: goto -61 -> 28
    //   92: astore_1
    //   93: aload 6
    //   95: invokevirtual 50	android/os/Parcel:recycle	()V
    //   98: aload 5
    //   100: invokevirtual 50	android/os/Parcel:recycle	()V
    //   103: aload_1
    //   104: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	105	0	this	Proxy
    //   0	105	1	paramIGamesSignInCallbacks	IGamesSignInCallbacks
    //   0	105	2	paramString1	String
    //   0	105	3	paramString2	String
    //   0	105	4	paramString3	String
    //   3	96	5	localParcel1	Parcel
    //   8	86	6	localParcel2	Parcel
    // Exception table:
    //   from	to	target	type
    //   10	17	92	finally
    //   21	28	92	finally
    //   28	76	92	finally
  }
  
  /* Error */
  public void a(IGamesSignInCallbacks paramIGamesSignInCallbacks, String paramString1, String paramString2, String[] paramArrayOfString)
  {
    // Byte code:
    //   0: invokestatic 16	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   3: astore 5
    //   5: invokestatic 16	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   8: astore 6
    //   10: aload 5
    //   12: ldc 18
    //   14: invokevirtual 22	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
    //   17: aload_1
    //   18: ifnull +69 -> 87
    //   21: aload_1
    //   22: invokeinterface 28 1 0
    //   27: astore_1
    //   28: aload 5
    //   30: aload_1
    //   31: invokevirtual 32	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
    //   34: aload 5
    //   36: aload_2
    //   37: invokevirtual 35	android/os/Parcel:writeString	(Ljava/lang/String;)V
    //   40: aload 5
    //   42: aload_3
    //   43: invokevirtual 35	android/os/Parcel:writeString	(Ljava/lang/String;)V
    //   46: aload 5
    //   48: aload 4
    //   50: invokevirtual 57	android/os/Parcel:writeStringArray	([Ljava/lang/String;)V
    //   53: aload_0
    //   54: getfield 37	com/google/android/gms/games/internal/IGamesSignInService$Stub$Proxy:ko	Landroid/os/IBinder;
    //   57: sipush 5004
    //   60: aload 5
    //   62: aload 6
    //   64: iconst_0
    //   65: invokeinterface 43 5 0
    //   70: pop
    //   71: aload 6
    //   73: invokevirtual 47	android/os/Parcel:readException	()V
    //   76: aload 6
    //   78: invokevirtual 50	android/os/Parcel:recycle	()V
    //   81: aload 5
    //   83: invokevirtual 50	android/os/Parcel:recycle	()V
    //   86: return
    //   87: aconst_null
    //   88: astore_1
    //   89: goto -61 -> 28
    //   92: astore_1
    //   93: aload 6
    //   95: invokevirtual 50	android/os/Parcel:recycle	()V
    //   98: aload 5
    //   100: invokevirtual 50	android/os/Parcel:recycle	()V
    //   103: aload_1
    //   104: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	105	0	this	Proxy
    //   0	105	1	paramIGamesSignInCallbacks	IGamesSignInCallbacks
    //   0	105	2	paramString1	String
    //   0	105	3	paramString2	String
    //   0	105	4	paramArrayOfString	String[]
    //   3	96	5	localParcel1	Parcel
    //   8	86	6	localParcel2	Parcel
    // Exception table:
    //   from	to	target	type
    //   10	17	92	finally
    //   21	28	92	finally
    //   28	76	92	finally
  }
  
  /* Error */
  public void a(IGamesSignInCallbacks paramIGamesSignInCallbacks, String paramString1, String paramString2, String[] paramArrayOfString, String paramString3)
  {
    // Byte code:
    //   0: invokestatic 16	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   3: astore 6
    //   5: invokestatic 16	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   8: astore 7
    //   10: aload 6
    //   12: ldc 18
    //   14: invokevirtual 22	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
    //   17: aload_1
    //   18: ifnull +76 -> 94
    //   21: aload_1
    //   22: invokeinterface 28 1 0
    //   27: astore_1
    //   28: aload 6
    //   30: aload_1
    //   31: invokevirtual 32	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
    //   34: aload 6
    //   36: aload_2
    //   37: invokevirtual 35	android/os/Parcel:writeString	(Ljava/lang/String;)V
    //   40: aload 6
    //   42: aload_3
    //   43: invokevirtual 35	android/os/Parcel:writeString	(Ljava/lang/String;)V
    //   46: aload 6
    //   48: aload 4
    //   50: invokevirtual 57	android/os/Parcel:writeStringArray	([Ljava/lang/String;)V
    //   53: aload 6
    //   55: aload 5
    //   57: invokevirtual 35	android/os/Parcel:writeString	(Ljava/lang/String;)V
    //   60: aload_0
    //   61: getfield 37	com/google/android/gms/games/internal/IGamesSignInService$Stub$Proxy:ko	Landroid/os/IBinder;
    //   64: sipush 5003
    //   67: aload 6
    //   69: aload 7
    //   71: iconst_0
    //   72: invokeinterface 43 5 0
    //   77: pop
    //   78: aload 7
    //   80: invokevirtual 47	android/os/Parcel:readException	()V
    //   83: aload 7
    //   85: invokevirtual 50	android/os/Parcel:recycle	()V
    //   88: aload 6
    //   90: invokevirtual 50	android/os/Parcel:recycle	()V
    //   93: return
    //   94: aconst_null
    //   95: astore_1
    //   96: goto -68 -> 28
    //   99: astore_1
    //   100: aload 7
    //   102: invokevirtual 50	android/os/Parcel:recycle	()V
    //   105: aload 6
    //   107: invokevirtual 50	android/os/Parcel:recycle	()V
    //   110: aload_1
    //   111: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	112	0	this	Proxy
    //   0	112	1	paramIGamesSignInCallbacks	IGamesSignInCallbacks
    //   0	112	2	paramString1	String
    //   0	112	3	paramString2	String
    //   0	112	4	paramArrayOfString	String[]
    //   0	112	5	paramString3	String
    //   3	103	6	localParcel1	Parcel
    //   8	93	7	localParcel2	Parcel
    // Exception table:
    //   from	to	target	type
    //   10	17	99	finally
    //   21	28	99	finally
    //   28	83	99	finally
  }
  
  public IBinder asBinder()
  {
    return ko;
  }
  
  /* Error */
  public void b(IGamesSignInCallbacks paramIGamesSignInCallbacks, String paramString1, String paramString2, String paramString3)
  {
    // Byte code:
    //   0: invokestatic 16	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   3: astore 5
    //   5: invokestatic 16	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   8: astore 6
    //   10: aload 5
    //   12: ldc 18
    //   14: invokevirtual 22	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
    //   17: aload_1
    //   18: ifnull +69 -> 87
    //   21: aload_1
    //   22: invokeinterface 28 1 0
    //   27: astore_1
    //   28: aload 5
    //   30: aload_1
    //   31: invokevirtual 32	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
    //   34: aload 5
    //   36: aload_2
    //   37: invokevirtual 35	android/os/Parcel:writeString	(Ljava/lang/String;)V
    //   40: aload 5
    //   42: aload_3
    //   43: invokevirtual 35	android/os/Parcel:writeString	(Ljava/lang/String;)V
    //   46: aload 5
    //   48: aload 4
    //   50: invokevirtual 35	android/os/Parcel:writeString	(Ljava/lang/String;)V
    //   53: aload_0
    //   54: getfield 37	com/google/android/gms/games/internal/IGamesSignInService$Stub$Proxy:ko	Landroid/os/IBinder;
    //   57: sipush 5007
    //   60: aload 5
    //   62: aload 6
    //   64: iconst_0
    //   65: invokeinterface 43 5 0
    //   70: pop
    //   71: aload 6
    //   73: invokevirtual 47	android/os/Parcel:readException	()V
    //   76: aload 6
    //   78: invokevirtual 50	android/os/Parcel:recycle	()V
    //   81: aload 5
    //   83: invokevirtual 50	android/os/Parcel:recycle	()V
    //   86: return
    //   87: aconst_null
    //   88: astore_1
    //   89: goto -61 -> 28
    //   92: astore_1
    //   93: aload 6
    //   95: invokevirtual 50	android/os/Parcel:recycle	()V
    //   98: aload 5
    //   100: invokevirtual 50	android/os/Parcel:recycle	()V
    //   103: aload_1
    //   104: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	105	0	this	Proxy
    //   0	105	1	paramIGamesSignInCallbacks	IGamesSignInCallbacks
    //   0	105	2	paramString1	String
    //   0	105	3	paramString2	String
    //   0	105	4	paramString3	String
    //   3	96	5	localParcel1	Parcel
    //   8	86	6	localParcel2	Parcel
    // Exception table:
    //   from	to	target	type
    //   10	17	92	finally
    //   21	28	92	finally
    //   28	76	92	finally
  }
  
  /* Error */
  public void b(IGamesSignInCallbacks paramIGamesSignInCallbacks, String paramString1, String paramString2, String[] paramArrayOfString)
  {
    // Byte code:
    //   0: invokestatic 16	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   3: astore 5
    //   5: invokestatic 16	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   8: astore 6
    //   10: aload 5
    //   12: ldc 18
    //   14: invokevirtual 22	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
    //   17: aload_1
    //   18: ifnull +69 -> 87
    //   21: aload_1
    //   22: invokeinterface 28 1 0
    //   27: astore_1
    //   28: aload 5
    //   30: aload_1
    //   31: invokevirtual 32	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
    //   34: aload 5
    //   36: aload_2
    //   37: invokevirtual 35	android/os/Parcel:writeString	(Ljava/lang/String;)V
    //   40: aload 5
    //   42: aload_3
    //   43: invokevirtual 35	android/os/Parcel:writeString	(Ljava/lang/String;)V
    //   46: aload 5
    //   48: aload 4
    //   50: invokevirtual 57	android/os/Parcel:writeStringArray	([Ljava/lang/String;)V
    //   53: aload_0
    //   54: getfield 37	com/google/android/gms/games/internal/IGamesSignInService$Stub$Proxy:ko	Landroid/os/IBinder;
    //   57: sipush 5008
    //   60: aload 5
    //   62: aload 6
    //   64: iconst_0
    //   65: invokeinterface 43 5 0
    //   70: pop
    //   71: aload 6
    //   73: invokevirtual 47	android/os/Parcel:readException	()V
    //   76: aload 6
    //   78: invokevirtual 50	android/os/Parcel:recycle	()V
    //   81: aload 5
    //   83: invokevirtual 50	android/os/Parcel:recycle	()V
    //   86: return
    //   87: aconst_null
    //   88: astore_1
    //   89: goto -61 -> 28
    //   92: astore_1
    //   93: aload 6
    //   95: invokevirtual 50	android/os/Parcel:recycle	()V
    //   98: aload 5
    //   100: invokevirtual 50	android/os/Parcel:recycle	()V
    //   103: aload_1
    //   104: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	105	0	this	Proxy
    //   0	105	1	paramIGamesSignInCallbacks	IGamesSignInCallbacks
    //   0	105	2	paramString1	String
    //   0	105	3	paramString2	String
    //   0	105	4	paramArrayOfString	String[]
    //   3	96	5	localParcel1	Parcel
    //   8	86	6	localParcel2	Parcel
    // Exception table:
    //   from	to	target	type
    //   10	17	92	finally
    //   21	28	92	finally
    //   28	76	92	finally
  }
  
  public String bc(String paramString)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.games.internal.IGamesSignInService");
      localParcel1.writeString(paramString);
      ko.transact(5001, localParcel1, localParcel2, 0);
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
  
  public String bd(String paramString)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.games.internal.IGamesSignInService");
      localParcel1.writeString(paramString);
      ko.transact(5002, localParcel1, localParcel2, 0);
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
  
  public String f(String paramString, boolean paramBoolean)
  {
    int i = 0;
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.games.internal.IGamesSignInService");
      localParcel1.writeString(paramString);
      if (paramBoolean) {
        i = 1;
      }
      localParcel1.writeInt(i);
      ko.transact(5009, localParcel1, localParcel2, 0);
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
  
  public void o(String paramString1, String paramString2)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.games.internal.IGamesSignInService");
      localParcel1.writeString(paramString1);
      localParcel1.writeString(paramString2);
      ko.transact(9001, localParcel1, localParcel2, 0);
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
 * Qualified Name:     com.google.android.gms.games.internal.IGamesSignInService.Stub.Proxy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */