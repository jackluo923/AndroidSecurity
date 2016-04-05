package com.google.android.gms.games.internal;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable.Creator;
import com.google.android.gms.drive.Contents;
import com.google.android.gms.games.internal.multiplayer.ZInvitationCluster;
import com.google.android.gms.games.internal.request.GameRequestCluster;
import com.google.android.gms.games.multiplayer.ParticipantEntity;
import com.google.android.gms.games.multiplayer.realtime.RoomEntity;
import com.google.android.gms.games.snapshot.SnapshotMetadataChange;

class IGamesService$Stub$Proxy
  implements IGamesService
{
  private IBinder ko;
  
  IGamesService$Stub$Proxy(IBinder paramIBinder)
  {
    ko = paramIBinder;
  }
  
  public void E(boolean paramBoolean)
  {
    int i = 0;
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
      if (paramBoolean) {
        i = 1;
      }
      localParcel1.writeInt(i);
      ko.transact(5068, localParcel1, localParcel2, 0);
      localParcel2.readException();
      return;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }
  
  public void F(boolean paramBoolean)
  {
    int i = 0;
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
      if (paramBoolean) {
        i = 1;
      }
      localParcel1.writeInt(i);
      ko.transact(12026, localParcel1, localParcel2, 0);
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
  public int a(IGamesCallbacks paramIGamesCallbacks, byte[] paramArrayOfByte, String paramString1, String paramString2)
  {
    // Byte code:
    //   0: invokestatic 24	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   3: astore 5
    //   5: invokestatic 24	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   8: astore 6
    //   10: aload 5
    //   12: ldc 26
    //   14: invokevirtual 30	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
    //   17: aload_1
    //   18: ifnull +78 -> 96
    //   21: aload_1
    //   22: invokeinterface 55 1 0
    //   27: astore_1
    //   28: aload 5
    //   30: aload_1
    //   31: invokevirtual 58	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
    //   34: aload 5
    //   36: aload_2
    //   37: invokevirtual 62	android/os/Parcel:writeByteArray	([B)V
    //   40: aload 5
    //   42: aload_3
    //   43: invokevirtual 65	android/os/Parcel:writeString	(Ljava/lang/String;)V
    //   46: aload 5
    //   48: aload 4
    //   50: invokevirtual 65	android/os/Parcel:writeString	(Ljava/lang/String;)V
    //   53: aload_0
    //   54: getfield 15	com/google/android/gms/games/internal/IGamesService$Stub$Proxy:ko	Landroid/os/IBinder;
    //   57: sipush 5033
    //   60: aload 5
    //   62: aload 6
    //   64: iconst_0
    //   65: invokeinterface 40 5 0
    //   70: pop
    //   71: aload 6
    //   73: invokevirtual 43	android/os/Parcel:readException	()V
    //   76: aload 6
    //   78: invokevirtual 69	android/os/Parcel:readInt	()I
    //   81: istore 7
    //   83: aload 6
    //   85: invokevirtual 46	android/os/Parcel:recycle	()V
    //   88: aload 5
    //   90: invokevirtual 46	android/os/Parcel:recycle	()V
    //   93: iload 7
    //   95: ireturn
    //   96: aconst_null
    //   97: astore_1
    //   98: goto -70 -> 28
    //   101: astore_1
    //   102: aload 6
    //   104: invokevirtual 46	android/os/Parcel:recycle	()V
    //   107: aload 5
    //   109: invokevirtual 46	android/os/Parcel:recycle	()V
    //   112: aload_1
    //   113: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	114	0	this	Proxy
    //   0	114	1	paramIGamesCallbacks	IGamesCallbacks
    //   0	114	2	paramArrayOfByte	byte[]
    //   0	114	3	paramString1	String
    //   0	114	4	paramString2	String
    //   3	105	5	localParcel1	Parcel
    //   8	95	6	localParcel2	Parcel
    //   81	13	7	i	int
    // Exception table:
    //   from	to	target	type
    //   10	17	101	finally
    //   21	28	101	finally
    //   28	83	101	finally
  }
  
  /* Error */
  public Intent a(int paramInt1, int paramInt2, boolean paramBoolean)
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore 7
    //   3: invokestatic 24	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   6: astore 5
    //   8: invokestatic 24	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   11: astore 6
    //   13: aload 5
    //   15: ldc 26
    //   17: invokevirtual 30	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
    //   20: aload 5
    //   22: iload_1
    //   23: invokevirtual 34	android/os/Parcel:writeInt	(I)V
    //   26: aload 5
    //   28: iload_2
    //   29: invokevirtual 34	android/os/Parcel:writeInt	(I)V
    //   32: iload 7
    //   34: istore_1
    //   35: iload_3
    //   36: ifeq +5 -> 41
    //   39: iconst_1
    //   40: istore_1
    //   41: aload 5
    //   43: iload_1
    //   44: invokevirtual 34	android/os/Parcel:writeInt	(I)V
    //   47: aload_0
    //   48: getfield 15	com/google/android/gms/games/internal/IGamesService$Stub$Proxy:ko	Landroid/os/IBinder;
    //   51: sipush 9008
    //   54: aload 5
    //   56: aload 6
    //   58: iconst_0
    //   59: invokeinterface 40 5 0
    //   64: pop
    //   65: aload 6
    //   67: invokevirtual 43	android/os/Parcel:readException	()V
    //   70: aload 6
    //   72: invokevirtual 69	android/os/Parcel:readInt	()I
    //   75: ifeq +31 -> 106
    //   78: getstatic 76	android/content/Intent:CREATOR	Landroid/os/Parcelable$Creator;
    //   81: aload 6
    //   83: invokeinterface 82 2 0
    //   88: checkcast 72	android/content/Intent
    //   91: astore 4
    //   93: aload 6
    //   95: invokevirtual 46	android/os/Parcel:recycle	()V
    //   98: aload 5
    //   100: invokevirtual 46	android/os/Parcel:recycle	()V
    //   103: aload 4
    //   105: areturn
    //   106: aconst_null
    //   107: astore 4
    //   109: goto -16 -> 93
    //   112: astore 4
    //   114: aload 6
    //   116: invokevirtual 46	android/os/Parcel:recycle	()V
    //   119: aload 5
    //   121: invokevirtual 46	android/os/Parcel:recycle	()V
    //   124: aload 4
    //   126: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	127	0	this	Proxy
    //   0	127	1	paramInt1	int
    //   0	127	2	paramInt2	int
    //   0	127	3	paramBoolean	boolean
    //   91	17	4	localIntent	Intent
    //   112	13	4	localObject	Object
    //   6	114	5	localParcel1	Parcel
    //   11	104	6	localParcel2	Parcel
    //   1	32	7	i	int
    // Exception table:
    //   from	to	target	type
    //   13	32	112	finally
    //   41	93	112	finally
  }
  
  /* Error */
  public Intent a(int paramInt1, byte[] paramArrayOfByte, int paramInt2, String paramString)
  {
    // Byte code:
    //   0: invokestatic 24	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   3: astore 5
    //   5: invokestatic 24	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   8: astore 6
    //   10: aload 5
    //   12: ldc 26
    //   14: invokevirtual 30	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
    //   17: aload 5
    //   19: iload_1
    //   20: invokevirtual 34	android/os/Parcel:writeInt	(I)V
    //   23: aload 5
    //   25: aload_2
    //   26: invokevirtual 62	android/os/Parcel:writeByteArray	([B)V
    //   29: aload 5
    //   31: iload_3
    //   32: invokevirtual 34	android/os/Parcel:writeInt	(I)V
    //   35: aload 5
    //   37: aload 4
    //   39: invokevirtual 65	android/os/Parcel:writeString	(Ljava/lang/String;)V
    //   42: aload_0
    //   43: getfield 15	com/google/android/gms/games/internal/IGamesService$Stub$Proxy:ko	Landroid/os/IBinder;
    //   46: sipush 10012
    //   49: aload 5
    //   51: aload 6
    //   53: iconst_0
    //   54: invokeinterface 40 5 0
    //   59: pop
    //   60: aload 6
    //   62: invokevirtual 43	android/os/Parcel:readException	()V
    //   65: aload 6
    //   67: invokevirtual 69	android/os/Parcel:readInt	()I
    //   70: ifeq +29 -> 99
    //   73: getstatic 76	android/content/Intent:CREATOR	Landroid/os/Parcelable$Creator;
    //   76: aload 6
    //   78: invokeinterface 82 2 0
    //   83: checkcast 72	android/content/Intent
    //   86: astore_2
    //   87: aload 6
    //   89: invokevirtual 46	android/os/Parcel:recycle	()V
    //   92: aload 5
    //   94: invokevirtual 46	android/os/Parcel:recycle	()V
    //   97: aload_2
    //   98: areturn
    //   99: aconst_null
    //   100: astore_2
    //   101: goto -14 -> 87
    //   104: astore_2
    //   105: aload 6
    //   107: invokevirtual 46	android/os/Parcel:recycle	()V
    //   110: aload 5
    //   112: invokevirtual 46	android/os/Parcel:recycle	()V
    //   115: aload_2
    //   116: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	117	0	this	Proxy
    //   0	117	1	paramInt1	int
    //   0	117	2	paramArrayOfByte	byte[]
    //   0	117	3	paramInt2	int
    //   0	117	4	paramString	String
    //   3	108	5	localParcel1	Parcel
    //   8	98	6	localParcel2	Parcel
    // Exception table:
    //   from	to	target	type
    //   10	87	104	finally
  }
  
  public Intent a(ZInvitationCluster paramZInvitationCluster, String paramString1, String paramString2)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    for (;;)
    {
      try
      {
        localParcel1.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
        if (paramZInvitationCluster != null)
        {
          localParcel1.writeInt(1);
          paramZInvitationCluster.writeToParcel(localParcel1, 0);
          localParcel1.writeString(paramString1);
          localParcel1.writeString(paramString2);
          ko.transact(10021, localParcel1, localParcel2, 0);
          localParcel2.readException();
          if (localParcel2.readInt() != 0)
          {
            paramZInvitationCluster = (Intent)Intent.CREATOR.createFromParcel(localParcel2);
            return paramZInvitationCluster;
          }
        }
        else
        {
          localParcel1.writeInt(0);
          continue;
        }
        paramZInvitationCluster = null;
      }
      finally
      {
        localParcel2.recycle();
        localParcel1.recycle();
      }
    }
  }
  
  public Intent a(GameRequestCluster paramGameRequestCluster, String paramString)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    for (;;)
    {
      try
      {
        localParcel1.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
        if (paramGameRequestCluster != null)
        {
          localParcel1.writeInt(1);
          paramGameRequestCluster.writeToParcel(localParcel1, 0);
          localParcel1.writeString(paramString);
          ko.transact(10022, localParcel1, localParcel2, 0);
          localParcel2.readException();
          if (localParcel2.readInt() != 0)
          {
            paramGameRequestCluster = (Intent)Intent.CREATOR.createFromParcel(localParcel2);
            return paramGameRequestCluster;
          }
        }
        else
        {
          localParcel1.writeInt(0);
          continue;
        }
        paramGameRequestCluster = null;
      }
      finally
      {
        localParcel2.recycle();
        localParcel1.recycle();
      }
    }
  }
  
  public Intent a(RoomEntity paramRoomEntity, int paramInt)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    for (;;)
    {
      try
      {
        localParcel1.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
        if (paramRoomEntity != null)
        {
          localParcel1.writeInt(1);
          paramRoomEntity.writeToParcel(localParcel1, 0);
          localParcel1.writeInt(paramInt);
          ko.transact(9011, localParcel1, localParcel2, 0);
          localParcel2.readException();
          if (localParcel2.readInt() != 0)
          {
            paramRoomEntity = (Intent)Intent.CREATOR.createFromParcel(localParcel2);
            return paramRoomEntity;
          }
        }
        else
        {
          localParcel1.writeInt(0);
          continue;
        }
        paramRoomEntity = null;
      }
      finally
      {
        localParcel2.recycle();
        localParcel1.recycle();
      }
    }
  }
  
  /* Error */
  public Intent a(String paramString, boolean paramBoolean1, boolean paramBoolean2, int paramInt)
  {
    // Byte code:
    //   0: iconst_1
    //   1: istore 8
    //   3: invokestatic 24	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   6: astore 5
    //   8: invokestatic 24	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   11: astore 6
    //   13: aload 5
    //   15: ldc 26
    //   17: invokevirtual 30	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
    //   20: aload 5
    //   22: aload_1
    //   23: invokevirtual 65	android/os/Parcel:writeString	(Ljava/lang/String;)V
    //   26: iload_2
    //   27: ifeq +92 -> 119
    //   30: iconst_1
    //   31: istore 7
    //   33: aload 5
    //   35: iload 7
    //   37: invokevirtual 34	android/os/Parcel:writeInt	(I)V
    //   40: iload_3
    //   41: ifeq +84 -> 125
    //   44: iload 8
    //   46: istore 7
    //   48: aload 5
    //   50: iload 7
    //   52: invokevirtual 34	android/os/Parcel:writeInt	(I)V
    //   55: aload 5
    //   57: iload 4
    //   59: invokevirtual 34	android/os/Parcel:writeInt	(I)V
    //   62: aload_0
    //   63: getfield 15	com/google/android/gms/games/internal/IGamesService$Stub$Proxy:ko	Landroid/os/IBinder;
    //   66: sipush 12001
    //   69: aload 5
    //   71: aload 6
    //   73: iconst_0
    //   74: invokeinterface 40 5 0
    //   79: pop
    //   80: aload 6
    //   82: invokevirtual 43	android/os/Parcel:readException	()V
    //   85: aload 6
    //   87: invokevirtual 69	android/os/Parcel:readInt	()I
    //   90: ifeq +41 -> 131
    //   93: getstatic 76	android/content/Intent:CREATOR	Landroid/os/Parcelable$Creator;
    //   96: aload 6
    //   98: invokeinterface 82 2 0
    //   103: checkcast 72	android/content/Intent
    //   106: astore_1
    //   107: aload 6
    //   109: invokevirtual 46	android/os/Parcel:recycle	()V
    //   112: aload 5
    //   114: invokevirtual 46	android/os/Parcel:recycle	()V
    //   117: aload_1
    //   118: areturn
    //   119: iconst_0
    //   120: istore 7
    //   122: goto -89 -> 33
    //   125: iconst_0
    //   126: istore 7
    //   128: goto -80 -> 48
    //   131: aconst_null
    //   132: astore_1
    //   133: goto -26 -> 107
    //   136: astore_1
    //   137: aload 6
    //   139: invokevirtual 46	android/os/Parcel:recycle	()V
    //   142: aload 5
    //   144: invokevirtual 46	android/os/Parcel:recycle	()V
    //   147: aload_1
    //   148: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	149	0	this	Proxy
    //   0	149	1	paramString	String
    //   0	149	2	paramBoolean1	boolean
    //   0	149	3	paramBoolean2	boolean
    //   0	149	4	paramInt	int
    //   6	137	5	localParcel1	Parcel
    //   11	127	6	localParcel2	Parcel
    //   31	96	7	i	int
    //   1	44	8	j	int
    // Exception table:
    //   from	to	target	type
    //   13	26	136	finally
    //   33	40	136	finally
    //   48	107	136	finally
  }
  
  /* Error */
  public Intent a(int[] paramArrayOfInt)
  {
    // Byte code:
    //   0: invokestatic 24	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   3: astore_2
    //   4: invokestatic 24	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   7: astore_3
    //   8: aload_2
    //   9: ldc 26
    //   11: invokevirtual 30	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
    //   14: aload_2
    //   15: aload_1
    //   16: invokevirtual 104	android/os/Parcel:writeIntArray	([I)V
    //   19: aload_0
    //   20: getfield 15	com/google/android/gms/games/internal/IGamesService$Stub$Proxy:ko	Landroid/os/IBinder;
    //   23: sipush 12030
    //   26: aload_2
    //   27: aload_3
    //   28: iconst_0
    //   29: invokeinterface 40 5 0
    //   34: pop
    //   35: aload_3
    //   36: invokevirtual 43	android/os/Parcel:readException	()V
    //   39: aload_3
    //   40: invokevirtual 69	android/os/Parcel:readInt	()I
    //   43: ifeq +26 -> 69
    //   46: getstatic 76	android/content/Intent:CREATOR	Landroid/os/Parcelable$Creator;
    //   49: aload_3
    //   50: invokeinterface 82 2 0
    //   55: checkcast 72	android/content/Intent
    //   58: astore_1
    //   59: aload_3
    //   60: invokevirtual 46	android/os/Parcel:recycle	()V
    //   63: aload_2
    //   64: invokevirtual 46	android/os/Parcel:recycle	()V
    //   67: aload_1
    //   68: areturn
    //   69: aconst_null
    //   70: astore_1
    //   71: goto -12 -> 59
    //   74: astore_1
    //   75: aload_3
    //   76: invokevirtual 46	android/os/Parcel:recycle	()V
    //   79: aload_2
    //   80: invokevirtual 46	android/os/Parcel:recycle	()V
    //   83: aload_1
    //   84: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	85	0	this	Proxy
    //   0	85	1	paramArrayOfInt	int[]
    //   3	77	2	localParcel1	Parcel
    //   7	69	3	localParcel2	Parcel
    // Exception table:
    //   from	to	target	type
    //   8	59	74	finally
  }
  
  public Intent a(ParticipantEntity[] paramArrayOfParticipantEntity, String paramString1, String paramString2, Uri paramUri1, Uri paramUri2)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    for (;;)
    {
      try
      {
        localParcel1.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
        localParcel1.writeTypedArray(paramArrayOfParticipantEntity, 0);
        localParcel1.writeString(paramString1);
        localParcel1.writeString(paramString2);
        if (paramUri1 != null)
        {
          localParcel1.writeInt(1);
          paramUri1.writeToParcel(localParcel1, 0);
          if (paramUri2 != null)
          {
            localParcel1.writeInt(1);
            paramUri2.writeToParcel(localParcel1, 0);
            ko.transact(9031, localParcel1, localParcel2, 0);
            localParcel2.readException();
            if (localParcel2.readInt() == 0) {
              break label162;
            }
            paramArrayOfParticipantEntity = (Intent)Intent.CREATOR.createFromParcel(localParcel2);
            return paramArrayOfParticipantEntity;
          }
        }
        else
        {
          localParcel1.writeInt(0);
          continue;
        }
        localParcel1.writeInt(0);
      }
      finally
      {
        localParcel2.recycle();
        localParcel1.recycle();
      }
      continue;
      label162:
      paramArrayOfParticipantEntity = null;
    }
  }
  
  public void a(long paramLong, String paramString)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
      localParcel1.writeLong(paramLong);
      localParcel1.writeString(paramString);
      ko.transact(8019, localParcel1, localParcel2, 0);
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
  public void a(IBinder paramIBinder, Bundle paramBundle)
  {
    // Byte code:
    //   0: invokestatic 24	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   3: astore_3
    //   4: invokestatic 24	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   7: astore 4
    //   9: aload_3
    //   10: ldc 26
    //   12: invokevirtual 30	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
    //   15: aload_3
    //   16: aload_1
    //   17: invokevirtual 58	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
    //   20: aload_2
    //   21: ifnull +46 -> 67
    //   24: aload_3
    //   25: iconst_1
    //   26: invokevirtual 34	android/os/Parcel:writeInt	(I)V
    //   29: aload_2
    //   30: aload_3
    //   31: iconst_0
    //   32: invokevirtual 121	android/os/Bundle:writeToParcel	(Landroid/os/Parcel;I)V
    //   35: aload_0
    //   36: getfield 15	com/google/android/gms/games/internal/IGamesService$Stub$Proxy:ko	Landroid/os/IBinder;
    //   39: sipush 5005
    //   42: aload_3
    //   43: aload 4
    //   45: iconst_0
    //   46: invokeinterface 40 5 0
    //   51: pop
    //   52: aload 4
    //   54: invokevirtual 43	android/os/Parcel:readException	()V
    //   57: aload 4
    //   59: invokevirtual 46	android/os/Parcel:recycle	()V
    //   62: aload_3
    //   63: invokevirtual 46	android/os/Parcel:recycle	()V
    //   66: return
    //   67: aload_3
    //   68: iconst_0
    //   69: invokevirtual 34	android/os/Parcel:writeInt	(I)V
    //   72: goto -37 -> 35
    //   75: astore_1
    //   76: aload 4
    //   78: invokevirtual 46	android/os/Parcel:recycle	()V
    //   81: aload_3
    //   82: invokevirtual 46	android/os/Parcel:recycle	()V
    //   85: aload_1
    //   86: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	87	0	this	Proxy
    //   0	87	1	paramIBinder	IBinder
    //   0	87	2	paramBundle	Bundle
    //   3	79	3	localParcel1	Parcel
    //   7	70	4	localParcel2	Parcel
    // Exception table:
    //   from	to	target	type
    //   9	20	75	finally
    //   24	35	75	finally
    //   35	57	75	finally
    //   67	72	75	finally
  }
  
  /* Error */
  public void a(Contents paramContents)
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
    //   18: aload_2
    //   19: iconst_1
    //   20: invokevirtual 34	android/os/Parcel:writeInt	(I)V
    //   23: aload_1
    //   24: aload_2
    //   25: iconst_0
    //   26: invokevirtual 125	com/google/android/gms/drive/Contents:writeToParcel	(Landroid/os/Parcel;I)V
    //   29: aload_0
    //   30: getfield 15	com/google/android/gms/games/internal/IGamesService$Stub$Proxy:ko	Landroid/os/IBinder;
    //   33: sipush 12019
    //   36: aload_2
    //   37: aload_3
    //   38: iconst_0
    //   39: invokeinterface 40 5 0
    //   44: pop
    //   45: aload_3
    //   46: invokevirtual 43	android/os/Parcel:readException	()V
    //   49: aload_3
    //   50: invokevirtual 46	android/os/Parcel:recycle	()V
    //   53: aload_2
    //   54: invokevirtual 46	android/os/Parcel:recycle	()V
    //   57: return
    //   58: aload_2
    //   59: iconst_0
    //   60: invokevirtual 34	android/os/Parcel:writeInt	(I)V
    //   63: goto -34 -> 29
    //   66: astore_1
    //   67: aload_3
    //   68: invokevirtual 46	android/os/Parcel:recycle	()V
    //   71: aload_2
    //   72: invokevirtual 46	android/os/Parcel:recycle	()V
    //   75: aload_1
    //   76: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	77	0	this	Proxy
    //   0	77	1	paramContents	Contents
    //   3	69	2	localParcel1	Parcel
    //   7	61	3	localParcel2	Parcel
    // Exception table:
    //   from	to	target	type
    //   8	14	66	finally
    //   18	29	66	finally
    //   29	49	66	finally
    //   58	63	66	finally
  }
  
  /* Error */
  public void a(IGamesCallbacks paramIGamesCallbacks)
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
    //   15: ifnull +44 -> 59
    //   18: aload_1
    //   19: invokeinterface 55 1 0
    //   24: astore_1
    //   25: aload_2
    //   26: aload_1
    //   27: invokevirtual 58	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
    //   30: aload_0
    //   31: getfield 15	com/google/android/gms/games/internal/IGamesService$Stub$Proxy:ko	Landroid/os/IBinder;
    //   34: sipush 5002
    //   37: aload_2
    //   38: aload_3
    //   39: iconst_0
    //   40: invokeinterface 40 5 0
    //   45: pop
    //   46: aload_3
    //   47: invokevirtual 43	android/os/Parcel:readException	()V
    //   50: aload_3
    //   51: invokevirtual 46	android/os/Parcel:recycle	()V
    //   54: aload_2
    //   55: invokevirtual 46	android/os/Parcel:recycle	()V
    //   58: return
    //   59: aconst_null
    //   60: astore_1
    //   61: goto -36 -> 25
    //   64: astore_1
    //   65: aload_3
    //   66: invokevirtual 46	android/os/Parcel:recycle	()V
    //   69: aload_2
    //   70: invokevirtual 46	android/os/Parcel:recycle	()V
    //   73: aload_1
    //   74: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	75	0	this	Proxy
    //   0	75	1	paramIGamesCallbacks	IGamesCallbacks
    //   3	67	2	localParcel1	Parcel
    //   7	59	3	localParcel2	Parcel
    // Exception table:
    //   from	to	target	type
    //   8	14	64	finally
    //   18	25	64	finally
    //   25	50	64	finally
  }
  
  /* Error */
  public void a(IGamesCallbacks paramIGamesCallbacks, int paramInt)
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
    //   16: ifnull +52 -> 68
    //   19: aload_1
    //   20: invokeinterface 55 1 0
    //   25: astore_1
    //   26: aload_3
    //   27: aload_1
    //   28: invokevirtual 58	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
    //   31: aload_3
    //   32: iload_2
    //   33: invokevirtual 34	android/os/Parcel:writeInt	(I)V
    //   36: aload_0
    //   37: getfield 15	com/google/android/gms/games/internal/IGamesService$Stub$Proxy:ko	Landroid/os/IBinder;
    //   40: sipush 10016
    //   43: aload_3
    //   44: aload 4
    //   46: iconst_0
    //   47: invokeinterface 40 5 0
    //   52: pop
    //   53: aload 4
    //   55: invokevirtual 43	android/os/Parcel:readException	()V
    //   58: aload 4
    //   60: invokevirtual 46	android/os/Parcel:recycle	()V
    //   63: aload_3
    //   64: invokevirtual 46	android/os/Parcel:recycle	()V
    //   67: return
    //   68: aconst_null
    //   69: astore_1
    //   70: goto -44 -> 26
    //   73: astore_1
    //   74: aload 4
    //   76: invokevirtual 46	android/os/Parcel:recycle	()V
    //   79: aload_3
    //   80: invokevirtual 46	android/os/Parcel:recycle	()V
    //   83: aload_1
    //   84: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	85	0	this	Proxy
    //   0	85	1	paramIGamesCallbacks	IGamesCallbacks
    //   0	85	2	paramInt	int
    //   3	77	3	localParcel1	Parcel
    //   7	68	4	localParcel2	Parcel
    // Exception table:
    //   from	to	target	type
    //   9	15	73	finally
    //   19	26	73	finally
    //   26	58	73	finally
  }
  
  /* Error */
  public void a(IGamesCallbacks paramIGamesCallbacks, int paramInt1, int paramInt2, int paramInt3)
  {
    // Byte code:
    //   0: invokestatic 24	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   3: astore 5
    //   5: invokestatic 24	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   8: astore 6
    //   10: aload 5
    //   12: ldc 26
    //   14: invokevirtual 30	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
    //   17: aload_1
    //   18: ifnull +69 -> 87
    //   21: aload_1
    //   22: invokeinterface 55 1 0
    //   27: astore_1
    //   28: aload 5
    //   30: aload_1
    //   31: invokevirtual 58	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
    //   34: aload 5
    //   36: iload_2
    //   37: invokevirtual 34	android/os/Parcel:writeInt	(I)V
    //   40: aload 5
    //   42: iload_3
    //   43: invokevirtual 34	android/os/Parcel:writeInt	(I)V
    //   46: aload 5
    //   48: iload 4
    //   50: invokevirtual 34	android/os/Parcel:writeInt	(I)V
    //   53: aload_0
    //   54: getfield 15	com/google/android/gms/games/internal/IGamesService$Stub$Proxy:ko	Landroid/os/IBinder;
    //   57: sipush 10009
    //   60: aload 5
    //   62: aload 6
    //   64: iconst_0
    //   65: invokeinterface 40 5 0
    //   70: pop
    //   71: aload 6
    //   73: invokevirtual 43	android/os/Parcel:readException	()V
    //   76: aload 6
    //   78: invokevirtual 46	android/os/Parcel:recycle	()V
    //   81: aload 5
    //   83: invokevirtual 46	android/os/Parcel:recycle	()V
    //   86: return
    //   87: aconst_null
    //   88: astore_1
    //   89: goto -61 -> 28
    //   92: astore_1
    //   93: aload 6
    //   95: invokevirtual 46	android/os/Parcel:recycle	()V
    //   98: aload 5
    //   100: invokevirtual 46	android/os/Parcel:recycle	()V
    //   103: aload_1
    //   104: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	105	0	this	Proxy
    //   0	105	1	paramIGamesCallbacks	IGamesCallbacks
    //   0	105	2	paramInt1	int
    //   0	105	3	paramInt2	int
    //   0	105	4	paramInt3	int
    //   3	96	5	localParcel1	Parcel
    //   8	86	6	localParcel2	Parcel
    // Exception table:
    //   from	to	target	type
    //   10	17	92	finally
    //   21	28	92	finally
    //   28	76	92	finally
  }
  
  /* Error */
  public void a(IGamesCallbacks paramIGamesCallbacks, int paramInt1, int paramInt2, boolean paramBoolean1, boolean paramBoolean2)
  {
    // Byte code:
    //   0: iconst_1
    //   1: istore 8
    //   3: invokestatic 24	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   6: astore 6
    //   8: invokestatic 24	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   11: astore 7
    //   13: aload 6
    //   15: ldc 26
    //   17: invokevirtual 30	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
    //   20: aload_1
    //   21: ifnull +89 -> 110
    //   24: aload_1
    //   25: invokeinterface 55 1 0
    //   30: astore_1
    //   31: aload 6
    //   33: aload_1
    //   34: invokevirtual 58	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
    //   37: aload 6
    //   39: iload_2
    //   40: invokevirtual 34	android/os/Parcel:writeInt	(I)V
    //   43: aload 6
    //   45: iload_3
    //   46: invokevirtual 34	android/os/Parcel:writeInt	(I)V
    //   49: iload 4
    //   51: ifeq +64 -> 115
    //   54: iconst_1
    //   55: istore_2
    //   56: aload 6
    //   58: iload_2
    //   59: invokevirtual 34	android/os/Parcel:writeInt	(I)V
    //   62: iload 5
    //   64: ifeq +56 -> 120
    //   67: iload 8
    //   69: istore_2
    //   70: aload 6
    //   72: iload_2
    //   73: invokevirtual 34	android/os/Parcel:writeInt	(I)V
    //   76: aload_0
    //   77: getfield 15	com/google/android/gms/games/internal/IGamesService$Stub$Proxy:ko	Landroid/os/IBinder;
    //   80: sipush 5044
    //   83: aload 6
    //   85: aload 7
    //   87: iconst_0
    //   88: invokeinterface 40 5 0
    //   93: pop
    //   94: aload 7
    //   96: invokevirtual 43	android/os/Parcel:readException	()V
    //   99: aload 7
    //   101: invokevirtual 46	android/os/Parcel:recycle	()V
    //   104: aload 6
    //   106: invokevirtual 46	android/os/Parcel:recycle	()V
    //   109: return
    //   110: aconst_null
    //   111: astore_1
    //   112: goto -81 -> 31
    //   115: iconst_0
    //   116: istore_2
    //   117: goto -61 -> 56
    //   120: iconst_0
    //   121: istore_2
    //   122: goto -52 -> 70
    //   125: astore_1
    //   126: aload 7
    //   128: invokevirtual 46	android/os/Parcel:recycle	()V
    //   131: aload 6
    //   133: invokevirtual 46	android/os/Parcel:recycle	()V
    //   136: aload_1
    //   137: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	138	0	this	Proxy
    //   0	138	1	paramIGamesCallbacks	IGamesCallbacks
    //   0	138	2	paramInt1	int
    //   0	138	3	paramInt2	int
    //   0	138	4	paramBoolean1	boolean
    //   0	138	5	paramBoolean2	boolean
    //   6	126	6	localParcel1	Parcel
    //   11	116	7	localParcel2	Parcel
    //   1	67	8	i	int
    // Exception table:
    //   from	to	target	type
    //   13	20	125	finally
    //   24	31	125	finally
    //   31	49	125	finally
    //   56	62	125	finally
    //   70	99	125	finally
  }
  
  /* Error */
  public void a(IGamesCallbacks paramIGamesCallbacks, int paramInt1, int paramInt2, String[] paramArrayOfString, Bundle paramBundle)
  {
    // Byte code:
    //   0: invokestatic 24	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   3: astore 6
    //   5: invokestatic 24	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   8: astore 7
    //   10: aload 6
    //   12: ldc 26
    //   14: invokevirtual 30	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
    //   17: aload_1
    //   18: ifnull +88 -> 106
    //   21: aload_1
    //   22: invokeinterface 55 1 0
    //   27: astore_1
    //   28: aload 6
    //   30: aload_1
    //   31: invokevirtual 58	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
    //   34: aload 6
    //   36: iload_2
    //   37: invokevirtual 34	android/os/Parcel:writeInt	(I)V
    //   40: aload 6
    //   42: iload_3
    //   43: invokevirtual 34	android/os/Parcel:writeInt	(I)V
    //   46: aload 6
    //   48: aload 4
    //   50: invokevirtual 134	android/os/Parcel:writeStringArray	([Ljava/lang/String;)V
    //   53: aload 5
    //   55: ifnull +56 -> 111
    //   58: aload 6
    //   60: iconst_1
    //   61: invokevirtual 34	android/os/Parcel:writeInt	(I)V
    //   64: aload 5
    //   66: aload 6
    //   68: iconst_0
    //   69: invokevirtual 121	android/os/Bundle:writeToParcel	(Landroid/os/Parcel;I)V
    //   72: aload_0
    //   73: getfield 15	com/google/android/gms/games/internal/IGamesService$Stub$Proxy:ko	Landroid/os/IBinder;
    //   76: sipush 8004
    //   79: aload 6
    //   81: aload 7
    //   83: iconst_0
    //   84: invokeinterface 40 5 0
    //   89: pop
    //   90: aload 7
    //   92: invokevirtual 43	android/os/Parcel:readException	()V
    //   95: aload 7
    //   97: invokevirtual 46	android/os/Parcel:recycle	()V
    //   100: aload 6
    //   102: invokevirtual 46	android/os/Parcel:recycle	()V
    //   105: return
    //   106: aconst_null
    //   107: astore_1
    //   108: goto -80 -> 28
    //   111: aload 6
    //   113: iconst_0
    //   114: invokevirtual 34	android/os/Parcel:writeInt	(I)V
    //   117: goto -45 -> 72
    //   120: astore_1
    //   121: aload 7
    //   123: invokevirtual 46	android/os/Parcel:recycle	()V
    //   126: aload 6
    //   128: invokevirtual 46	android/os/Parcel:recycle	()V
    //   131: aload_1
    //   132: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	133	0	this	Proxy
    //   0	133	1	paramIGamesCallbacks	IGamesCallbacks
    //   0	133	2	paramInt1	int
    //   0	133	3	paramInt2	int
    //   0	133	4	paramArrayOfString	String[]
    //   0	133	5	paramBundle	Bundle
    //   3	124	6	localParcel1	Parcel
    //   8	114	7	localParcel2	Parcel
    // Exception table:
    //   from	to	target	type
    //   10	17	120	finally
    //   21	28	120	finally
    //   28	53	120	finally
    //   58	72	120	finally
    //   72	95	120	finally
    //   111	117	120	finally
  }
  
  /* Error */
  public void a(IGamesCallbacks paramIGamesCallbacks, int paramInt, boolean paramBoolean1, boolean paramBoolean2)
  {
    // Byte code:
    //   0: iconst_1
    //   1: istore 7
    //   3: invokestatic 24	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   6: astore 5
    //   8: invokestatic 24	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   11: astore 6
    //   13: aload 5
    //   15: ldc 26
    //   17: invokevirtual 30	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
    //   20: aload_1
    //   21: ifnull +82 -> 103
    //   24: aload_1
    //   25: invokeinterface 55 1 0
    //   30: astore_1
    //   31: aload 5
    //   33: aload_1
    //   34: invokevirtual 58	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
    //   37: aload 5
    //   39: iload_2
    //   40: invokevirtual 34	android/os/Parcel:writeInt	(I)V
    //   43: iload_3
    //   44: ifeq +64 -> 108
    //   47: iconst_1
    //   48: istore_2
    //   49: aload 5
    //   51: iload_2
    //   52: invokevirtual 34	android/os/Parcel:writeInt	(I)V
    //   55: iload 4
    //   57: ifeq +56 -> 113
    //   60: iload 7
    //   62: istore_2
    //   63: aload 5
    //   65: iload_2
    //   66: invokevirtual 34	android/os/Parcel:writeInt	(I)V
    //   69: aload_0
    //   70: getfield 15	com/google/android/gms/games/internal/IGamesService$Stub$Proxy:ko	Landroid/os/IBinder;
    //   73: sipush 5015
    //   76: aload 5
    //   78: aload 6
    //   80: iconst_0
    //   81: invokeinterface 40 5 0
    //   86: pop
    //   87: aload 6
    //   89: invokevirtual 43	android/os/Parcel:readException	()V
    //   92: aload 6
    //   94: invokevirtual 46	android/os/Parcel:recycle	()V
    //   97: aload 5
    //   99: invokevirtual 46	android/os/Parcel:recycle	()V
    //   102: return
    //   103: aconst_null
    //   104: astore_1
    //   105: goto -74 -> 31
    //   108: iconst_0
    //   109: istore_2
    //   110: goto -61 -> 49
    //   113: iconst_0
    //   114: istore_2
    //   115: goto -52 -> 63
    //   118: astore_1
    //   119: aload 6
    //   121: invokevirtual 46	android/os/Parcel:recycle	()V
    //   124: aload 5
    //   126: invokevirtual 46	android/os/Parcel:recycle	()V
    //   129: aload_1
    //   130: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	131	0	this	Proxy
    //   0	131	1	paramIGamesCallbacks	IGamesCallbacks
    //   0	131	2	paramInt	int
    //   0	131	3	paramBoolean1	boolean
    //   0	131	4	paramBoolean2	boolean
    //   6	119	5	localParcel1	Parcel
    //   11	109	6	localParcel2	Parcel
    //   1	60	7	i	int
    // Exception table:
    //   from	to	target	type
    //   13	20	118	finally
    //   24	31	118	finally
    //   31	43	118	finally
    //   49	55	118	finally
    //   63	92	118	finally
  }
  
  /* Error */
  public void a(IGamesCallbacks paramIGamesCallbacks, int paramInt, int[] paramArrayOfInt)
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
    //   18: ifnull +62 -> 80
    //   21: aload_1
    //   22: invokeinterface 55 1 0
    //   27: astore_1
    //   28: aload 4
    //   30: aload_1
    //   31: invokevirtual 58	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
    //   34: aload 4
    //   36: iload_2
    //   37: invokevirtual 34	android/os/Parcel:writeInt	(I)V
    //   40: aload 4
    //   42: aload_3
    //   43: invokevirtual 104	android/os/Parcel:writeIntArray	([I)V
    //   46: aload_0
    //   47: getfield 15	com/google/android/gms/games/internal/IGamesService$Stub$Proxy:ko	Landroid/os/IBinder;
    //   50: sipush 10018
    //   53: aload 4
    //   55: aload 5
    //   57: iconst_0
    //   58: invokeinterface 40 5 0
    //   63: pop
    //   64: aload 5
    //   66: invokevirtual 43	android/os/Parcel:readException	()V
    //   69: aload 5
    //   71: invokevirtual 46	android/os/Parcel:recycle	()V
    //   74: aload 4
    //   76: invokevirtual 46	android/os/Parcel:recycle	()V
    //   79: return
    //   80: aconst_null
    //   81: astore_1
    //   82: goto -54 -> 28
    //   85: astore_1
    //   86: aload 5
    //   88: invokevirtual 46	android/os/Parcel:recycle	()V
    //   91: aload 4
    //   93: invokevirtual 46	android/os/Parcel:recycle	()V
    //   96: aload_1
    //   97: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	98	0	this	Proxy
    //   0	98	1	paramIGamesCallbacks	IGamesCallbacks
    //   0	98	2	paramInt	int
    //   0	98	3	paramArrayOfInt	int[]
    //   3	89	4	localParcel1	Parcel
    //   8	79	5	localParcel2	Parcel
    // Exception table:
    //   from	to	target	type
    //   10	17	85	finally
    //   21	28	85	finally
    //   28	69	85	finally
  }
  
  /* Error */
  public void a(IGamesCallbacks paramIGamesCallbacks, long paramLong)
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
    //   18: ifnull +56 -> 74
    //   21: aload_1
    //   22: invokeinterface 55 1 0
    //   27: astore_1
    //   28: aload 4
    //   30: aload_1
    //   31: invokevirtual 58	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
    //   34: aload 4
    //   36: lload_2
    //   37: invokevirtual 117	android/os/Parcel:writeLong	(J)V
    //   40: aload_0
    //   41: getfield 15	com/google/android/gms/games/internal/IGamesService$Stub$Proxy:ko	Landroid/os/IBinder;
    //   44: sipush 5058
    //   47: aload 4
    //   49: aload 5
    //   51: iconst_0
    //   52: invokeinterface 40 5 0
    //   57: pop
    //   58: aload 5
    //   60: invokevirtual 43	android/os/Parcel:readException	()V
    //   63: aload 5
    //   65: invokevirtual 46	android/os/Parcel:recycle	()V
    //   68: aload 4
    //   70: invokevirtual 46	android/os/Parcel:recycle	()V
    //   73: return
    //   74: aconst_null
    //   75: astore_1
    //   76: goto -48 -> 28
    //   79: astore_1
    //   80: aload 5
    //   82: invokevirtual 46	android/os/Parcel:recycle	()V
    //   85: aload 4
    //   87: invokevirtual 46	android/os/Parcel:recycle	()V
    //   90: aload_1
    //   91: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	92	0	this	Proxy
    //   0	92	1	paramIGamesCallbacks	IGamesCallbacks
    //   0	92	2	paramLong	long
    //   3	83	4	localParcel1	Parcel
    //   8	73	5	localParcel2	Parcel
    // Exception table:
    //   from	to	target	type
    //   10	17	79	finally
    //   21	28	79	finally
    //   28	63	79	finally
  }
  
  /* Error */
  public void a(IGamesCallbacks paramIGamesCallbacks, long paramLong, String paramString)
  {
    // Byte code:
    //   0: invokestatic 24	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   3: astore 5
    //   5: invokestatic 24	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   8: astore 6
    //   10: aload 5
    //   12: ldc 26
    //   14: invokevirtual 30	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
    //   17: aload_1
    //   18: ifnull +63 -> 81
    //   21: aload_1
    //   22: invokeinterface 55 1 0
    //   27: astore_1
    //   28: aload 5
    //   30: aload_1
    //   31: invokevirtual 58	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
    //   34: aload 5
    //   36: lload_2
    //   37: invokevirtual 117	android/os/Parcel:writeLong	(J)V
    //   40: aload 5
    //   42: aload 4
    //   44: invokevirtual 65	android/os/Parcel:writeString	(Ljava/lang/String;)V
    //   47: aload_0
    //   48: getfield 15	com/google/android/gms/games/internal/IGamesService$Stub$Proxy:ko	Landroid/os/IBinder;
    //   51: sipush 8018
    //   54: aload 5
    //   56: aload 6
    //   58: iconst_0
    //   59: invokeinterface 40 5 0
    //   64: pop
    //   65: aload 6
    //   67: invokevirtual 43	android/os/Parcel:readException	()V
    //   70: aload 6
    //   72: invokevirtual 46	android/os/Parcel:recycle	()V
    //   75: aload 5
    //   77: invokevirtual 46	android/os/Parcel:recycle	()V
    //   80: return
    //   81: aconst_null
    //   82: astore_1
    //   83: goto -55 -> 28
    //   86: astore_1
    //   87: aload 6
    //   89: invokevirtual 46	android/os/Parcel:recycle	()V
    //   92: aload 5
    //   94: invokevirtual 46	android/os/Parcel:recycle	()V
    //   97: aload_1
    //   98: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	99	0	this	Proxy
    //   0	99	1	paramIGamesCallbacks	IGamesCallbacks
    //   0	99	2	paramLong	long
    //   0	99	4	paramString	String
    //   3	90	5	localParcel1	Parcel
    //   8	80	6	localParcel2	Parcel
    // Exception table:
    //   from	to	target	type
    //   10	17	86	finally
    //   21	28	86	finally
    //   28	70	86	finally
  }
  
  /* Error */
  public void a(IGamesCallbacks paramIGamesCallbacks, Bundle paramBundle, int paramInt1, int paramInt2)
  {
    // Byte code:
    //   0: invokestatic 24	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   3: astore 5
    //   5: invokestatic 24	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   8: astore 6
    //   10: aload 5
    //   12: ldc 26
    //   14: invokevirtual 30	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
    //   17: aload_1
    //   18: ifnull +80 -> 98
    //   21: aload_1
    //   22: invokeinterface 55 1 0
    //   27: astore_1
    //   28: aload 5
    //   30: aload_1
    //   31: invokevirtual 58	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
    //   34: aload_2
    //   35: ifnull +68 -> 103
    //   38: aload 5
    //   40: iconst_1
    //   41: invokevirtual 34	android/os/Parcel:writeInt	(I)V
    //   44: aload_2
    //   45: aload 5
    //   47: iconst_0
    //   48: invokevirtual 121	android/os/Bundle:writeToParcel	(Landroid/os/Parcel;I)V
    //   51: aload 5
    //   53: iload_3
    //   54: invokevirtual 34	android/os/Parcel:writeInt	(I)V
    //   57: aload 5
    //   59: iload 4
    //   61: invokevirtual 34	android/os/Parcel:writeInt	(I)V
    //   64: aload_0
    //   65: getfield 15	com/google/android/gms/games/internal/IGamesService$Stub$Proxy:ko	Landroid/os/IBinder;
    //   68: sipush 5021
    //   71: aload 5
    //   73: aload 6
    //   75: iconst_0
    //   76: invokeinterface 40 5 0
    //   81: pop
    //   82: aload 6
    //   84: invokevirtual 43	android/os/Parcel:readException	()V
    //   87: aload 6
    //   89: invokevirtual 46	android/os/Parcel:recycle	()V
    //   92: aload 5
    //   94: invokevirtual 46	android/os/Parcel:recycle	()V
    //   97: return
    //   98: aconst_null
    //   99: astore_1
    //   100: goto -72 -> 28
    //   103: aload 5
    //   105: iconst_0
    //   106: invokevirtual 34	android/os/Parcel:writeInt	(I)V
    //   109: goto -58 -> 51
    //   112: astore_1
    //   113: aload 6
    //   115: invokevirtual 46	android/os/Parcel:recycle	()V
    //   118: aload 5
    //   120: invokevirtual 46	android/os/Parcel:recycle	()V
    //   123: aload_1
    //   124: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	125	0	this	Proxy
    //   0	125	1	paramIGamesCallbacks	IGamesCallbacks
    //   0	125	2	paramBundle	Bundle
    //   0	125	3	paramInt1	int
    //   0	125	4	paramInt2	int
    //   3	116	5	localParcel1	Parcel
    //   8	106	6	localParcel2	Parcel
    // Exception table:
    //   from	to	target	type
    //   10	17	112	finally
    //   21	28	112	finally
    //   28	34	112	finally
    //   38	51	112	finally
    //   51	87	112	finally
    //   103	109	112	finally
  }
  
  public void a(IGamesCallbacks paramIGamesCallbacks, IBinder paramIBinder, int paramInt, String[] paramArrayOfString, Bundle paramBundle, boolean paramBoolean, long paramLong)
  {
    int i = 1;
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    for (;;)
    {
      try
      {
        localParcel1.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
        if (paramIGamesCallbacks != null)
        {
          paramIGamesCallbacks = paramIGamesCallbacks.asBinder();
          localParcel1.writeStrongBinder(paramIGamesCallbacks);
          localParcel1.writeStrongBinder(paramIBinder);
          localParcel1.writeInt(paramInt);
          localParcel1.writeStringArray(paramArrayOfString);
          if (paramBundle != null)
          {
            localParcel1.writeInt(1);
            paramBundle.writeToParcel(localParcel1, 0);
            break label157;
            localParcel1.writeInt(paramInt);
            localParcel1.writeLong(paramLong);
            ko.transact(5030, localParcel1, localParcel2, 0);
            localParcel2.readException();
          }
        }
        else
        {
          paramIGamesCallbacks = null;
          continue;
        }
        localParcel1.writeInt(0);
      }
      finally
      {
        localParcel2.recycle();
        localParcel1.recycle();
      }
      label157:
      do
      {
        paramInt = 0;
        break;
      } while (!paramBoolean);
      paramInt = i;
    }
  }
  
  /* Error */
  public void a(IGamesCallbacks paramIGamesCallbacks, IBinder paramIBinder, String paramString, boolean paramBoolean, long paramLong)
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore 9
    //   3: invokestatic 24	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   6: astore 7
    //   8: invokestatic 24	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   11: astore 8
    //   13: aload 7
    //   15: ldc 26
    //   17: invokevirtual 30	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
    //   20: aload_1
    //   21: ifnull +84 -> 105
    //   24: aload_1
    //   25: invokeinterface 55 1 0
    //   30: astore_1
    //   31: aload 7
    //   33: aload_1
    //   34: invokevirtual 58	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
    //   37: aload 7
    //   39: aload_2
    //   40: invokevirtual 58	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
    //   43: aload 7
    //   45: aload_3
    //   46: invokevirtual 65	android/os/Parcel:writeString	(Ljava/lang/String;)V
    //   49: iload 4
    //   51: ifeq +6 -> 57
    //   54: iconst_1
    //   55: istore 9
    //   57: aload 7
    //   59: iload 9
    //   61: invokevirtual 34	android/os/Parcel:writeInt	(I)V
    //   64: aload 7
    //   66: lload 5
    //   68: invokevirtual 117	android/os/Parcel:writeLong	(J)V
    //   71: aload_0
    //   72: getfield 15	com/google/android/gms/games/internal/IGamesService$Stub$Proxy:ko	Landroid/os/IBinder;
    //   75: sipush 5031
    //   78: aload 7
    //   80: aload 8
    //   82: iconst_0
    //   83: invokeinterface 40 5 0
    //   88: pop
    //   89: aload 8
    //   91: invokevirtual 43	android/os/Parcel:readException	()V
    //   94: aload 8
    //   96: invokevirtual 46	android/os/Parcel:recycle	()V
    //   99: aload 7
    //   101: invokevirtual 46	android/os/Parcel:recycle	()V
    //   104: return
    //   105: aconst_null
    //   106: astore_1
    //   107: goto -76 -> 31
    //   110: astore_1
    //   111: aload 8
    //   113: invokevirtual 46	android/os/Parcel:recycle	()V
    //   116: aload 7
    //   118: invokevirtual 46	android/os/Parcel:recycle	()V
    //   121: aload_1
    //   122: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	123	0	this	Proxy
    //   0	123	1	paramIGamesCallbacks	IGamesCallbacks
    //   0	123	2	paramIBinder	IBinder
    //   0	123	3	paramString	String
    //   0	123	4	paramBoolean	boolean
    //   0	123	5	paramLong	long
    //   6	111	7	localParcel1	Parcel
    //   11	101	8	localParcel2	Parcel
    //   1	59	9	i	int
    // Exception table:
    //   from	to	target	type
    //   13	20	110	finally
    //   24	31	110	finally
    //   31	49	110	finally
    //   57	94	110	finally
  }
  
  /* Error */
  public void a(IGamesCallbacks paramIGamesCallbacks, String paramString)
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
    //   16: ifnull +52 -> 68
    //   19: aload_1
    //   20: invokeinterface 55 1 0
    //   25: astore_1
    //   26: aload_3
    //   27: aload_1
    //   28: invokevirtual 58	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
    //   31: aload_3
    //   32: aload_2
    //   33: invokevirtual 65	android/os/Parcel:writeString	(Ljava/lang/String;)V
    //   36: aload_0
    //   37: getfield 15	com/google/android/gms/games/internal/IGamesService$Stub$Proxy:ko	Landroid/os/IBinder;
    //   40: sipush 5014
    //   43: aload_3
    //   44: aload 4
    //   46: iconst_0
    //   47: invokeinterface 40 5 0
    //   52: pop
    //   53: aload 4
    //   55: invokevirtual 43	android/os/Parcel:readException	()V
    //   58: aload 4
    //   60: invokevirtual 46	android/os/Parcel:recycle	()V
    //   63: aload_3
    //   64: invokevirtual 46	android/os/Parcel:recycle	()V
    //   67: return
    //   68: aconst_null
    //   69: astore_1
    //   70: goto -44 -> 26
    //   73: astore_1
    //   74: aload 4
    //   76: invokevirtual 46	android/os/Parcel:recycle	()V
    //   79: aload_3
    //   80: invokevirtual 46	android/os/Parcel:recycle	()V
    //   83: aload_1
    //   84: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	85	0	this	Proxy
    //   0	85	1	paramIGamesCallbacks	IGamesCallbacks
    //   0	85	2	paramString	String
    //   3	77	3	localParcel1	Parcel
    //   7	68	4	localParcel2	Parcel
    // Exception table:
    //   from	to	target	type
    //   9	15	73	finally
    //   19	26	73	finally
    //   26	58	73	finally
  }
  
  /* Error */
  public void a(IGamesCallbacks paramIGamesCallbacks, String paramString, int paramInt)
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
    //   18: ifnull +62 -> 80
    //   21: aload_1
    //   22: invokeinterface 55 1 0
    //   27: astore_1
    //   28: aload 4
    //   30: aload_1
    //   31: invokevirtual 58	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
    //   34: aload 4
    //   36: aload_2
    //   37: invokevirtual 65	android/os/Parcel:writeString	(Ljava/lang/String;)V
    //   40: aload 4
    //   42: iload_3
    //   43: invokevirtual 34	android/os/Parcel:writeInt	(I)V
    //   46: aload_0
    //   47: getfield 15	com/google/android/gms/games/internal/IGamesService$Stub$Proxy:ko	Landroid/os/IBinder;
    //   50: sipush 10011
    //   53: aload 4
    //   55: aload 5
    //   57: iconst_0
    //   58: invokeinterface 40 5 0
    //   63: pop
    //   64: aload 5
    //   66: invokevirtual 43	android/os/Parcel:readException	()V
    //   69: aload 5
    //   71: invokevirtual 46	android/os/Parcel:recycle	()V
    //   74: aload 4
    //   76: invokevirtual 46	android/os/Parcel:recycle	()V
    //   79: return
    //   80: aconst_null
    //   81: astore_1
    //   82: goto -54 -> 28
    //   85: astore_1
    //   86: aload 5
    //   88: invokevirtual 46	android/os/Parcel:recycle	()V
    //   91: aload 4
    //   93: invokevirtual 46	android/os/Parcel:recycle	()V
    //   96: aload_1
    //   97: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	98	0	this	Proxy
    //   0	98	1	paramIGamesCallbacks	IGamesCallbacks
    //   0	98	2	paramString	String
    //   0	98	3	paramInt	int
    //   3	89	4	localParcel1	Parcel
    //   8	79	5	localParcel2	Parcel
    // Exception table:
    //   from	to	target	type
    //   10	17	85	finally
    //   21	28	85	finally
    //   28	69	85	finally
  }
  
  /* Error */
  public void a(IGamesCallbacks paramIGamesCallbacks, String paramString, int paramInt1, int paramInt2, int paramInt3, boolean paramBoolean)
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore 9
    //   3: invokestatic 24	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   6: astore 7
    //   8: invokestatic 24	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   11: astore 8
    //   13: aload 7
    //   15: ldc 26
    //   17: invokevirtual 30	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
    //   20: aload_1
    //   21: ifnull +92 -> 113
    //   24: aload_1
    //   25: invokeinterface 55 1 0
    //   30: astore_1
    //   31: aload 7
    //   33: aload_1
    //   34: invokevirtual 58	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
    //   37: aload 7
    //   39: aload_2
    //   40: invokevirtual 65	android/os/Parcel:writeString	(Ljava/lang/String;)V
    //   43: aload 7
    //   45: iload_3
    //   46: invokevirtual 34	android/os/Parcel:writeInt	(I)V
    //   49: aload 7
    //   51: iload 4
    //   53: invokevirtual 34	android/os/Parcel:writeInt	(I)V
    //   56: aload 7
    //   58: iload 5
    //   60: invokevirtual 34	android/os/Parcel:writeInt	(I)V
    //   63: iload 9
    //   65: istore_3
    //   66: iload 6
    //   68: ifeq +5 -> 73
    //   71: iconst_1
    //   72: istore_3
    //   73: aload 7
    //   75: iload_3
    //   76: invokevirtual 34	android/os/Parcel:writeInt	(I)V
    //   79: aload_0
    //   80: getfield 15	com/google/android/gms/games/internal/IGamesService$Stub$Proxy:ko	Landroid/os/IBinder;
    //   83: sipush 5019
    //   86: aload 7
    //   88: aload 8
    //   90: iconst_0
    //   91: invokeinterface 40 5 0
    //   96: pop
    //   97: aload 8
    //   99: invokevirtual 43	android/os/Parcel:readException	()V
    //   102: aload 8
    //   104: invokevirtual 46	android/os/Parcel:recycle	()V
    //   107: aload 7
    //   109: invokevirtual 46	android/os/Parcel:recycle	()V
    //   112: return
    //   113: aconst_null
    //   114: astore_1
    //   115: goto -84 -> 31
    //   118: astore_1
    //   119: aload 8
    //   121: invokevirtual 46	android/os/Parcel:recycle	()V
    //   124: aload 7
    //   126: invokevirtual 46	android/os/Parcel:recycle	()V
    //   129: aload_1
    //   130: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	131	0	this	Proxy
    //   0	131	1	paramIGamesCallbacks	IGamesCallbacks
    //   0	131	2	paramString	String
    //   0	131	3	paramInt1	int
    //   0	131	4	paramInt2	int
    //   0	131	5	paramInt3	int
    //   0	131	6	paramBoolean	boolean
    //   6	119	7	localParcel1	Parcel
    //   11	109	8	localParcel2	Parcel
    //   1	63	9	i	int
    // Exception table:
    //   from	to	target	type
    //   13	20	118	finally
    //   24	31	118	finally
    //   31	63	118	finally
    //   73	102	118	finally
  }
  
  /* Error */
  public void a(IGamesCallbacks paramIGamesCallbacks, String paramString, int paramInt, IBinder paramIBinder, Bundle paramBundle)
  {
    // Byte code:
    //   0: invokestatic 24	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   3: astore 6
    //   5: invokestatic 24	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   8: astore 7
    //   10: aload 6
    //   12: ldc 26
    //   14: invokevirtual 30	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
    //   17: aload_1
    //   18: ifnull +88 -> 106
    //   21: aload_1
    //   22: invokeinterface 55 1 0
    //   27: astore_1
    //   28: aload 6
    //   30: aload_1
    //   31: invokevirtual 58	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
    //   34: aload 6
    //   36: aload_2
    //   37: invokevirtual 65	android/os/Parcel:writeString	(Ljava/lang/String;)V
    //   40: aload 6
    //   42: iload_3
    //   43: invokevirtual 34	android/os/Parcel:writeInt	(I)V
    //   46: aload 6
    //   48: aload 4
    //   50: invokevirtual 58	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
    //   53: aload 5
    //   55: ifnull +56 -> 111
    //   58: aload 6
    //   60: iconst_1
    //   61: invokevirtual 34	android/os/Parcel:writeInt	(I)V
    //   64: aload 5
    //   66: aload 6
    //   68: iconst_0
    //   69: invokevirtual 121	android/os/Bundle:writeToParcel	(Landroid/os/Parcel;I)V
    //   72: aload_0
    //   73: getfield 15	com/google/android/gms/games/internal/IGamesService$Stub$Proxy:ko	Landroid/os/IBinder;
    //   76: sipush 5025
    //   79: aload 6
    //   81: aload 7
    //   83: iconst_0
    //   84: invokeinterface 40 5 0
    //   89: pop
    //   90: aload 7
    //   92: invokevirtual 43	android/os/Parcel:readException	()V
    //   95: aload 7
    //   97: invokevirtual 46	android/os/Parcel:recycle	()V
    //   100: aload 6
    //   102: invokevirtual 46	android/os/Parcel:recycle	()V
    //   105: return
    //   106: aconst_null
    //   107: astore_1
    //   108: goto -80 -> 28
    //   111: aload 6
    //   113: iconst_0
    //   114: invokevirtual 34	android/os/Parcel:writeInt	(I)V
    //   117: goto -45 -> 72
    //   120: astore_1
    //   121: aload 7
    //   123: invokevirtual 46	android/os/Parcel:recycle	()V
    //   126: aload 6
    //   128: invokevirtual 46	android/os/Parcel:recycle	()V
    //   131: aload_1
    //   132: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	133	0	this	Proxy
    //   0	133	1	paramIGamesCallbacks	IGamesCallbacks
    //   0	133	2	paramString	String
    //   0	133	3	paramInt	int
    //   0	133	4	paramIBinder	IBinder
    //   0	133	5	paramBundle	Bundle
    //   3	124	6	localParcel1	Parcel
    //   8	114	7	localParcel2	Parcel
    // Exception table:
    //   from	to	target	type
    //   10	17	120	finally
    //   21	28	120	finally
    //   28	53	120	finally
    //   58	72	120	finally
    //   72	95	120	finally
    //   111	117	120	finally
  }
  
  /* Error */
  public void a(IGamesCallbacks paramIGamesCallbacks, String paramString, int paramInt, boolean paramBoolean)
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore 7
    //   3: invokestatic 24	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   6: astore 5
    //   8: invokestatic 24	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   11: astore 6
    //   13: aload 5
    //   15: ldc 26
    //   17: invokevirtual 30	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
    //   20: aload_1
    //   21: ifnull +78 -> 99
    //   24: aload_1
    //   25: invokeinterface 55 1 0
    //   30: astore_1
    //   31: aload 5
    //   33: aload_1
    //   34: invokevirtual 58	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
    //   37: aload 5
    //   39: aload_2
    //   40: invokevirtual 65	android/os/Parcel:writeString	(Ljava/lang/String;)V
    //   43: aload 5
    //   45: iload_3
    //   46: invokevirtual 34	android/os/Parcel:writeInt	(I)V
    //   49: iload 7
    //   51: istore_3
    //   52: iload 4
    //   54: ifeq +5 -> 59
    //   57: iconst_1
    //   58: istore_3
    //   59: aload 5
    //   61: iload_3
    //   62: invokevirtual 34	android/os/Parcel:writeInt	(I)V
    //   65: aload_0
    //   66: getfield 15	com/google/android/gms/games/internal/IGamesService$Stub$Proxy:ko	Landroid/os/IBinder;
    //   69: sipush 8023
    //   72: aload 5
    //   74: aload 6
    //   76: iconst_0
    //   77: invokeinterface 40 5 0
    //   82: pop
    //   83: aload 6
    //   85: invokevirtual 43	android/os/Parcel:readException	()V
    //   88: aload 6
    //   90: invokevirtual 46	android/os/Parcel:recycle	()V
    //   93: aload 5
    //   95: invokevirtual 46	android/os/Parcel:recycle	()V
    //   98: return
    //   99: aconst_null
    //   100: astore_1
    //   101: goto -70 -> 31
    //   104: astore_1
    //   105: aload 6
    //   107: invokevirtual 46	android/os/Parcel:recycle	()V
    //   110: aload 5
    //   112: invokevirtual 46	android/os/Parcel:recycle	()V
    //   115: aload_1
    //   116: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	117	0	this	Proxy
    //   0	117	1	paramIGamesCallbacks	IGamesCallbacks
    //   0	117	2	paramString	String
    //   0	117	3	paramInt	int
    //   0	117	4	paramBoolean	boolean
    //   6	105	5	localParcel1	Parcel
    //   11	95	6	localParcel2	Parcel
    //   1	49	7	i	int
    // Exception table:
    //   from	to	target	type
    //   13	20	104	finally
    //   24	31	104	finally
    //   31	49	104	finally
    //   59	88	104	finally
  }
  
  /* Error */
  public void a(IGamesCallbacks paramIGamesCallbacks, String paramString, int paramInt, boolean paramBoolean1, boolean paramBoolean2)
  {
    // Byte code:
    //   0: iconst_1
    //   1: istore 8
    //   3: invokestatic 24	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   6: astore 6
    //   8: invokestatic 24	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   11: astore 7
    //   13: aload 6
    //   15: ldc 26
    //   17: invokevirtual 30	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
    //   20: aload_1
    //   21: ifnull +89 -> 110
    //   24: aload_1
    //   25: invokeinterface 55 1 0
    //   30: astore_1
    //   31: aload 6
    //   33: aload_1
    //   34: invokevirtual 58	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
    //   37: aload 6
    //   39: aload_2
    //   40: invokevirtual 65	android/os/Parcel:writeString	(Ljava/lang/String;)V
    //   43: aload 6
    //   45: iload_3
    //   46: invokevirtual 34	android/os/Parcel:writeInt	(I)V
    //   49: iload 4
    //   51: ifeq +64 -> 115
    //   54: iconst_1
    //   55: istore_3
    //   56: aload 6
    //   58: iload_3
    //   59: invokevirtual 34	android/os/Parcel:writeInt	(I)V
    //   62: iload 5
    //   64: ifeq +56 -> 120
    //   67: iload 8
    //   69: istore_3
    //   70: aload 6
    //   72: iload_3
    //   73: invokevirtual 34	android/os/Parcel:writeInt	(I)V
    //   76: aload_0
    //   77: getfield 15	com/google/android/gms/games/internal/IGamesService$Stub$Proxy:ko	Landroid/os/IBinder;
    //   80: sipush 5045
    //   83: aload 6
    //   85: aload 7
    //   87: iconst_0
    //   88: invokeinterface 40 5 0
    //   93: pop
    //   94: aload 7
    //   96: invokevirtual 43	android/os/Parcel:readException	()V
    //   99: aload 7
    //   101: invokevirtual 46	android/os/Parcel:recycle	()V
    //   104: aload 6
    //   106: invokevirtual 46	android/os/Parcel:recycle	()V
    //   109: return
    //   110: aconst_null
    //   111: astore_1
    //   112: goto -81 -> 31
    //   115: iconst_0
    //   116: istore_3
    //   117: goto -61 -> 56
    //   120: iconst_0
    //   121: istore_3
    //   122: goto -52 -> 70
    //   125: astore_1
    //   126: aload 7
    //   128: invokevirtual 46	android/os/Parcel:recycle	()V
    //   131: aload 6
    //   133: invokevirtual 46	android/os/Parcel:recycle	()V
    //   136: aload_1
    //   137: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	138	0	this	Proxy
    //   0	138	1	paramIGamesCallbacks	IGamesCallbacks
    //   0	138	2	paramString	String
    //   0	138	3	paramInt	int
    //   0	138	4	paramBoolean1	boolean
    //   0	138	5	paramBoolean2	boolean
    //   6	126	6	localParcel1	Parcel
    //   11	116	7	localParcel2	Parcel
    //   1	67	8	i	int
    // Exception table:
    //   from	to	target	type
    //   13	20	125	finally
    //   24	31	125	finally
    //   31	49	125	finally
    //   56	62	125	finally
    //   70	99	125	finally
  }
  
  /* Error */
  public void a(IGamesCallbacks paramIGamesCallbacks, String paramString, int paramInt, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, boolean paramBoolean4)
  {
    // Byte code:
    //   0: iconst_1
    //   1: istore 10
    //   3: invokestatic 24	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   6: astore 8
    //   8: invokestatic 24	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   11: astore 9
    //   13: aload 8
    //   15: ldc 26
    //   17: invokevirtual 30	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
    //   20: aload_1
    //   21: ifnull +115 -> 136
    //   24: aload_1
    //   25: invokeinterface 55 1 0
    //   30: astore_1
    //   31: aload 8
    //   33: aload_1
    //   34: invokevirtual 58	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
    //   37: aload 8
    //   39: aload_2
    //   40: invokevirtual 65	android/os/Parcel:writeString	(Ljava/lang/String;)V
    //   43: aload 8
    //   45: iload_3
    //   46: invokevirtual 34	android/os/Parcel:writeInt	(I)V
    //   49: iload 4
    //   51: ifeq +90 -> 141
    //   54: iconst_1
    //   55: istore_3
    //   56: aload 8
    //   58: iload_3
    //   59: invokevirtual 34	android/os/Parcel:writeInt	(I)V
    //   62: iload 5
    //   64: ifeq +82 -> 146
    //   67: iconst_1
    //   68: istore_3
    //   69: aload 8
    //   71: iload_3
    //   72: invokevirtual 34	android/os/Parcel:writeInt	(I)V
    //   75: iload 6
    //   77: ifeq +74 -> 151
    //   80: iconst_1
    //   81: istore_3
    //   82: aload 8
    //   84: iload_3
    //   85: invokevirtual 34	android/os/Parcel:writeInt	(I)V
    //   88: iload 7
    //   90: ifeq +66 -> 156
    //   93: iload 10
    //   95: istore_3
    //   96: aload 8
    //   98: iload_3
    //   99: invokevirtual 34	android/os/Parcel:writeInt	(I)V
    //   102: aload_0
    //   103: getfield 15	com/google/android/gms/games/internal/IGamesService$Stub$Proxy:ko	Landroid/os/IBinder;
    //   106: sipush 6501
    //   109: aload 8
    //   111: aload 9
    //   113: iconst_0
    //   114: invokeinterface 40 5 0
    //   119: pop
    //   120: aload 9
    //   122: invokevirtual 43	android/os/Parcel:readException	()V
    //   125: aload 9
    //   127: invokevirtual 46	android/os/Parcel:recycle	()V
    //   130: aload 8
    //   132: invokevirtual 46	android/os/Parcel:recycle	()V
    //   135: return
    //   136: aconst_null
    //   137: astore_1
    //   138: goto -107 -> 31
    //   141: iconst_0
    //   142: istore_3
    //   143: goto -87 -> 56
    //   146: iconst_0
    //   147: istore_3
    //   148: goto -79 -> 69
    //   151: iconst_0
    //   152: istore_3
    //   153: goto -71 -> 82
    //   156: iconst_0
    //   157: istore_3
    //   158: goto -62 -> 96
    //   161: astore_1
    //   162: aload 9
    //   164: invokevirtual 46	android/os/Parcel:recycle	()V
    //   167: aload 8
    //   169: invokevirtual 46	android/os/Parcel:recycle	()V
    //   172: aload_1
    //   173: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	174	0	this	Proxy
    //   0	174	1	paramIGamesCallbacks	IGamesCallbacks
    //   0	174	2	paramString	String
    //   0	174	3	paramInt	int
    //   0	174	4	paramBoolean1	boolean
    //   0	174	5	paramBoolean2	boolean
    //   0	174	6	paramBoolean3	boolean
    //   0	174	7	paramBoolean4	boolean
    //   6	162	8	localParcel1	Parcel
    //   11	152	9	localParcel2	Parcel
    //   1	93	10	i	int
    // Exception table:
    //   from	to	target	type
    //   13	20	161	finally
    //   24	31	161	finally
    //   31	49	161	finally
    //   56	62	161	finally
    //   69	75	161	finally
    //   82	88	161	finally
    //   96	125	161	finally
  }
  
  /* Error */
  public void a(IGamesCallbacks paramIGamesCallbacks, String paramString, int paramInt, int[] paramArrayOfInt)
  {
    // Byte code:
    //   0: invokestatic 24	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   3: astore 5
    //   5: invokestatic 24	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   8: astore 6
    //   10: aload 5
    //   12: ldc 26
    //   14: invokevirtual 30	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
    //   17: aload_1
    //   18: ifnull +69 -> 87
    //   21: aload_1
    //   22: invokeinterface 55 1 0
    //   27: astore_1
    //   28: aload 5
    //   30: aload_1
    //   31: invokevirtual 58	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
    //   34: aload 5
    //   36: aload_2
    //   37: invokevirtual 65	android/os/Parcel:writeString	(Ljava/lang/String;)V
    //   40: aload 5
    //   42: iload_3
    //   43: invokevirtual 34	android/os/Parcel:writeInt	(I)V
    //   46: aload 5
    //   48: aload 4
    //   50: invokevirtual 104	android/os/Parcel:writeIntArray	([I)V
    //   53: aload_0
    //   54: getfield 15	com/google/android/gms/games/internal/IGamesService$Stub$Proxy:ko	Landroid/os/IBinder;
    //   57: sipush 10019
    //   60: aload 5
    //   62: aload 6
    //   64: iconst_0
    //   65: invokeinterface 40 5 0
    //   70: pop
    //   71: aload 6
    //   73: invokevirtual 43	android/os/Parcel:readException	()V
    //   76: aload 6
    //   78: invokevirtual 46	android/os/Parcel:recycle	()V
    //   81: aload 5
    //   83: invokevirtual 46	android/os/Parcel:recycle	()V
    //   86: return
    //   87: aconst_null
    //   88: astore_1
    //   89: goto -61 -> 28
    //   92: astore_1
    //   93: aload 6
    //   95: invokevirtual 46	android/os/Parcel:recycle	()V
    //   98: aload 5
    //   100: invokevirtual 46	android/os/Parcel:recycle	()V
    //   103: aload_1
    //   104: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	105	0	this	Proxy
    //   0	105	1	paramIGamesCallbacks	IGamesCallbacks
    //   0	105	2	paramString	String
    //   0	105	3	paramInt	int
    //   0	105	4	paramArrayOfInt	int[]
    //   3	96	5	localParcel1	Parcel
    //   8	86	6	localParcel2	Parcel
    // Exception table:
    //   from	to	target	type
    //   10	17	92	finally
    //   21	28	92	finally
    //   28	76	92	finally
  }
  
  /* Error */
  public void a(IGamesCallbacks paramIGamesCallbacks, String paramString, long paramLong)
  {
    // Byte code:
    //   0: invokestatic 24	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   3: astore 5
    //   5: invokestatic 24	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   8: astore 6
    //   10: aload 5
    //   12: ldc 26
    //   14: invokevirtual 30	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
    //   17: aload_1
    //   18: ifnull +62 -> 80
    //   21: aload_1
    //   22: invokeinterface 55 1 0
    //   27: astore_1
    //   28: aload 5
    //   30: aload_1
    //   31: invokevirtual 58	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
    //   34: aload 5
    //   36: aload_2
    //   37: invokevirtual 65	android/os/Parcel:writeString	(Ljava/lang/String;)V
    //   40: aload 5
    //   42: lload_3
    //   43: invokevirtual 117	android/os/Parcel:writeLong	(J)V
    //   46: aload_0
    //   47: getfield 15	com/google/android/gms/games/internal/IGamesService$Stub$Proxy:ko	Landroid/os/IBinder;
    //   50: sipush 5016
    //   53: aload 5
    //   55: aload 6
    //   57: iconst_0
    //   58: invokeinterface 40 5 0
    //   63: pop
    //   64: aload 6
    //   66: invokevirtual 43	android/os/Parcel:readException	()V
    //   69: aload 6
    //   71: invokevirtual 46	android/os/Parcel:recycle	()V
    //   74: aload 5
    //   76: invokevirtual 46	android/os/Parcel:recycle	()V
    //   79: return
    //   80: aconst_null
    //   81: astore_1
    //   82: goto -54 -> 28
    //   85: astore_1
    //   86: aload 6
    //   88: invokevirtual 46	android/os/Parcel:recycle	()V
    //   91: aload 5
    //   93: invokevirtual 46	android/os/Parcel:recycle	()V
    //   96: aload_1
    //   97: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	98	0	this	Proxy
    //   0	98	1	paramIGamesCallbacks	IGamesCallbacks
    //   0	98	2	paramString	String
    //   0	98	3	paramLong	long
    //   3	89	5	localParcel1	Parcel
    //   8	79	6	localParcel2	Parcel
    // Exception table:
    //   from	to	target	type
    //   10	17	85	finally
    //   21	28	85	finally
    //   28	69	85	finally
  }
  
  /* Error */
  public void a(IGamesCallbacks paramIGamesCallbacks, String paramString1, long paramLong, String paramString2)
  {
    // Byte code:
    //   0: invokestatic 24	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   3: astore 6
    //   5: invokestatic 24	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   8: astore 7
    //   10: aload 6
    //   12: ldc 26
    //   14: invokevirtual 30	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
    //   17: aload_1
    //   18: ifnull +69 -> 87
    //   21: aload_1
    //   22: invokeinterface 55 1 0
    //   27: astore_1
    //   28: aload 6
    //   30: aload_1
    //   31: invokevirtual 58	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
    //   34: aload 6
    //   36: aload_2
    //   37: invokevirtual 65	android/os/Parcel:writeString	(Ljava/lang/String;)V
    //   40: aload 6
    //   42: lload_3
    //   43: invokevirtual 117	android/os/Parcel:writeLong	(J)V
    //   46: aload 6
    //   48: aload 5
    //   50: invokevirtual 65	android/os/Parcel:writeString	(Ljava/lang/String;)V
    //   53: aload_0
    //   54: getfield 15	com/google/android/gms/games/internal/IGamesService$Stub$Proxy:ko	Landroid/os/IBinder;
    //   57: sipush 7002
    //   60: aload 6
    //   62: aload 7
    //   64: iconst_0
    //   65: invokeinterface 40 5 0
    //   70: pop
    //   71: aload 7
    //   73: invokevirtual 43	android/os/Parcel:readException	()V
    //   76: aload 7
    //   78: invokevirtual 46	android/os/Parcel:recycle	()V
    //   81: aload 6
    //   83: invokevirtual 46	android/os/Parcel:recycle	()V
    //   86: return
    //   87: aconst_null
    //   88: astore_1
    //   89: goto -61 -> 28
    //   92: astore_1
    //   93: aload 7
    //   95: invokevirtual 46	android/os/Parcel:recycle	()V
    //   98: aload 6
    //   100: invokevirtual 46	android/os/Parcel:recycle	()V
    //   103: aload_1
    //   104: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	105	0	this	Proxy
    //   0	105	1	paramIGamesCallbacks	IGamesCallbacks
    //   0	105	2	paramString1	String
    //   0	105	3	paramLong	long
    //   0	105	5	paramString2	String
    //   3	96	6	localParcel1	Parcel
    //   8	86	7	localParcel2	Parcel
    // Exception table:
    //   from	to	target	type
    //   10	17	92	finally
    //   21	28	92	finally
    //   28	76	92	finally
  }
  
  /* Error */
  public void a(IGamesCallbacks paramIGamesCallbacks, String paramString, IBinder paramIBinder, Bundle paramBundle)
  {
    // Byte code:
    //   0: invokestatic 24	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   3: astore 5
    //   5: invokestatic 24	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   8: astore 6
    //   10: aload 5
    //   12: ldc 26
    //   14: invokevirtual 30	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
    //   17: aload_1
    //   18: ifnull +81 -> 99
    //   21: aload_1
    //   22: invokeinterface 55 1 0
    //   27: astore_1
    //   28: aload 5
    //   30: aload_1
    //   31: invokevirtual 58	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
    //   34: aload 5
    //   36: aload_2
    //   37: invokevirtual 65	android/os/Parcel:writeString	(Ljava/lang/String;)V
    //   40: aload 5
    //   42: aload_3
    //   43: invokevirtual 58	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
    //   46: aload 4
    //   48: ifnull +56 -> 104
    //   51: aload 5
    //   53: iconst_1
    //   54: invokevirtual 34	android/os/Parcel:writeInt	(I)V
    //   57: aload 4
    //   59: aload 5
    //   61: iconst_0
    //   62: invokevirtual 121	android/os/Bundle:writeToParcel	(Landroid/os/Parcel;I)V
    //   65: aload_0
    //   66: getfield 15	com/google/android/gms/games/internal/IGamesService$Stub$Proxy:ko	Landroid/os/IBinder;
    //   69: sipush 5023
    //   72: aload 5
    //   74: aload 6
    //   76: iconst_0
    //   77: invokeinterface 40 5 0
    //   82: pop
    //   83: aload 6
    //   85: invokevirtual 43	android/os/Parcel:readException	()V
    //   88: aload 6
    //   90: invokevirtual 46	android/os/Parcel:recycle	()V
    //   93: aload 5
    //   95: invokevirtual 46	android/os/Parcel:recycle	()V
    //   98: return
    //   99: aconst_null
    //   100: astore_1
    //   101: goto -73 -> 28
    //   104: aload 5
    //   106: iconst_0
    //   107: invokevirtual 34	android/os/Parcel:writeInt	(I)V
    //   110: goto -45 -> 65
    //   113: astore_1
    //   114: aload 6
    //   116: invokevirtual 46	android/os/Parcel:recycle	()V
    //   119: aload 5
    //   121: invokevirtual 46	android/os/Parcel:recycle	()V
    //   124: aload_1
    //   125: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	126	0	this	Proxy
    //   0	126	1	paramIGamesCallbacks	IGamesCallbacks
    //   0	126	2	paramString	String
    //   0	126	3	paramIBinder	IBinder
    //   0	126	4	paramBundle	Bundle
    //   3	117	5	localParcel1	Parcel
    //   8	107	6	localParcel2	Parcel
    // Exception table:
    //   from	to	target	type
    //   10	17	113	finally
    //   21	28	113	finally
    //   28	46	113	finally
    //   51	65	113	finally
    //   65	88	113	finally
    //   104	110	113	finally
  }
  
  public void a(IGamesCallbacks paramIGamesCallbacks, String paramString, SnapshotMetadataChange paramSnapshotMetadataChange, Contents paramContents)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    label137:
    for (;;)
    {
      try
      {
        localParcel1.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
        if (paramIGamesCallbacks != null)
        {
          paramIGamesCallbacks = paramIGamesCallbacks.asBinder();
          localParcel1.writeStrongBinder(paramIGamesCallbacks);
          localParcel1.writeString(paramString);
          if (paramSnapshotMetadataChange != null)
          {
            localParcel1.writeInt(1);
            paramSnapshotMetadataChange.writeToParcel(localParcel1, 0);
            if (paramContents == null) {
              break label137;
            }
            localParcel1.writeInt(1);
            paramContents.writeToParcel(localParcel1, 0);
            ko.transact(12007, localParcel1, localParcel2, 0);
            localParcel2.readException();
          }
        }
        else
        {
          paramIGamesCallbacks = null;
          continue;
        }
        localParcel1.writeInt(0);
        continue;
        localParcel1.writeInt(0);
      }
      finally
      {
        localParcel2.recycle();
        localParcel1.recycle();
      }
    }
  }
  
  /* Error */
  public void a(IGamesCallbacks paramIGamesCallbacks, String paramString1, String paramString2)
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
    //   18: ifnull +62 -> 80
    //   21: aload_1
    //   22: invokeinterface 55 1 0
    //   27: astore_1
    //   28: aload 4
    //   30: aload_1
    //   31: invokevirtual 58	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
    //   34: aload 4
    //   36: aload_2
    //   37: invokevirtual 65	android/os/Parcel:writeString	(Ljava/lang/String;)V
    //   40: aload 4
    //   42: aload_3
    //   43: invokevirtual 65	android/os/Parcel:writeString	(Ljava/lang/String;)V
    //   46: aload_0
    //   47: getfield 15	com/google/android/gms/games/internal/IGamesService$Stub$Proxy:ko	Landroid/os/IBinder;
    //   50: sipush 5038
    //   53: aload 4
    //   55: aload 5
    //   57: iconst_0
    //   58: invokeinterface 40 5 0
    //   63: pop
    //   64: aload 5
    //   66: invokevirtual 43	android/os/Parcel:readException	()V
    //   69: aload 5
    //   71: invokevirtual 46	android/os/Parcel:recycle	()V
    //   74: aload 4
    //   76: invokevirtual 46	android/os/Parcel:recycle	()V
    //   79: return
    //   80: aconst_null
    //   81: astore_1
    //   82: goto -54 -> 28
    //   85: astore_1
    //   86: aload 5
    //   88: invokevirtual 46	android/os/Parcel:recycle	()V
    //   91: aload 4
    //   93: invokevirtual 46	android/os/Parcel:recycle	()V
    //   96: aload_1
    //   97: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	98	0	this	Proxy
    //   0	98	1	paramIGamesCallbacks	IGamesCallbacks
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
  public void a(IGamesCallbacks paramIGamesCallbacks, String paramString1, String paramString2, int paramInt1, int paramInt2)
  {
    // Byte code:
    //   0: invokestatic 24	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   3: astore 6
    //   5: invokestatic 24	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   8: astore 7
    //   10: aload 6
    //   12: ldc 26
    //   14: invokevirtual 30	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
    //   17: aload_1
    //   18: ifnull +76 -> 94
    //   21: aload_1
    //   22: invokeinterface 55 1 0
    //   27: astore_1
    //   28: aload 6
    //   30: aload_1
    //   31: invokevirtual 58	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
    //   34: aload 6
    //   36: aload_2
    //   37: invokevirtual 65	android/os/Parcel:writeString	(Ljava/lang/String;)V
    //   40: aload 6
    //   42: aload_3
    //   43: invokevirtual 65	android/os/Parcel:writeString	(Ljava/lang/String;)V
    //   46: aload 6
    //   48: iload 4
    //   50: invokevirtual 34	android/os/Parcel:writeInt	(I)V
    //   53: aload 6
    //   55: iload 5
    //   57: invokevirtual 34	android/os/Parcel:writeInt	(I)V
    //   60: aload_0
    //   61: getfield 15	com/google/android/gms/games/internal/IGamesService$Stub$Proxy:ko	Landroid/os/IBinder;
    //   64: sipush 8001
    //   67: aload 6
    //   69: aload 7
    //   71: iconst_0
    //   72: invokeinterface 40 5 0
    //   77: pop
    //   78: aload 7
    //   80: invokevirtual 43	android/os/Parcel:readException	()V
    //   83: aload 7
    //   85: invokevirtual 46	android/os/Parcel:recycle	()V
    //   88: aload 6
    //   90: invokevirtual 46	android/os/Parcel:recycle	()V
    //   93: return
    //   94: aconst_null
    //   95: astore_1
    //   96: goto -68 -> 28
    //   99: astore_1
    //   100: aload 7
    //   102: invokevirtual 46	android/os/Parcel:recycle	()V
    //   105: aload 6
    //   107: invokevirtual 46	android/os/Parcel:recycle	()V
    //   110: aload_1
    //   111: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	112	0	this	Proxy
    //   0	112	1	paramIGamesCallbacks	IGamesCallbacks
    //   0	112	2	paramString1	String
    //   0	112	3	paramString2	String
    //   0	112	4	paramInt1	int
    //   0	112	5	paramInt2	int
    //   3	103	6	localParcel1	Parcel
    //   8	93	7	localParcel2	Parcel
    // Exception table:
    //   from	to	target	type
    //   10	17	99	finally
    //   21	28	99	finally
    //   28	83	99	finally
  }
  
  /* Error */
  public void a(IGamesCallbacks paramIGamesCallbacks, String paramString1, String paramString2, int paramInt1, int paramInt2, int paramInt3)
  {
    // Byte code:
    //   0: invokestatic 24	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   3: astore 7
    //   5: invokestatic 24	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   8: astore 8
    //   10: aload 7
    //   12: ldc 26
    //   14: invokevirtual 30	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
    //   17: aload_1
    //   18: ifnull +83 -> 101
    //   21: aload_1
    //   22: invokeinterface 55 1 0
    //   27: astore_1
    //   28: aload 7
    //   30: aload_1
    //   31: invokevirtual 58	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
    //   34: aload 7
    //   36: aload_2
    //   37: invokevirtual 65	android/os/Parcel:writeString	(Ljava/lang/String;)V
    //   40: aload 7
    //   42: aload_3
    //   43: invokevirtual 65	android/os/Parcel:writeString	(Ljava/lang/String;)V
    //   46: aload 7
    //   48: iload 4
    //   50: invokevirtual 34	android/os/Parcel:writeInt	(I)V
    //   53: aload 7
    //   55: iload 5
    //   57: invokevirtual 34	android/os/Parcel:writeInt	(I)V
    //   60: aload 7
    //   62: iload 6
    //   64: invokevirtual 34	android/os/Parcel:writeInt	(I)V
    //   67: aload_0
    //   68: getfield 15	com/google/android/gms/games/internal/IGamesService$Stub$Proxy:ko	Landroid/os/IBinder;
    //   71: sipush 10010
    //   74: aload 7
    //   76: aload 8
    //   78: iconst_0
    //   79: invokeinterface 40 5 0
    //   84: pop
    //   85: aload 8
    //   87: invokevirtual 43	android/os/Parcel:readException	()V
    //   90: aload 8
    //   92: invokevirtual 46	android/os/Parcel:recycle	()V
    //   95: aload 7
    //   97: invokevirtual 46	android/os/Parcel:recycle	()V
    //   100: return
    //   101: aconst_null
    //   102: astore_1
    //   103: goto -75 -> 28
    //   106: astore_1
    //   107: aload 8
    //   109: invokevirtual 46	android/os/Parcel:recycle	()V
    //   112: aload 7
    //   114: invokevirtual 46	android/os/Parcel:recycle	()V
    //   117: aload_1
    //   118: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	119	0	this	Proxy
    //   0	119	1	paramIGamesCallbacks	IGamesCallbacks
    //   0	119	2	paramString1	String
    //   0	119	3	paramString2	String
    //   0	119	4	paramInt1	int
    //   0	119	5	paramInt2	int
    //   0	119	6	paramInt3	int
    //   3	110	7	localParcel1	Parcel
    //   8	100	8	localParcel2	Parcel
    // Exception table:
    //   from	to	target	type
    //   10	17	106	finally
    //   21	28	106	finally
    //   28	90	106	finally
  }
  
  /* Error */
  public void a(IGamesCallbacks paramIGamesCallbacks, String paramString1, String paramString2, int paramInt1, int paramInt2, int paramInt3, boolean paramBoolean)
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore 10
    //   3: invokestatic 24	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   6: astore 8
    //   8: invokestatic 24	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   11: astore 9
    //   13: aload 8
    //   15: ldc 26
    //   17: invokevirtual 30	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
    //   20: aload_1
    //   21: ifnull +102 -> 123
    //   24: aload_1
    //   25: invokeinterface 55 1 0
    //   30: astore_1
    //   31: aload 8
    //   33: aload_1
    //   34: invokevirtual 58	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
    //   37: aload 8
    //   39: aload_2
    //   40: invokevirtual 65	android/os/Parcel:writeString	(Ljava/lang/String;)V
    //   43: aload 8
    //   45: aload_3
    //   46: invokevirtual 65	android/os/Parcel:writeString	(Ljava/lang/String;)V
    //   49: aload 8
    //   51: iload 4
    //   53: invokevirtual 34	android/os/Parcel:writeInt	(I)V
    //   56: aload 8
    //   58: iload 5
    //   60: invokevirtual 34	android/os/Parcel:writeInt	(I)V
    //   63: aload 8
    //   65: iload 6
    //   67: invokevirtual 34	android/os/Parcel:writeInt	(I)V
    //   70: iload 10
    //   72: istore 4
    //   74: iload 7
    //   76: ifeq +6 -> 82
    //   79: iconst_1
    //   80: istore 4
    //   82: aload 8
    //   84: iload 4
    //   86: invokevirtual 34	android/os/Parcel:writeInt	(I)V
    //   89: aload_0
    //   90: getfield 15	com/google/android/gms/games/internal/IGamesService$Stub$Proxy:ko	Landroid/os/IBinder;
    //   93: sipush 5039
    //   96: aload 8
    //   98: aload 9
    //   100: iconst_0
    //   101: invokeinterface 40 5 0
    //   106: pop
    //   107: aload 9
    //   109: invokevirtual 43	android/os/Parcel:readException	()V
    //   112: aload 9
    //   114: invokevirtual 46	android/os/Parcel:recycle	()V
    //   117: aload 8
    //   119: invokevirtual 46	android/os/Parcel:recycle	()V
    //   122: return
    //   123: aconst_null
    //   124: astore_1
    //   125: goto -94 -> 31
    //   128: astore_1
    //   129: aload 9
    //   131: invokevirtual 46	android/os/Parcel:recycle	()V
    //   134: aload 8
    //   136: invokevirtual 46	android/os/Parcel:recycle	()V
    //   139: aload_1
    //   140: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	141	0	this	Proxy
    //   0	141	1	paramIGamesCallbacks	IGamesCallbacks
    //   0	141	2	paramString1	String
    //   0	141	3	paramString2	String
    //   0	141	4	paramInt1	int
    //   0	141	5	paramInt2	int
    //   0	141	6	paramInt3	int
    //   0	141	7	paramBoolean	boolean
    //   6	129	8	localParcel1	Parcel
    //   11	119	9	localParcel2	Parcel
    //   1	70	10	i	int
    // Exception table:
    //   from	to	target	type
    //   13	20	128	finally
    //   24	31	128	finally
    //   31	70	128	finally
    //   82	112	128	finally
  }
  
  /* Error */
  public void a(IGamesCallbacks paramIGamesCallbacks, String paramString1, String paramString2, int paramInt, boolean paramBoolean1, boolean paramBoolean2)
  {
    // Byte code:
    //   0: iconst_1
    //   1: istore 9
    //   3: invokestatic 24	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   6: astore 7
    //   8: invokestatic 24	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   11: astore 8
    //   13: aload 7
    //   15: ldc 26
    //   17: invokevirtual 30	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
    //   20: aload_1
    //   21: ifnull +100 -> 121
    //   24: aload_1
    //   25: invokeinterface 55 1 0
    //   30: astore_1
    //   31: aload 7
    //   33: aload_1
    //   34: invokevirtual 58	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
    //   37: aload 7
    //   39: aload_2
    //   40: invokevirtual 65	android/os/Parcel:writeString	(Ljava/lang/String;)V
    //   43: aload 7
    //   45: aload_3
    //   46: invokevirtual 65	android/os/Parcel:writeString	(Ljava/lang/String;)V
    //   49: aload 7
    //   51: iload 4
    //   53: invokevirtual 34	android/os/Parcel:writeInt	(I)V
    //   56: iload 5
    //   58: ifeq +68 -> 126
    //   61: iconst_1
    //   62: istore 4
    //   64: aload 7
    //   66: iload 4
    //   68: invokevirtual 34	android/os/Parcel:writeInt	(I)V
    //   71: iload 6
    //   73: ifeq +59 -> 132
    //   76: iload 9
    //   78: istore 4
    //   80: aload 7
    //   82: iload 4
    //   84: invokevirtual 34	android/os/Parcel:writeInt	(I)V
    //   87: aload_0
    //   88: getfield 15	com/google/android/gms/games/internal/IGamesService$Stub$Proxy:ko	Landroid/os/IBinder;
    //   91: sipush 9028
    //   94: aload 7
    //   96: aload 8
    //   98: iconst_0
    //   99: invokeinterface 40 5 0
    //   104: pop
    //   105: aload 8
    //   107: invokevirtual 43	android/os/Parcel:readException	()V
    //   110: aload 8
    //   112: invokevirtual 46	android/os/Parcel:recycle	()V
    //   115: aload 7
    //   117: invokevirtual 46	android/os/Parcel:recycle	()V
    //   120: return
    //   121: aconst_null
    //   122: astore_1
    //   123: goto -92 -> 31
    //   126: iconst_0
    //   127: istore 4
    //   129: goto -65 -> 64
    //   132: iconst_0
    //   133: istore 4
    //   135: goto -55 -> 80
    //   138: astore_1
    //   139: aload 8
    //   141: invokevirtual 46	android/os/Parcel:recycle	()V
    //   144: aload 7
    //   146: invokevirtual 46	android/os/Parcel:recycle	()V
    //   149: aload_1
    //   150: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	151	0	this	Proxy
    //   0	151	1	paramIGamesCallbacks	IGamesCallbacks
    //   0	151	2	paramString1	String
    //   0	151	3	paramString2	String
    //   0	151	4	paramInt	int
    //   0	151	5	paramBoolean1	boolean
    //   0	151	6	paramBoolean2	boolean
    //   6	139	7	localParcel1	Parcel
    //   11	129	8	localParcel2	Parcel
    //   1	76	9	i	int
    // Exception table:
    //   from	to	target	type
    //   13	20	138	finally
    //   24	31	138	finally
    //   31	56	138	finally
    //   64	71	138	finally
    //   80	110	138	finally
  }
  
  public void a(IGamesCallbacks paramIGamesCallbacks, String paramString1, String paramString2, SnapshotMetadataChange paramSnapshotMetadataChange, Contents paramContents)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    label145:
    for (;;)
    {
      try
      {
        localParcel1.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
        if (paramIGamesCallbacks != null)
        {
          paramIGamesCallbacks = paramIGamesCallbacks.asBinder();
          localParcel1.writeStrongBinder(paramIGamesCallbacks);
          localParcel1.writeString(paramString1);
          localParcel1.writeString(paramString2);
          if (paramSnapshotMetadataChange != null)
          {
            localParcel1.writeInt(1);
            paramSnapshotMetadataChange.writeToParcel(localParcel1, 0);
            if (paramContents == null) {
              break label145;
            }
            localParcel1.writeInt(1);
            paramContents.writeToParcel(localParcel1, 0);
            ko.transact(12033, localParcel1, localParcel2, 0);
            localParcel2.readException();
          }
        }
        else
        {
          paramIGamesCallbacks = null;
          continue;
        }
        localParcel1.writeInt(0);
        continue;
        localParcel1.writeInt(0);
      }
      finally
      {
        localParcel2.recycle();
        localParcel1.recycle();
      }
    }
  }
  
  /* Error */
  public void a(IGamesCallbacks paramIGamesCallbacks, String paramString1, String paramString2, boolean paramBoolean)
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore 7
    //   3: invokestatic 24	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   6: astore 5
    //   8: invokestatic 24	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   11: astore 6
    //   13: aload 5
    //   15: ldc 26
    //   17: invokevirtual 30	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
    //   20: aload_1
    //   21: ifnull +77 -> 98
    //   24: aload_1
    //   25: invokeinterface 55 1 0
    //   30: astore_1
    //   31: aload 5
    //   33: aload_1
    //   34: invokevirtual 58	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
    //   37: aload 5
    //   39: aload_2
    //   40: invokevirtual 65	android/os/Parcel:writeString	(Ljava/lang/String;)V
    //   43: aload 5
    //   45: aload_3
    //   46: invokevirtual 65	android/os/Parcel:writeString	(Ljava/lang/String;)V
    //   49: iload 4
    //   51: ifeq +6 -> 57
    //   54: iconst_1
    //   55: istore 7
    //   57: aload 5
    //   59: iload 7
    //   61: invokevirtual 34	android/os/Parcel:writeInt	(I)V
    //   64: aload_0
    //   65: getfield 15	com/google/android/gms/games/internal/IGamesService$Stub$Proxy:ko	Landroid/os/IBinder;
    //   68: sipush 6002
    //   71: aload 5
    //   73: aload 6
    //   75: iconst_0
    //   76: invokeinterface 40 5 0
    //   81: pop
    //   82: aload 6
    //   84: invokevirtual 43	android/os/Parcel:readException	()V
    //   87: aload 6
    //   89: invokevirtual 46	android/os/Parcel:recycle	()V
    //   92: aload 5
    //   94: invokevirtual 46	android/os/Parcel:recycle	()V
    //   97: return
    //   98: aconst_null
    //   99: astore_1
    //   100: goto -69 -> 31
    //   103: astore_1
    //   104: aload 6
    //   106: invokevirtual 46	android/os/Parcel:recycle	()V
    //   109: aload 5
    //   111: invokevirtual 46	android/os/Parcel:recycle	()V
    //   114: aload_1
    //   115: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	116	0	this	Proxy
    //   0	116	1	paramIGamesCallbacks	IGamesCallbacks
    //   0	116	2	paramString1	String
    //   0	116	3	paramString2	String
    //   0	116	4	paramBoolean	boolean
    //   6	104	5	localParcel1	Parcel
    //   11	94	6	localParcel2	Parcel
    //   1	59	7	i	int
    // Exception table:
    //   from	to	target	type
    //   13	20	103	finally
    //   24	31	103	finally
    //   31	49	103	finally
    //   57	87	103	finally
  }
  
  /* Error */
  public void a(IGamesCallbacks paramIGamesCallbacks, String paramString1, String paramString2, int[] paramArrayOfInt, int paramInt, boolean paramBoolean)
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore 9
    //   3: invokestatic 24	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   6: astore 7
    //   8: invokestatic 24	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   11: astore 8
    //   13: aload 7
    //   15: ldc 26
    //   17: invokevirtual 30	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
    //   20: aload_1
    //   21: ifnull +95 -> 116
    //   24: aload_1
    //   25: invokeinterface 55 1 0
    //   30: astore_1
    //   31: aload 7
    //   33: aload_1
    //   34: invokevirtual 58	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
    //   37: aload 7
    //   39: aload_2
    //   40: invokevirtual 65	android/os/Parcel:writeString	(Ljava/lang/String;)V
    //   43: aload 7
    //   45: aload_3
    //   46: invokevirtual 65	android/os/Parcel:writeString	(Ljava/lang/String;)V
    //   49: aload 7
    //   51: aload 4
    //   53: invokevirtual 104	android/os/Parcel:writeIntArray	([I)V
    //   56: aload 7
    //   58: iload 5
    //   60: invokevirtual 34	android/os/Parcel:writeInt	(I)V
    //   63: iload 9
    //   65: istore 5
    //   67: iload 6
    //   69: ifeq +6 -> 75
    //   72: iconst_1
    //   73: istore 5
    //   75: aload 7
    //   77: iload 5
    //   79: invokevirtual 34	android/os/Parcel:writeInt	(I)V
    //   82: aload_0
    //   83: getfield 15	com/google/android/gms/games/internal/IGamesService$Stub$Proxy:ko	Landroid/os/IBinder;
    //   86: sipush 12015
    //   89: aload 7
    //   91: aload 8
    //   93: iconst_0
    //   94: invokeinterface 40 5 0
    //   99: pop
    //   100: aload 8
    //   102: invokevirtual 43	android/os/Parcel:readException	()V
    //   105: aload 8
    //   107: invokevirtual 46	android/os/Parcel:recycle	()V
    //   110: aload 7
    //   112: invokevirtual 46	android/os/Parcel:recycle	()V
    //   115: return
    //   116: aconst_null
    //   117: astore_1
    //   118: goto -87 -> 31
    //   121: astore_1
    //   122: aload 8
    //   124: invokevirtual 46	android/os/Parcel:recycle	()V
    //   127: aload 7
    //   129: invokevirtual 46	android/os/Parcel:recycle	()V
    //   132: aload_1
    //   133: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	134	0	this	Proxy
    //   0	134	1	paramIGamesCallbacks	IGamesCallbacks
    //   0	134	2	paramString1	String
    //   0	134	3	paramString2	String
    //   0	134	4	paramArrayOfInt	int[]
    //   0	134	5	paramInt	int
    //   0	134	6	paramBoolean	boolean
    //   6	122	7	localParcel1	Parcel
    //   11	112	8	localParcel2	Parcel
    //   1	63	9	i	int
    // Exception table:
    //   from	to	target	type
    //   13	20	121	finally
    //   24	31	121	finally
    //   31	63	121	finally
    //   75	105	121	finally
  }
  
  /* Error */
  public void a(IGamesCallbacks paramIGamesCallbacks, String paramString1, String paramString2, String[] paramArrayOfString)
  {
    // Byte code:
    //   0: invokestatic 24	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   3: astore 5
    //   5: invokestatic 24	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   8: astore 6
    //   10: aload 5
    //   12: ldc 26
    //   14: invokevirtual 30	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
    //   17: aload_1
    //   18: ifnull +69 -> 87
    //   21: aload_1
    //   22: invokeinterface 55 1 0
    //   27: astore_1
    //   28: aload 5
    //   30: aload_1
    //   31: invokevirtual 58	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
    //   34: aload 5
    //   36: aload_2
    //   37: invokevirtual 65	android/os/Parcel:writeString	(Ljava/lang/String;)V
    //   40: aload 5
    //   42: aload_3
    //   43: invokevirtual 65	android/os/Parcel:writeString	(Ljava/lang/String;)V
    //   46: aload 5
    //   48: aload 4
    //   50: invokevirtual 134	android/os/Parcel:writeStringArray	([Ljava/lang/String;)V
    //   53: aload_0
    //   54: getfield 15	com/google/android/gms/games/internal/IGamesService$Stub$Proxy:ko	Landroid/os/IBinder;
    //   57: sipush 10008
    //   60: aload 5
    //   62: aload 6
    //   64: iconst_0
    //   65: invokeinterface 40 5 0
    //   70: pop
    //   71: aload 6
    //   73: invokevirtual 43	android/os/Parcel:readException	()V
    //   76: aload 6
    //   78: invokevirtual 46	android/os/Parcel:recycle	()V
    //   81: aload 5
    //   83: invokevirtual 46	android/os/Parcel:recycle	()V
    //   86: return
    //   87: aconst_null
    //   88: astore_1
    //   89: goto -61 -> 28
    //   92: astore_1
    //   93: aload 6
    //   95: invokevirtual 46	android/os/Parcel:recycle	()V
    //   98: aload 5
    //   100: invokevirtual 46	android/os/Parcel:recycle	()V
    //   103: aload_1
    //   104: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	105	0	this	Proxy
    //   0	105	1	paramIGamesCallbacks	IGamesCallbacks
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
  public void a(IGamesCallbacks paramIGamesCallbacks, String paramString1, String paramString2, String[] paramArrayOfString, boolean paramBoolean)
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore 8
    //   3: invokestatic 24	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   6: astore 6
    //   8: invokestatic 24	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   11: astore 7
    //   13: aload 6
    //   15: ldc 26
    //   17: invokevirtual 30	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
    //   20: aload_1
    //   21: ifnull +84 -> 105
    //   24: aload_1
    //   25: invokeinterface 55 1 0
    //   30: astore_1
    //   31: aload 6
    //   33: aload_1
    //   34: invokevirtual 58	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
    //   37: aload 6
    //   39: aload_2
    //   40: invokevirtual 65	android/os/Parcel:writeString	(Ljava/lang/String;)V
    //   43: aload 6
    //   45: aload_3
    //   46: invokevirtual 65	android/os/Parcel:writeString	(Ljava/lang/String;)V
    //   49: aload 6
    //   51: aload 4
    //   53: invokevirtual 134	android/os/Parcel:writeStringArray	([Ljava/lang/String;)V
    //   56: iload 5
    //   58: ifeq +6 -> 64
    //   61: iconst_1
    //   62: istore 8
    //   64: aload 6
    //   66: iload 8
    //   68: invokevirtual 34	android/os/Parcel:writeInt	(I)V
    //   71: aload_0
    //   72: getfield 15	com/google/android/gms/games/internal/IGamesService$Stub$Proxy:ko	Landroid/os/IBinder;
    //   75: sipush 12028
    //   78: aload 6
    //   80: aload 7
    //   82: iconst_0
    //   83: invokeinterface 40 5 0
    //   88: pop
    //   89: aload 7
    //   91: invokevirtual 43	android/os/Parcel:readException	()V
    //   94: aload 7
    //   96: invokevirtual 46	android/os/Parcel:recycle	()V
    //   99: aload 6
    //   101: invokevirtual 46	android/os/Parcel:recycle	()V
    //   104: return
    //   105: aconst_null
    //   106: astore_1
    //   107: goto -76 -> 31
    //   110: astore_1
    //   111: aload 7
    //   113: invokevirtual 46	android/os/Parcel:recycle	()V
    //   116: aload 6
    //   118: invokevirtual 46	android/os/Parcel:recycle	()V
    //   121: aload_1
    //   122: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	123	0	this	Proxy
    //   0	123	1	paramIGamesCallbacks	IGamesCallbacks
    //   0	123	2	paramString1	String
    //   0	123	3	paramString2	String
    //   0	123	4	paramArrayOfString	String[]
    //   0	123	5	paramBoolean	boolean
    //   6	111	6	localParcel1	Parcel
    //   11	101	7	localParcel2	Parcel
    //   1	66	8	i	int
    // Exception table:
    //   from	to	target	type
    //   13	20	110	finally
    //   24	31	110	finally
    //   31	56	110	finally
    //   64	94	110	finally
  }
  
  /* Error */
  public void a(IGamesCallbacks paramIGamesCallbacks, String paramString, boolean paramBoolean)
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore 6
    //   3: invokestatic 24	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   6: astore 4
    //   8: invokestatic 24	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   11: astore 5
    //   13: aload 4
    //   15: ldc 26
    //   17: invokevirtual 30	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
    //   20: aload_1
    //   21: ifnull +70 -> 91
    //   24: aload_1
    //   25: invokeinterface 55 1 0
    //   30: astore_1
    //   31: aload 4
    //   33: aload_1
    //   34: invokevirtual 58	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
    //   37: aload 4
    //   39: aload_2
    //   40: invokevirtual 65	android/os/Parcel:writeString	(Ljava/lang/String;)V
    //   43: iload_3
    //   44: ifeq +6 -> 50
    //   47: iconst_1
    //   48: istore 6
    //   50: aload 4
    //   52: iload 6
    //   54: invokevirtual 34	android/os/Parcel:writeInt	(I)V
    //   57: aload_0
    //   58: getfield 15	com/google/android/gms/games/internal/IGamesService$Stub$Proxy:ko	Landroid/os/IBinder;
    //   61: sipush 5054
    //   64: aload 4
    //   66: aload 5
    //   68: iconst_0
    //   69: invokeinterface 40 5 0
    //   74: pop
    //   75: aload 5
    //   77: invokevirtual 43	android/os/Parcel:readException	()V
    //   80: aload 5
    //   82: invokevirtual 46	android/os/Parcel:recycle	()V
    //   85: aload 4
    //   87: invokevirtual 46	android/os/Parcel:recycle	()V
    //   90: return
    //   91: aconst_null
    //   92: astore_1
    //   93: goto -62 -> 31
    //   96: astore_1
    //   97: aload 5
    //   99: invokevirtual 46	android/os/Parcel:recycle	()V
    //   102: aload 4
    //   104: invokevirtual 46	android/os/Parcel:recycle	()V
    //   107: aload_1
    //   108: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	109	0	this	Proxy
    //   0	109	1	paramIGamesCallbacks	IGamesCallbacks
    //   0	109	2	paramString	String
    //   0	109	3	paramBoolean	boolean
    //   6	97	4	localParcel1	Parcel
    //   11	87	5	localParcel2	Parcel
    //   1	52	6	i	int
    // Exception table:
    //   from	to	target	type
    //   13	20	96	finally
    //   24	31	96	finally
    //   31	43	96	finally
    //   50	80	96	finally
  }
  
  /* Error */
  public void a(IGamesCallbacks paramIGamesCallbacks, String paramString1, byte[] paramArrayOfByte, String paramString2, com.google.android.gms.games.multiplayer.ParticipantResult[] paramArrayOfParticipantResult)
  {
    // Byte code:
    //   0: invokestatic 24	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   3: astore 6
    //   5: invokestatic 24	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   8: astore 7
    //   10: aload 6
    //   12: ldc 26
    //   14: invokevirtual 30	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
    //   17: aload_1
    //   18: ifnull +77 -> 95
    //   21: aload_1
    //   22: invokeinterface 55 1 0
    //   27: astore_1
    //   28: aload 6
    //   30: aload_1
    //   31: invokevirtual 58	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
    //   34: aload 6
    //   36: aload_2
    //   37: invokevirtual 65	android/os/Parcel:writeString	(Ljava/lang/String;)V
    //   40: aload 6
    //   42: aload_3
    //   43: invokevirtual 62	android/os/Parcel:writeByteArray	([B)V
    //   46: aload 6
    //   48: aload 4
    //   50: invokevirtual 65	android/os/Parcel:writeString	(Ljava/lang/String;)V
    //   53: aload 6
    //   55: aload 5
    //   57: iconst_0
    //   58: invokevirtual 109	android/os/Parcel:writeTypedArray	([Landroid/os/Parcelable;I)V
    //   61: aload_0
    //   62: getfield 15	com/google/android/gms/games/internal/IGamesService$Stub$Proxy:ko	Landroid/os/IBinder;
    //   65: sipush 8007
    //   68: aload 6
    //   70: aload 7
    //   72: iconst_0
    //   73: invokeinterface 40 5 0
    //   78: pop
    //   79: aload 7
    //   81: invokevirtual 43	android/os/Parcel:readException	()V
    //   84: aload 7
    //   86: invokevirtual 46	android/os/Parcel:recycle	()V
    //   89: aload 6
    //   91: invokevirtual 46	android/os/Parcel:recycle	()V
    //   94: return
    //   95: aconst_null
    //   96: astore_1
    //   97: goto -69 -> 28
    //   100: astore_1
    //   101: aload 7
    //   103: invokevirtual 46	android/os/Parcel:recycle	()V
    //   106: aload 6
    //   108: invokevirtual 46	android/os/Parcel:recycle	()V
    //   111: aload_1
    //   112: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	113	0	this	Proxy
    //   0	113	1	paramIGamesCallbacks	IGamesCallbacks
    //   0	113	2	paramString1	String
    //   0	113	3	paramArrayOfByte	byte[]
    //   0	113	4	paramString2	String
    //   0	113	5	paramArrayOfParticipantResult	com.google.android.gms.games.multiplayer.ParticipantResult[]
    //   3	104	6	localParcel1	Parcel
    //   8	94	7	localParcel2	Parcel
    // Exception table:
    //   from	to	target	type
    //   10	17	100	finally
    //   21	28	100	finally
    //   28	84	100	finally
  }
  
  /* Error */
  public void a(IGamesCallbacks paramIGamesCallbacks, String paramString, byte[] paramArrayOfByte, com.google.android.gms.games.multiplayer.ParticipantResult[] paramArrayOfParticipantResult)
  {
    // Byte code:
    //   0: invokestatic 24	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   3: astore 5
    //   5: invokestatic 24	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   8: astore 6
    //   10: aload 5
    //   12: ldc 26
    //   14: invokevirtual 30	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
    //   17: aload_1
    //   18: ifnull +70 -> 88
    //   21: aload_1
    //   22: invokeinterface 55 1 0
    //   27: astore_1
    //   28: aload 5
    //   30: aload_1
    //   31: invokevirtual 58	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
    //   34: aload 5
    //   36: aload_2
    //   37: invokevirtual 65	android/os/Parcel:writeString	(Ljava/lang/String;)V
    //   40: aload 5
    //   42: aload_3
    //   43: invokevirtual 62	android/os/Parcel:writeByteArray	([B)V
    //   46: aload 5
    //   48: aload 4
    //   50: iconst_0
    //   51: invokevirtual 109	android/os/Parcel:writeTypedArray	([Landroid/os/Parcelable;I)V
    //   54: aload_0
    //   55: getfield 15	com/google/android/gms/games/internal/IGamesService$Stub$Proxy:ko	Landroid/os/IBinder;
    //   58: sipush 8008
    //   61: aload 5
    //   63: aload 6
    //   65: iconst_0
    //   66: invokeinterface 40 5 0
    //   71: pop
    //   72: aload 6
    //   74: invokevirtual 43	android/os/Parcel:readException	()V
    //   77: aload 6
    //   79: invokevirtual 46	android/os/Parcel:recycle	()V
    //   82: aload 5
    //   84: invokevirtual 46	android/os/Parcel:recycle	()V
    //   87: return
    //   88: aconst_null
    //   89: astore_1
    //   90: goto -62 -> 28
    //   93: astore_1
    //   94: aload 6
    //   96: invokevirtual 46	android/os/Parcel:recycle	()V
    //   99: aload 5
    //   101: invokevirtual 46	android/os/Parcel:recycle	()V
    //   104: aload_1
    //   105: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	106	0	this	Proxy
    //   0	106	1	paramIGamesCallbacks	IGamesCallbacks
    //   0	106	2	paramString	String
    //   0	106	3	paramArrayOfByte	byte[]
    //   0	106	4	paramArrayOfParticipantResult	com.google.android.gms.games.multiplayer.ParticipantResult[]
    //   3	97	5	localParcel1	Parcel
    //   8	87	6	localParcel2	Parcel
    // Exception table:
    //   from	to	target	type
    //   10	17	93	finally
    //   21	28	93	finally
    //   28	77	93	finally
  }
  
  /* Error */
  public void a(IGamesCallbacks paramIGamesCallbacks, String paramString, int[] paramArrayOfInt)
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
    //   18: ifnull +62 -> 80
    //   21: aload_1
    //   22: invokeinterface 55 1 0
    //   27: astore_1
    //   28: aload 4
    //   30: aload_1
    //   31: invokevirtual 58	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
    //   34: aload 4
    //   36: aload_2
    //   37: invokevirtual 65	android/os/Parcel:writeString	(Ljava/lang/String;)V
    //   40: aload 4
    //   42: aload_3
    //   43: invokevirtual 104	android/os/Parcel:writeIntArray	([I)V
    //   46: aload_0
    //   47: getfield 15	com/google/android/gms/games/internal/IGamesService$Stub$Proxy:ko	Landroid/os/IBinder;
    //   50: sipush 8017
    //   53: aload 4
    //   55: aload 5
    //   57: iconst_0
    //   58: invokeinterface 40 5 0
    //   63: pop
    //   64: aload 5
    //   66: invokevirtual 43	android/os/Parcel:readException	()V
    //   69: aload 5
    //   71: invokevirtual 46	android/os/Parcel:recycle	()V
    //   74: aload 4
    //   76: invokevirtual 46	android/os/Parcel:recycle	()V
    //   79: return
    //   80: aconst_null
    //   81: astore_1
    //   82: goto -54 -> 28
    //   85: astore_1
    //   86: aload 5
    //   88: invokevirtual 46	android/os/Parcel:recycle	()V
    //   91: aload 4
    //   93: invokevirtual 46	android/os/Parcel:recycle	()V
    //   96: aload_1
    //   97: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	98	0	this	Proxy
    //   0	98	1	paramIGamesCallbacks	IGamesCallbacks
    //   0	98	2	paramString	String
    //   0	98	3	paramArrayOfInt	int[]
    //   3	89	4	localParcel1	Parcel
    //   8	79	5	localParcel2	Parcel
    // Exception table:
    //   from	to	target	type
    //   10	17	85	finally
    //   21	28	85	finally
    //   28	69	85	finally
  }
  
  /* Error */
  public void a(IGamesCallbacks paramIGamesCallbacks, String paramString, String[] paramArrayOfString, int paramInt1, byte[] paramArrayOfByte, int paramInt2)
  {
    // Byte code:
    //   0: invokestatic 24	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   3: astore 7
    //   5: invokestatic 24	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   8: astore 8
    //   10: aload 7
    //   12: ldc 26
    //   14: invokevirtual 30	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
    //   17: aload_1
    //   18: ifnull +83 -> 101
    //   21: aload_1
    //   22: invokeinterface 55 1 0
    //   27: astore_1
    //   28: aload 7
    //   30: aload_1
    //   31: invokevirtual 58	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
    //   34: aload 7
    //   36: aload_2
    //   37: invokevirtual 65	android/os/Parcel:writeString	(Ljava/lang/String;)V
    //   40: aload 7
    //   42: aload_3
    //   43: invokevirtual 134	android/os/Parcel:writeStringArray	([Ljava/lang/String;)V
    //   46: aload 7
    //   48: iload 4
    //   50: invokevirtual 34	android/os/Parcel:writeInt	(I)V
    //   53: aload 7
    //   55: aload 5
    //   57: invokevirtual 62	android/os/Parcel:writeByteArray	([B)V
    //   60: aload 7
    //   62: iload 6
    //   64: invokevirtual 34	android/os/Parcel:writeInt	(I)V
    //   67: aload_0
    //   68: getfield 15	com/google/android/gms/games/internal/IGamesService$Stub$Proxy:ko	Landroid/os/IBinder;
    //   71: sipush 10005
    //   74: aload 7
    //   76: aload 8
    //   78: iconst_0
    //   79: invokeinterface 40 5 0
    //   84: pop
    //   85: aload 8
    //   87: invokevirtual 43	android/os/Parcel:readException	()V
    //   90: aload 8
    //   92: invokevirtual 46	android/os/Parcel:recycle	()V
    //   95: aload 7
    //   97: invokevirtual 46	android/os/Parcel:recycle	()V
    //   100: return
    //   101: aconst_null
    //   102: astore_1
    //   103: goto -75 -> 28
    //   106: astore_1
    //   107: aload 8
    //   109: invokevirtual 46	android/os/Parcel:recycle	()V
    //   112: aload 7
    //   114: invokevirtual 46	android/os/Parcel:recycle	()V
    //   117: aload_1
    //   118: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	119	0	this	Proxy
    //   0	119	1	paramIGamesCallbacks	IGamesCallbacks
    //   0	119	2	paramString	String
    //   0	119	3	paramArrayOfString	String[]
    //   0	119	4	paramInt1	int
    //   0	119	5	paramArrayOfByte	byte[]
    //   0	119	6	paramInt2	int
    //   3	110	7	localParcel1	Parcel
    //   8	100	8	localParcel2	Parcel
    // Exception table:
    //   from	to	target	type
    //   10	17	106	finally
    //   21	28	106	finally
    //   28	90	106	finally
  }
  
  /* Error */
  public void a(IGamesCallbacks paramIGamesCallbacks, boolean paramBoolean)
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
    //   19: ifnull +60 -> 79
    //   22: aload_1
    //   23: invokeinterface 55 1 0
    //   28: astore_1
    //   29: aload_3
    //   30: aload_1
    //   31: invokevirtual 58	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
    //   34: iload_2
    //   35: ifeq +6 -> 41
    //   38: iconst_1
    //   39: istore 5
    //   41: aload_3
    //   42: iload 5
    //   44: invokevirtual 34	android/os/Parcel:writeInt	(I)V
    //   47: aload_0
    //   48: getfield 15	com/google/android/gms/games/internal/IGamesService$Stub$Proxy:ko	Landroid/os/IBinder;
    //   51: sipush 6001
    //   54: aload_3
    //   55: aload 4
    //   57: iconst_0
    //   58: invokeinterface 40 5 0
    //   63: pop
    //   64: aload 4
    //   66: invokevirtual 43	android/os/Parcel:readException	()V
    //   69: aload 4
    //   71: invokevirtual 46	android/os/Parcel:recycle	()V
    //   74: aload_3
    //   75: invokevirtual 46	android/os/Parcel:recycle	()V
    //   78: return
    //   79: aconst_null
    //   80: astore_1
    //   81: goto -52 -> 29
    //   84: astore_1
    //   85: aload 4
    //   87: invokevirtual 46	android/os/Parcel:recycle	()V
    //   90: aload_3
    //   91: invokevirtual 46	android/os/Parcel:recycle	()V
    //   94: aload_1
    //   95: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	96	0	this	Proxy
    //   0	96	1	paramIGamesCallbacks	IGamesCallbacks
    //   0	96	2	paramBoolean	boolean
    //   6	85	3	localParcel1	Parcel
    //   10	76	4	localParcel2	Parcel
    //   1	42	5	i	int
    // Exception table:
    //   from	to	target	type
    //   12	18	84	finally
    //   22	29	84	finally
    //   29	34	84	finally
    //   41	69	84	finally
  }
  
  /* Error */
  public void a(IGamesCallbacks paramIGamesCallbacks, boolean paramBoolean, Bundle paramBundle)
  {
    // Byte code:
    //   0: iconst_1
    //   1: istore 6
    //   3: invokestatic 24	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   6: astore 4
    //   8: invokestatic 24	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   11: astore 5
    //   13: aload 4
    //   15: ldc 26
    //   17: invokevirtual 30	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
    //   20: aload_1
    //   21: ifnull +78 -> 99
    //   24: aload_1
    //   25: invokeinterface 55 1 0
    //   30: astore_1
    //   31: aload 4
    //   33: aload_1
    //   34: invokevirtual 58	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
    //   37: iload_2
    //   38: ifeq +66 -> 104
    //   41: aload 4
    //   43: iload 6
    //   45: invokevirtual 34	android/os/Parcel:writeInt	(I)V
    //   48: aload_3
    //   49: ifnull +61 -> 110
    //   52: aload 4
    //   54: iconst_1
    //   55: invokevirtual 34	android/os/Parcel:writeInt	(I)V
    //   58: aload_3
    //   59: aload 4
    //   61: iconst_0
    //   62: invokevirtual 121	android/os/Bundle:writeToParcel	(Landroid/os/Parcel;I)V
    //   65: aload_0
    //   66: getfield 15	com/google/android/gms/games/internal/IGamesService$Stub$Proxy:ko	Landroid/os/IBinder;
    //   69: sipush 5063
    //   72: aload 4
    //   74: aload 5
    //   76: iconst_0
    //   77: invokeinterface 40 5 0
    //   82: pop
    //   83: aload 5
    //   85: invokevirtual 43	android/os/Parcel:readException	()V
    //   88: aload 5
    //   90: invokevirtual 46	android/os/Parcel:recycle	()V
    //   93: aload 4
    //   95: invokevirtual 46	android/os/Parcel:recycle	()V
    //   98: return
    //   99: aconst_null
    //   100: astore_1
    //   101: goto -70 -> 31
    //   104: iconst_0
    //   105: istore 6
    //   107: goto -66 -> 41
    //   110: aload 4
    //   112: iconst_0
    //   113: invokevirtual 34	android/os/Parcel:writeInt	(I)V
    //   116: goto -51 -> 65
    //   119: astore_1
    //   120: aload 5
    //   122: invokevirtual 46	android/os/Parcel:recycle	()V
    //   125: aload 4
    //   127: invokevirtual 46	android/os/Parcel:recycle	()V
    //   130: aload_1
    //   131: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	132	0	this	Proxy
    //   0	132	1	paramIGamesCallbacks	IGamesCallbacks
    //   0	132	2	paramBoolean	boolean
    //   0	132	3	paramBundle	Bundle
    //   6	120	4	localParcel1	Parcel
    //   11	110	5	localParcel2	Parcel
    //   1	105	6	i	int
    // Exception table:
    //   from	to	target	type
    //   13	20	119	finally
    //   24	31	119	finally
    //   31	37	119	finally
    //   41	48	119	finally
    //   52	65	119	finally
    //   65	88	119	finally
    //   110	116	119	finally
  }
  
  /* Error */
  public void a(IGamesCallbacks paramIGamesCallbacks, boolean paramBoolean, String[] paramArrayOfString)
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore 6
    //   3: invokestatic 24	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   6: astore 4
    //   8: invokestatic 24	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   11: astore 5
    //   13: aload 4
    //   15: ldc 26
    //   17: invokevirtual 30	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
    //   20: aload_1
    //   21: ifnull +70 -> 91
    //   24: aload_1
    //   25: invokeinterface 55 1 0
    //   30: astore_1
    //   31: aload 4
    //   33: aload_1
    //   34: invokevirtual 58	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
    //   37: iload_2
    //   38: ifeq +6 -> 44
    //   41: iconst_1
    //   42: istore 6
    //   44: aload 4
    //   46: iload 6
    //   48: invokevirtual 34	android/os/Parcel:writeInt	(I)V
    //   51: aload 4
    //   53: aload_3
    //   54: invokevirtual 134	android/os/Parcel:writeStringArray	([Ljava/lang/String;)V
    //   57: aload_0
    //   58: getfield 15	com/google/android/gms/games/internal/IGamesService$Stub$Proxy:ko	Landroid/os/IBinder;
    //   61: sipush 12031
    //   64: aload 4
    //   66: aload 5
    //   68: iconst_0
    //   69: invokeinterface 40 5 0
    //   74: pop
    //   75: aload 5
    //   77: invokevirtual 43	android/os/Parcel:readException	()V
    //   80: aload 5
    //   82: invokevirtual 46	android/os/Parcel:recycle	()V
    //   85: aload 4
    //   87: invokevirtual 46	android/os/Parcel:recycle	()V
    //   90: return
    //   91: aconst_null
    //   92: astore_1
    //   93: goto -62 -> 31
    //   96: astore_1
    //   97: aload 5
    //   99: invokevirtual 46	android/os/Parcel:recycle	()V
    //   102: aload 4
    //   104: invokevirtual 46	android/os/Parcel:recycle	()V
    //   107: aload_1
    //   108: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	109	0	this	Proxy
    //   0	109	1	paramIGamesCallbacks	IGamesCallbacks
    //   0	109	2	paramBoolean	boolean
    //   0	109	3	paramArrayOfString	String[]
    //   6	97	4	localParcel1	Parcel
    //   11	87	5	localParcel2	Parcel
    //   1	46	6	i	int
    // Exception table:
    //   from	to	target	type
    //   13	20	96	finally
    //   24	31	96	finally
    //   31	37	96	finally
    //   44	80	96	finally
  }
  
  /* Error */
  public void a(IGamesCallbacks paramIGamesCallbacks, int[] paramArrayOfInt)
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
    //   16: ifnull +52 -> 68
    //   19: aload_1
    //   20: invokeinterface 55 1 0
    //   25: astore_1
    //   26: aload_3
    //   27: aload_1
    //   28: invokevirtual 58	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
    //   31: aload_3
    //   32: aload_2
    //   33: invokevirtual 104	android/os/Parcel:writeIntArray	([I)V
    //   36: aload_0
    //   37: getfield 15	com/google/android/gms/games/internal/IGamesService$Stub$Proxy:ko	Landroid/os/IBinder;
    //   40: sipush 8003
    //   43: aload_3
    //   44: aload 4
    //   46: iconst_0
    //   47: invokeinterface 40 5 0
    //   52: pop
    //   53: aload 4
    //   55: invokevirtual 43	android/os/Parcel:readException	()V
    //   58: aload 4
    //   60: invokevirtual 46	android/os/Parcel:recycle	()V
    //   63: aload_3
    //   64: invokevirtual 46	android/os/Parcel:recycle	()V
    //   67: return
    //   68: aconst_null
    //   69: astore_1
    //   70: goto -44 -> 26
    //   73: astore_1
    //   74: aload 4
    //   76: invokevirtual 46	android/os/Parcel:recycle	()V
    //   79: aload_3
    //   80: invokevirtual 46	android/os/Parcel:recycle	()V
    //   83: aload_1
    //   84: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	85	0	this	Proxy
    //   0	85	1	paramIGamesCallbacks	IGamesCallbacks
    //   0	85	2	paramArrayOfInt	int[]
    //   3	77	3	localParcel1	Parcel
    //   7	68	4	localParcel2	Parcel
    // Exception table:
    //   from	to	target	type
    //   9	15	73	finally
    //   19	26	73	finally
    //   26	58	73	finally
  }
  
  /* Error */
  public void a(IGamesCallbacks paramIGamesCallbacks, int[] paramArrayOfInt, int paramInt, boolean paramBoolean)
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore 7
    //   3: invokestatic 24	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   6: astore 5
    //   8: invokestatic 24	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   11: astore 6
    //   13: aload 5
    //   15: ldc 26
    //   17: invokevirtual 30	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
    //   20: aload_1
    //   21: ifnull +78 -> 99
    //   24: aload_1
    //   25: invokeinterface 55 1 0
    //   30: astore_1
    //   31: aload 5
    //   33: aload_1
    //   34: invokevirtual 58	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
    //   37: aload 5
    //   39: aload_2
    //   40: invokevirtual 104	android/os/Parcel:writeIntArray	([I)V
    //   43: aload 5
    //   45: iload_3
    //   46: invokevirtual 34	android/os/Parcel:writeInt	(I)V
    //   49: iload 7
    //   51: istore_3
    //   52: iload 4
    //   54: ifeq +5 -> 59
    //   57: iconst_1
    //   58: istore_3
    //   59: aload 5
    //   61: iload_3
    //   62: invokevirtual 34	android/os/Parcel:writeInt	(I)V
    //   65: aload_0
    //   66: getfield 15	com/google/android/gms/games/internal/IGamesService$Stub$Proxy:ko	Landroid/os/IBinder;
    //   69: sipush 12010
    //   72: aload 5
    //   74: aload 6
    //   76: iconst_0
    //   77: invokeinterface 40 5 0
    //   82: pop
    //   83: aload 6
    //   85: invokevirtual 43	android/os/Parcel:readException	()V
    //   88: aload 6
    //   90: invokevirtual 46	android/os/Parcel:recycle	()V
    //   93: aload 5
    //   95: invokevirtual 46	android/os/Parcel:recycle	()V
    //   98: return
    //   99: aconst_null
    //   100: astore_1
    //   101: goto -70 -> 31
    //   104: astore_1
    //   105: aload 6
    //   107: invokevirtual 46	android/os/Parcel:recycle	()V
    //   110: aload 5
    //   112: invokevirtual 46	android/os/Parcel:recycle	()V
    //   115: aload_1
    //   116: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	117	0	this	Proxy
    //   0	117	1	paramIGamesCallbacks	IGamesCallbacks
    //   0	117	2	paramArrayOfInt	int[]
    //   0	117	3	paramInt	int
    //   0	117	4	paramBoolean	boolean
    //   6	105	5	localParcel1	Parcel
    //   11	95	6	localParcel2	Parcel
    //   1	49	7	i	int
    // Exception table:
    //   from	to	target	type
    //   13	20	104	finally
    //   24	31	104	finally
    //   31	49	104	finally
    //   59	88	104	finally
  }
  
  /* Error */
  public void a(IGamesCallbacks paramIGamesCallbacks, String[] paramArrayOfString)
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
    //   16: ifnull +52 -> 68
    //   19: aload_1
    //   20: invokeinterface 55 1 0
    //   25: astore_1
    //   26: aload_3
    //   27: aload_1
    //   28: invokevirtual 58	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
    //   31: aload_3
    //   32: aload_2
    //   33: invokevirtual 134	android/os/Parcel:writeStringArray	([Ljava/lang/String;)V
    //   36: aload_0
    //   37: getfield 15	com/google/android/gms/games/internal/IGamesService$Stub$Proxy:ko	Landroid/os/IBinder;
    //   40: sipush 10006
    //   43: aload_3
    //   44: aload 4
    //   46: iconst_0
    //   47: invokeinterface 40 5 0
    //   52: pop
    //   53: aload 4
    //   55: invokevirtual 43	android/os/Parcel:readException	()V
    //   58: aload 4
    //   60: invokevirtual 46	android/os/Parcel:recycle	()V
    //   63: aload_3
    //   64: invokevirtual 46	android/os/Parcel:recycle	()V
    //   67: return
    //   68: aconst_null
    //   69: astore_1
    //   70: goto -44 -> 26
    //   73: astore_1
    //   74: aload 4
    //   76: invokevirtual 46	android/os/Parcel:recycle	()V
    //   79: aload_3
    //   80: invokevirtual 46	android/os/Parcel:recycle	()V
    //   83: aload_1
    //   84: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	85	0	this	Proxy
    //   0	85	1	paramIGamesCallbacks	IGamesCallbacks
    //   0	85	2	paramArrayOfString	String[]
    //   3	77	3	localParcel1	Parcel
    //   7	68	4	localParcel2	Parcel
    // Exception table:
    //   from	to	target	type
    //   9	15	73	finally
    //   19	26	73	finally
    //   26	58	73	finally
  }
  
  /* Error */
  public void a(IGamesCallbacks paramIGamesCallbacks, String[] paramArrayOfString, boolean paramBoolean)
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore 6
    //   3: invokestatic 24	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   6: astore 4
    //   8: invokestatic 24	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   11: astore 5
    //   13: aload 4
    //   15: ldc 26
    //   17: invokevirtual 30	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
    //   20: aload_1
    //   21: ifnull +70 -> 91
    //   24: aload_1
    //   25: invokeinterface 55 1 0
    //   30: astore_1
    //   31: aload 4
    //   33: aload_1
    //   34: invokevirtual 58	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
    //   37: aload 4
    //   39: aload_2
    //   40: invokevirtual 134	android/os/Parcel:writeStringArray	([Ljava/lang/String;)V
    //   43: iload_3
    //   44: ifeq +6 -> 50
    //   47: iconst_1
    //   48: istore 6
    //   50: aload 4
    //   52: iload 6
    //   54: invokevirtual 34	android/os/Parcel:writeInt	(I)V
    //   57: aload_0
    //   58: getfield 15	com/google/android/gms/games/internal/IGamesService$Stub$Proxy:ko	Landroid/os/IBinder;
    //   61: sipush 12029
    //   64: aload 4
    //   66: aload 5
    //   68: iconst_0
    //   69: invokeinterface 40 5 0
    //   74: pop
    //   75: aload 5
    //   77: invokevirtual 43	android/os/Parcel:readException	()V
    //   80: aload 5
    //   82: invokevirtual 46	android/os/Parcel:recycle	()V
    //   85: aload 4
    //   87: invokevirtual 46	android/os/Parcel:recycle	()V
    //   90: return
    //   91: aconst_null
    //   92: astore_1
    //   93: goto -62 -> 31
    //   96: astore_1
    //   97: aload 5
    //   99: invokevirtual 46	android/os/Parcel:recycle	()V
    //   102: aload 4
    //   104: invokevirtual 46	android/os/Parcel:recycle	()V
    //   107: aload_1
    //   108: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	109	0	this	Proxy
    //   0	109	1	paramIGamesCallbacks	IGamesCallbacks
    //   0	109	2	paramArrayOfString	String[]
    //   0	109	3	paramBoolean	boolean
    //   6	97	4	localParcel1	Parcel
    //   11	87	5	localParcel2	Parcel
    //   1	52	6	i	int
    // Exception table:
    //   from	to	target	type
    //   13	20	96	finally
    //   24	31	96	finally
    //   31	43	96	finally
    //   50	80	96	finally
  }
  
  /* Error */
  public Intent aR(String paramString)
  {
    // Byte code:
    //   0: invokestatic 24	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   3: astore_2
    //   4: invokestatic 24	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   7: astore_3
    //   8: aload_2
    //   9: ldc 26
    //   11: invokevirtual 30	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
    //   14: aload_2
    //   15: aload_1
    //   16: invokevirtual 65	android/os/Parcel:writeString	(Ljava/lang/String;)V
    //   19: aload_0
    //   20: getfield 15	com/google/android/gms/games/internal/IGamesService$Stub$Proxy:ko	Landroid/os/IBinder;
    //   23: sipush 9004
    //   26: aload_2
    //   27: aload_3
    //   28: iconst_0
    //   29: invokeinterface 40 5 0
    //   34: pop
    //   35: aload_3
    //   36: invokevirtual 43	android/os/Parcel:readException	()V
    //   39: aload_3
    //   40: invokevirtual 69	android/os/Parcel:readInt	()I
    //   43: ifeq +26 -> 69
    //   46: getstatic 76	android/content/Intent:CREATOR	Landroid/os/Parcelable$Creator;
    //   49: aload_3
    //   50: invokeinterface 82 2 0
    //   55: checkcast 72	android/content/Intent
    //   58: astore_1
    //   59: aload_3
    //   60: invokevirtual 46	android/os/Parcel:recycle	()V
    //   63: aload_2
    //   64: invokevirtual 46	android/os/Parcel:recycle	()V
    //   67: aload_1
    //   68: areturn
    //   69: aconst_null
    //   70: astore_1
    //   71: goto -12 -> 59
    //   74: astore_1
    //   75: aload_3
    //   76: invokevirtual 46	android/os/Parcel:recycle	()V
    //   79: aload_2
    //   80: invokevirtual 46	android/os/Parcel:recycle	()V
    //   83: aload_1
    //   84: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	85	0	this	Proxy
    //   0	85	1	paramString	String
    //   3	77	2	localParcel1	Parcel
    //   7	69	3	localParcel2	Parcel
    // Exception table:
    //   from	to	target	type
    //   8	59	74	finally
  }
  
  /* Error */
  public Intent aU(String paramString)
  {
    // Byte code:
    //   0: invokestatic 24	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   3: astore_2
    //   4: invokestatic 24	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   7: astore_3
    //   8: aload_2
    //   9: ldc 26
    //   11: invokevirtual 30	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
    //   14: aload_2
    //   15: aload_1
    //   16: invokevirtual 65	android/os/Parcel:writeString	(Ljava/lang/String;)V
    //   19: aload_0
    //   20: getfield 15	com/google/android/gms/games/internal/IGamesService$Stub$Proxy:ko	Landroid/os/IBinder;
    //   23: sipush 12034
    //   26: aload_2
    //   27: aload_3
    //   28: iconst_0
    //   29: invokeinterface 40 5 0
    //   34: pop
    //   35: aload_3
    //   36: invokevirtual 43	android/os/Parcel:readException	()V
    //   39: aload_3
    //   40: invokevirtual 69	android/os/Parcel:readInt	()I
    //   43: ifeq +26 -> 69
    //   46: getstatic 76	android/content/Intent:CREATOR	Landroid/os/Parcelable$Creator;
    //   49: aload_3
    //   50: invokeinterface 82 2 0
    //   55: checkcast 72	android/content/Intent
    //   58: astore_1
    //   59: aload_3
    //   60: invokevirtual 46	android/os/Parcel:recycle	()V
    //   63: aload_2
    //   64: invokevirtual 46	android/os/Parcel:recycle	()V
    //   67: aload_1
    //   68: areturn
    //   69: aconst_null
    //   70: astore_1
    //   71: goto -12 -> 59
    //   74: astore_1
    //   75: aload_3
    //   76: invokevirtual 46	android/os/Parcel:recycle	()V
    //   79: aload_2
    //   80: invokevirtual 46	android/os/Parcel:recycle	()V
    //   83: aload_1
    //   84: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	85	0	this	Proxy
    //   0	85	1	paramString	String
    //   3	77	2	localParcel1	Parcel
    //   7	69	3	localParcel2	Parcel
    // Exception table:
    //   from	to	target	type
    //   8	59	74	finally
  }
  
  public String aV(String paramString)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
      localParcel1.writeString(paramString);
      ko.transact(5064, localParcel1, localParcel2, 0);
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
  
  public String aW(String paramString)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
      localParcel1.writeString(paramString);
      ko.transact(5035, localParcel1, localParcel2, 0);
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
  
  public void aX(String paramString)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
      localParcel1.writeString(paramString);
      ko.transact(5050, localParcel1, localParcel2, 0);
      localParcel2.readException();
      return;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }
  
  public int aY(String paramString)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
      localParcel1.writeString(paramString);
      ko.transact(5060, localParcel1, localParcel2, 0);
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
  
  /* Error */
  public Uri aZ(String paramString)
  {
    // Byte code:
    //   0: invokestatic 24	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   3: astore_2
    //   4: invokestatic 24	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   7: astore_3
    //   8: aload_2
    //   9: ldc 26
    //   11: invokevirtual 30	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
    //   14: aload_2
    //   15: aload_1
    //   16: invokevirtual 65	android/os/Parcel:writeString	(Ljava/lang/String;)V
    //   19: aload_0
    //   20: getfield 15	com/google/android/gms/games/internal/IGamesService$Stub$Proxy:ko	Landroid/os/IBinder;
    //   23: sipush 5066
    //   26: aload_2
    //   27: aload_3
    //   28: iconst_0
    //   29: invokeinterface 40 5 0
    //   34: pop
    //   35: aload_3
    //   36: invokevirtual 43	android/os/Parcel:readException	()V
    //   39: aload_3
    //   40: invokevirtual 69	android/os/Parcel:readInt	()I
    //   43: ifeq +26 -> 69
    //   46: getstatic 194	android/net/Uri:CREATOR	Landroid/os/Parcelable$Creator;
    //   49: aload_3
    //   50: invokeinterface 82 2 0
    //   55: checkcast 111	android/net/Uri
    //   58: astore_1
    //   59: aload_3
    //   60: invokevirtual 46	android/os/Parcel:recycle	()V
    //   63: aload_2
    //   64: invokevirtual 46	android/os/Parcel:recycle	()V
    //   67: aload_1
    //   68: areturn
    //   69: aconst_null
    //   70: astore_1
    //   71: goto -12 -> 59
    //   74: astore_1
    //   75: aload_3
    //   76: invokevirtual 46	android/os/Parcel:recycle	()V
    //   79: aload_2
    //   80: invokevirtual 46	android/os/Parcel:recycle	()V
    //   83: aload_1
    //   84: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	85	0	this	Proxy
    //   0	85	1	paramString	String
    //   3	77	2	localParcel1	Parcel
    //   7	69	3	localParcel2	Parcel
    // Exception table:
    //   from	to	target	type
    //   8	59	74	finally
  }
  
  public IBinder asBinder()
  {
    return ko;
  }
  
  public int b(byte[] paramArrayOfByte, String paramString, String[] paramArrayOfString)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
      localParcel1.writeByteArray(paramArrayOfByte);
      localParcel1.writeString(paramString);
      localParcel1.writeStringArray(paramArrayOfString);
      ko.transact(5034, localParcel1, localParcel2, 0);
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
  
  /* Error */
  public Intent b(int paramInt1, int paramInt2, boolean paramBoolean)
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore 7
    //   3: invokestatic 24	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   6: astore 5
    //   8: invokestatic 24	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   11: astore 6
    //   13: aload 5
    //   15: ldc 26
    //   17: invokevirtual 30	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
    //   20: aload 5
    //   22: iload_1
    //   23: invokevirtual 34	android/os/Parcel:writeInt	(I)V
    //   26: aload 5
    //   28: iload_2
    //   29: invokevirtual 34	android/os/Parcel:writeInt	(I)V
    //   32: iload 7
    //   34: istore_1
    //   35: iload_3
    //   36: ifeq +5 -> 41
    //   39: iconst_1
    //   40: istore_1
    //   41: aload 5
    //   43: iload_1
    //   44: invokevirtual 34	android/os/Parcel:writeInt	(I)V
    //   47: aload_0
    //   48: getfield 15	com/google/android/gms/games/internal/IGamesService$Stub$Proxy:ko	Landroid/os/IBinder;
    //   51: sipush 9009
    //   54: aload 5
    //   56: aload 6
    //   58: iconst_0
    //   59: invokeinterface 40 5 0
    //   64: pop
    //   65: aload 6
    //   67: invokevirtual 43	android/os/Parcel:readException	()V
    //   70: aload 6
    //   72: invokevirtual 69	android/os/Parcel:readInt	()I
    //   75: ifeq +31 -> 106
    //   78: getstatic 76	android/content/Intent:CREATOR	Landroid/os/Parcelable$Creator;
    //   81: aload 6
    //   83: invokeinterface 82 2 0
    //   88: checkcast 72	android/content/Intent
    //   91: astore 4
    //   93: aload 6
    //   95: invokevirtual 46	android/os/Parcel:recycle	()V
    //   98: aload 5
    //   100: invokevirtual 46	android/os/Parcel:recycle	()V
    //   103: aload 4
    //   105: areturn
    //   106: aconst_null
    //   107: astore 4
    //   109: goto -16 -> 93
    //   112: astore 4
    //   114: aload 6
    //   116: invokevirtual 46	android/os/Parcel:recycle	()V
    //   119: aload 5
    //   121: invokevirtual 46	android/os/Parcel:recycle	()V
    //   124: aload 4
    //   126: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	127	0	this	Proxy
    //   0	127	1	paramInt1	int
    //   0	127	2	paramInt2	int
    //   0	127	3	paramBoolean	boolean
    //   91	17	4	localIntent	Intent
    //   112	13	4	localObject	Object
    //   6	114	5	localParcel1	Parcel
    //   11	104	6	localParcel2	Parcel
    //   1	32	7	i	int
    // Exception table:
    //   from	to	target	type
    //   13	32	112	finally
    //   41	93	112	finally
  }
  
  public void b(long paramLong, String paramString)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
      localParcel1.writeLong(paramLong);
      localParcel1.writeString(paramString);
      ko.transact(8021, localParcel1, localParcel2, 0);
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
  public void b(IGamesCallbacks paramIGamesCallbacks)
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
    //   15: ifnull +44 -> 59
    //   18: aload_1
    //   19: invokeinterface 55 1 0
    //   24: astore_1
    //   25: aload_2
    //   26: aload_1
    //   27: invokevirtual 58	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
    //   30: aload_0
    //   31: getfield 15	com/google/android/gms/games/internal/IGamesService$Stub$Proxy:ko	Landroid/os/IBinder;
    //   34: sipush 5017
    //   37: aload_2
    //   38: aload_3
    //   39: iconst_0
    //   40: invokeinterface 40 5 0
    //   45: pop
    //   46: aload_3
    //   47: invokevirtual 43	android/os/Parcel:readException	()V
    //   50: aload_3
    //   51: invokevirtual 46	android/os/Parcel:recycle	()V
    //   54: aload_2
    //   55: invokevirtual 46	android/os/Parcel:recycle	()V
    //   58: return
    //   59: aconst_null
    //   60: astore_1
    //   61: goto -36 -> 25
    //   64: astore_1
    //   65: aload_3
    //   66: invokevirtual 46	android/os/Parcel:recycle	()V
    //   69: aload_2
    //   70: invokevirtual 46	android/os/Parcel:recycle	()V
    //   73: aload_1
    //   74: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	75	0	this	Proxy
    //   0	75	1	paramIGamesCallbacks	IGamesCallbacks
    //   3	67	2	localParcel1	Parcel
    //   7	59	3	localParcel2	Parcel
    // Exception table:
    //   from	to	target	type
    //   8	14	64	finally
    //   18	25	64	finally
    //   25	50	64	finally
  }
  
  /* Error */
  public void b(IGamesCallbacks paramIGamesCallbacks, int paramInt, boolean paramBoolean1, boolean paramBoolean2)
  {
    // Byte code:
    //   0: iconst_1
    //   1: istore 7
    //   3: invokestatic 24	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   6: astore 5
    //   8: invokestatic 24	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   11: astore 6
    //   13: aload 5
    //   15: ldc 26
    //   17: invokevirtual 30	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
    //   20: aload_1
    //   21: ifnull +82 -> 103
    //   24: aload_1
    //   25: invokeinterface 55 1 0
    //   30: astore_1
    //   31: aload 5
    //   33: aload_1
    //   34: invokevirtual 58	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
    //   37: aload 5
    //   39: iload_2
    //   40: invokevirtual 34	android/os/Parcel:writeInt	(I)V
    //   43: iload_3
    //   44: ifeq +64 -> 108
    //   47: iconst_1
    //   48: istore_2
    //   49: aload 5
    //   51: iload_2
    //   52: invokevirtual 34	android/os/Parcel:writeInt	(I)V
    //   55: iload 4
    //   57: ifeq +56 -> 113
    //   60: iload 7
    //   62: istore_2
    //   63: aload 5
    //   65: iload_2
    //   66: invokevirtual 34	android/os/Parcel:writeInt	(I)V
    //   69: aload_0
    //   70: getfield 15	com/google/android/gms/games/internal/IGamesService$Stub$Proxy:ko	Landroid/os/IBinder;
    //   73: sipush 5046
    //   76: aload 5
    //   78: aload 6
    //   80: iconst_0
    //   81: invokeinterface 40 5 0
    //   86: pop
    //   87: aload 6
    //   89: invokevirtual 43	android/os/Parcel:readException	()V
    //   92: aload 6
    //   94: invokevirtual 46	android/os/Parcel:recycle	()V
    //   97: aload 5
    //   99: invokevirtual 46	android/os/Parcel:recycle	()V
    //   102: return
    //   103: aconst_null
    //   104: astore_1
    //   105: goto -74 -> 31
    //   108: iconst_0
    //   109: istore_2
    //   110: goto -61 -> 49
    //   113: iconst_0
    //   114: istore_2
    //   115: goto -52 -> 63
    //   118: astore_1
    //   119: aload 6
    //   121: invokevirtual 46	android/os/Parcel:recycle	()V
    //   124: aload 5
    //   126: invokevirtual 46	android/os/Parcel:recycle	()V
    //   129: aload_1
    //   130: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	131	0	this	Proxy
    //   0	131	1	paramIGamesCallbacks	IGamesCallbacks
    //   0	131	2	paramInt	int
    //   0	131	3	paramBoolean1	boolean
    //   0	131	4	paramBoolean2	boolean
    //   6	119	5	localParcel1	Parcel
    //   11	109	6	localParcel2	Parcel
    //   1	60	7	i	int
    // Exception table:
    //   from	to	target	type
    //   13	20	118	finally
    //   24	31	118	finally
    //   31	43	118	finally
    //   49	55	118	finally
    //   63	92	118	finally
  }
  
  /* Error */
  public void b(IGamesCallbacks paramIGamesCallbacks, long paramLong)
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
    //   18: ifnull +56 -> 74
    //   21: aload_1
    //   22: invokeinterface 55 1 0
    //   27: astore_1
    //   28: aload 4
    //   30: aload_1
    //   31: invokevirtual 58	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
    //   34: aload 4
    //   36: lload_2
    //   37: invokevirtual 117	android/os/Parcel:writeLong	(J)V
    //   40: aload_0
    //   41: getfield 15	com/google/android/gms/games/internal/IGamesService$Stub$Proxy:ko	Landroid/os/IBinder;
    //   44: sipush 8012
    //   47: aload 4
    //   49: aload 5
    //   51: iconst_0
    //   52: invokeinterface 40 5 0
    //   57: pop
    //   58: aload 5
    //   60: invokevirtual 43	android/os/Parcel:readException	()V
    //   63: aload 5
    //   65: invokevirtual 46	android/os/Parcel:recycle	()V
    //   68: aload 4
    //   70: invokevirtual 46	android/os/Parcel:recycle	()V
    //   73: return
    //   74: aconst_null
    //   75: astore_1
    //   76: goto -48 -> 28
    //   79: astore_1
    //   80: aload 5
    //   82: invokevirtual 46	android/os/Parcel:recycle	()V
    //   85: aload 4
    //   87: invokevirtual 46	android/os/Parcel:recycle	()V
    //   90: aload_1
    //   91: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	92	0	this	Proxy
    //   0	92	1	paramIGamesCallbacks	IGamesCallbacks
    //   0	92	2	paramLong	long
    //   3	83	4	localParcel1	Parcel
    //   8	73	5	localParcel2	Parcel
    // Exception table:
    //   from	to	target	type
    //   10	17	79	finally
    //   21	28	79	finally
    //   28	63	79	finally
  }
  
  /* Error */
  public void b(IGamesCallbacks paramIGamesCallbacks, long paramLong, String paramString)
  {
    // Byte code:
    //   0: invokestatic 24	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   3: astore 5
    //   5: invokestatic 24	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   8: astore 6
    //   10: aload 5
    //   12: ldc 26
    //   14: invokevirtual 30	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
    //   17: aload_1
    //   18: ifnull +63 -> 81
    //   21: aload_1
    //   22: invokeinterface 55 1 0
    //   27: astore_1
    //   28: aload 5
    //   30: aload_1
    //   31: invokevirtual 58	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
    //   34: aload 5
    //   36: lload_2
    //   37: invokevirtual 117	android/os/Parcel:writeLong	(J)V
    //   40: aload 5
    //   42: aload 4
    //   44: invokevirtual 65	android/os/Parcel:writeString	(Ljava/lang/String;)V
    //   47: aload_0
    //   48: getfield 15	com/google/android/gms/games/internal/IGamesService$Stub$Proxy:ko	Landroid/os/IBinder;
    //   51: sipush 8020
    //   54: aload 5
    //   56: aload 6
    //   58: iconst_0
    //   59: invokeinterface 40 5 0
    //   64: pop
    //   65: aload 6
    //   67: invokevirtual 43	android/os/Parcel:readException	()V
    //   70: aload 6
    //   72: invokevirtual 46	android/os/Parcel:recycle	()V
    //   75: aload 5
    //   77: invokevirtual 46	android/os/Parcel:recycle	()V
    //   80: return
    //   81: aconst_null
    //   82: astore_1
    //   83: goto -55 -> 28
    //   86: astore_1
    //   87: aload 6
    //   89: invokevirtual 46	android/os/Parcel:recycle	()V
    //   92: aload 5
    //   94: invokevirtual 46	android/os/Parcel:recycle	()V
    //   97: aload_1
    //   98: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	99	0	this	Proxy
    //   0	99	1	paramIGamesCallbacks	IGamesCallbacks
    //   0	99	2	paramLong	long
    //   0	99	4	paramString	String
    //   3	90	5	localParcel1	Parcel
    //   8	80	6	localParcel2	Parcel
    // Exception table:
    //   from	to	target	type
    //   10	17	86	finally
    //   21	28	86	finally
    //   28	70	86	finally
  }
  
  /* Error */
  public void b(IGamesCallbacks paramIGamesCallbacks, String paramString)
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
    //   16: ifnull +52 -> 68
    //   19: aload_1
    //   20: invokeinterface 55 1 0
    //   25: astore_1
    //   26: aload_3
    //   27: aload_1
    //   28: invokevirtual 58	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
    //   31: aload_3
    //   32: aload_2
    //   33: invokevirtual 65	android/os/Parcel:writeString	(Ljava/lang/String;)V
    //   36: aload_0
    //   37: getfield 15	com/google/android/gms/games/internal/IGamesService$Stub$Proxy:ko	Landroid/os/IBinder;
    //   40: sipush 5018
    //   43: aload_3
    //   44: aload 4
    //   46: iconst_0
    //   47: invokeinterface 40 5 0
    //   52: pop
    //   53: aload 4
    //   55: invokevirtual 43	android/os/Parcel:readException	()V
    //   58: aload 4
    //   60: invokevirtual 46	android/os/Parcel:recycle	()V
    //   63: aload_3
    //   64: invokevirtual 46	android/os/Parcel:recycle	()V
    //   67: return
    //   68: aconst_null
    //   69: astore_1
    //   70: goto -44 -> 26
    //   73: astore_1
    //   74: aload 4
    //   76: invokevirtual 46	android/os/Parcel:recycle	()V
    //   79: aload_3
    //   80: invokevirtual 46	android/os/Parcel:recycle	()V
    //   83: aload_1
    //   84: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	85	0	this	Proxy
    //   0	85	1	paramIGamesCallbacks	IGamesCallbacks
    //   0	85	2	paramString	String
    //   3	77	3	localParcel1	Parcel
    //   7	68	4	localParcel2	Parcel
    // Exception table:
    //   from	to	target	type
    //   9	15	73	finally
    //   19	26	73	finally
    //   26	58	73	finally
  }
  
  /* Error */
  public void b(IGamesCallbacks paramIGamesCallbacks, String paramString, int paramInt)
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
    //   18: ifnull +62 -> 80
    //   21: aload_1
    //   22: invokeinterface 55 1 0
    //   27: astore_1
    //   28: aload 4
    //   30: aload_1
    //   31: invokevirtual 58	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
    //   34: aload 4
    //   36: aload_2
    //   37: invokevirtual 65	android/os/Parcel:writeString	(Ljava/lang/String;)V
    //   40: aload 4
    //   42: iload_3
    //   43: invokevirtual 34	android/os/Parcel:writeInt	(I)V
    //   46: aload_0
    //   47: getfield 15	com/google/android/gms/games/internal/IGamesService$Stub$Proxy:ko	Landroid/os/IBinder;
    //   50: sipush 12023
    //   53: aload 4
    //   55: aload 5
    //   57: iconst_0
    //   58: invokeinterface 40 5 0
    //   63: pop
    //   64: aload 5
    //   66: invokevirtual 43	android/os/Parcel:readException	()V
    //   69: aload 5
    //   71: invokevirtual 46	android/os/Parcel:recycle	()V
    //   74: aload 4
    //   76: invokevirtual 46	android/os/Parcel:recycle	()V
    //   79: return
    //   80: aconst_null
    //   81: astore_1
    //   82: goto -54 -> 28
    //   85: astore_1
    //   86: aload 5
    //   88: invokevirtual 46	android/os/Parcel:recycle	()V
    //   91: aload 4
    //   93: invokevirtual 46	android/os/Parcel:recycle	()V
    //   96: aload_1
    //   97: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	98	0	this	Proxy
    //   0	98	1	paramIGamesCallbacks	IGamesCallbacks
    //   0	98	2	paramString	String
    //   0	98	3	paramInt	int
    //   3	89	4	localParcel1	Parcel
    //   8	79	5	localParcel2	Parcel
    // Exception table:
    //   from	to	target	type
    //   10	17	85	finally
    //   21	28	85	finally
    //   28	69	85	finally
  }
  
  /* Error */
  public void b(IGamesCallbacks paramIGamesCallbacks, String paramString, int paramInt1, int paramInt2, int paramInt3, boolean paramBoolean)
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore 9
    //   3: invokestatic 24	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   6: astore 7
    //   8: invokestatic 24	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   11: astore 8
    //   13: aload 7
    //   15: ldc 26
    //   17: invokevirtual 30	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
    //   20: aload_1
    //   21: ifnull +92 -> 113
    //   24: aload_1
    //   25: invokeinterface 55 1 0
    //   30: astore_1
    //   31: aload 7
    //   33: aload_1
    //   34: invokevirtual 58	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
    //   37: aload 7
    //   39: aload_2
    //   40: invokevirtual 65	android/os/Parcel:writeString	(Ljava/lang/String;)V
    //   43: aload 7
    //   45: iload_3
    //   46: invokevirtual 34	android/os/Parcel:writeInt	(I)V
    //   49: aload 7
    //   51: iload 4
    //   53: invokevirtual 34	android/os/Parcel:writeInt	(I)V
    //   56: aload 7
    //   58: iload 5
    //   60: invokevirtual 34	android/os/Parcel:writeInt	(I)V
    //   63: iload 9
    //   65: istore_3
    //   66: iload 6
    //   68: ifeq +5 -> 73
    //   71: iconst_1
    //   72: istore_3
    //   73: aload 7
    //   75: iload_3
    //   76: invokevirtual 34	android/os/Parcel:writeInt	(I)V
    //   79: aload_0
    //   80: getfield 15	com/google/android/gms/games/internal/IGamesService$Stub$Proxy:ko	Landroid/os/IBinder;
    //   83: sipush 5020
    //   86: aload 7
    //   88: aload 8
    //   90: iconst_0
    //   91: invokeinterface 40 5 0
    //   96: pop
    //   97: aload 8
    //   99: invokevirtual 43	android/os/Parcel:readException	()V
    //   102: aload 8
    //   104: invokevirtual 46	android/os/Parcel:recycle	()V
    //   107: aload 7
    //   109: invokevirtual 46	android/os/Parcel:recycle	()V
    //   112: return
    //   113: aconst_null
    //   114: astore_1
    //   115: goto -84 -> 31
    //   118: astore_1
    //   119: aload 8
    //   121: invokevirtual 46	android/os/Parcel:recycle	()V
    //   124: aload 7
    //   126: invokevirtual 46	android/os/Parcel:recycle	()V
    //   129: aload_1
    //   130: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	131	0	this	Proxy
    //   0	131	1	paramIGamesCallbacks	IGamesCallbacks
    //   0	131	2	paramString	String
    //   0	131	3	paramInt1	int
    //   0	131	4	paramInt2	int
    //   0	131	5	paramInt3	int
    //   0	131	6	paramBoolean	boolean
    //   6	119	7	localParcel1	Parcel
    //   11	109	8	localParcel2	Parcel
    //   1	63	9	i	int
    // Exception table:
    //   from	to	target	type
    //   13	20	118	finally
    //   24	31	118	finally
    //   31	63	118	finally
    //   73	102	118	finally
  }
  
  /* Error */
  public void b(IGamesCallbacks paramIGamesCallbacks, String paramString, int paramInt, IBinder paramIBinder, Bundle paramBundle)
  {
    // Byte code:
    //   0: invokestatic 24	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   3: astore 6
    //   5: invokestatic 24	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   8: astore 7
    //   10: aload 6
    //   12: ldc 26
    //   14: invokevirtual 30	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
    //   17: aload_1
    //   18: ifnull +88 -> 106
    //   21: aload_1
    //   22: invokeinterface 55 1 0
    //   27: astore_1
    //   28: aload 6
    //   30: aload_1
    //   31: invokevirtual 58	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
    //   34: aload 6
    //   36: aload_2
    //   37: invokevirtual 65	android/os/Parcel:writeString	(Ljava/lang/String;)V
    //   40: aload 6
    //   42: iload_3
    //   43: invokevirtual 34	android/os/Parcel:writeInt	(I)V
    //   46: aload 6
    //   48: aload 4
    //   50: invokevirtual 58	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
    //   53: aload 5
    //   55: ifnull +56 -> 111
    //   58: aload 6
    //   60: iconst_1
    //   61: invokevirtual 34	android/os/Parcel:writeInt	(I)V
    //   64: aload 5
    //   66: aload 6
    //   68: iconst_0
    //   69: invokevirtual 121	android/os/Bundle:writeToParcel	(Landroid/os/Parcel;I)V
    //   72: aload_0
    //   73: getfield 15	com/google/android/gms/games/internal/IGamesService$Stub$Proxy:ko	Landroid/os/IBinder;
    //   76: sipush 7003
    //   79: aload 6
    //   81: aload 7
    //   83: iconst_0
    //   84: invokeinterface 40 5 0
    //   89: pop
    //   90: aload 7
    //   92: invokevirtual 43	android/os/Parcel:readException	()V
    //   95: aload 7
    //   97: invokevirtual 46	android/os/Parcel:recycle	()V
    //   100: aload 6
    //   102: invokevirtual 46	android/os/Parcel:recycle	()V
    //   105: return
    //   106: aconst_null
    //   107: astore_1
    //   108: goto -80 -> 28
    //   111: aload 6
    //   113: iconst_0
    //   114: invokevirtual 34	android/os/Parcel:writeInt	(I)V
    //   117: goto -45 -> 72
    //   120: astore_1
    //   121: aload 7
    //   123: invokevirtual 46	android/os/Parcel:recycle	()V
    //   126: aload 6
    //   128: invokevirtual 46	android/os/Parcel:recycle	()V
    //   131: aload_1
    //   132: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	133	0	this	Proxy
    //   0	133	1	paramIGamesCallbacks	IGamesCallbacks
    //   0	133	2	paramString	String
    //   0	133	3	paramInt	int
    //   0	133	4	paramIBinder	IBinder
    //   0	133	5	paramBundle	Bundle
    //   3	124	6	localParcel1	Parcel
    //   8	114	7	localParcel2	Parcel
    // Exception table:
    //   from	to	target	type
    //   10	17	120	finally
    //   21	28	120	finally
    //   28	53	120	finally
    //   58	72	120	finally
    //   72	95	120	finally
    //   111	117	120	finally
  }
  
  /* Error */
  public void b(IGamesCallbacks paramIGamesCallbacks, String paramString, int paramInt, boolean paramBoolean)
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore 7
    //   3: invokestatic 24	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   6: astore 5
    //   8: invokestatic 24	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   11: astore 6
    //   13: aload 5
    //   15: ldc 26
    //   17: invokevirtual 30	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
    //   20: aload_1
    //   21: ifnull +78 -> 99
    //   24: aload_1
    //   25: invokeinterface 55 1 0
    //   30: astore_1
    //   31: aload 5
    //   33: aload_1
    //   34: invokevirtual 58	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
    //   37: aload 5
    //   39: aload_2
    //   40: invokevirtual 65	android/os/Parcel:writeString	(Ljava/lang/String;)V
    //   43: aload 5
    //   45: iload_3
    //   46: invokevirtual 34	android/os/Parcel:writeInt	(I)V
    //   49: iload 7
    //   51: istore_3
    //   52: iload 4
    //   54: ifeq +5 -> 59
    //   57: iconst_1
    //   58: istore_3
    //   59: aload 5
    //   61: iload_3
    //   62: invokevirtual 34	android/os/Parcel:writeInt	(I)V
    //   65: aload_0
    //   66: getfield 15	com/google/android/gms/games/internal/IGamesService$Stub$Proxy:ko	Landroid/os/IBinder;
    //   69: sipush 10017
    //   72: aload 5
    //   74: aload 6
    //   76: iconst_0
    //   77: invokeinterface 40 5 0
    //   82: pop
    //   83: aload 6
    //   85: invokevirtual 43	android/os/Parcel:readException	()V
    //   88: aload 6
    //   90: invokevirtual 46	android/os/Parcel:recycle	()V
    //   93: aload 5
    //   95: invokevirtual 46	android/os/Parcel:recycle	()V
    //   98: return
    //   99: aconst_null
    //   100: astore_1
    //   101: goto -70 -> 31
    //   104: astore_1
    //   105: aload 6
    //   107: invokevirtual 46	android/os/Parcel:recycle	()V
    //   110: aload 5
    //   112: invokevirtual 46	android/os/Parcel:recycle	()V
    //   115: aload_1
    //   116: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	117	0	this	Proxy
    //   0	117	1	paramIGamesCallbacks	IGamesCallbacks
    //   0	117	2	paramString	String
    //   0	117	3	paramInt	int
    //   0	117	4	paramBoolean	boolean
    //   6	105	5	localParcel1	Parcel
    //   11	95	6	localParcel2	Parcel
    //   1	49	7	i	int
    // Exception table:
    //   from	to	target	type
    //   13	20	104	finally
    //   24	31	104	finally
    //   31	49	104	finally
    //   59	88	104	finally
  }
  
  /* Error */
  public void b(IGamesCallbacks paramIGamesCallbacks, String paramString, int paramInt, boolean paramBoolean1, boolean paramBoolean2)
  {
    // Byte code:
    //   0: iconst_1
    //   1: istore 8
    //   3: invokestatic 24	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   6: astore 6
    //   8: invokestatic 24	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   11: astore 7
    //   13: aload 6
    //   15: ldc 26
    //   17: invokevirtual 30	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
    //   20: aload_1
    //   21: ifnull +89 -> 110
    //   24: aload_1
    //   25: invokeinterface 55 1 0
    //   30: astore_1
    //   31: aload 6
    //   33: aload_1
    //   34: invokevirtual 58	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
    //   37: aload 6
    //   39: aload_2
    //   40: invokevirtual 65	android/os/Parcel:writeString	(Ljava/lang/String;)V
    //   43: aload 6
    //   45: iload_3
    //   46: invokevirtual 34	android/os/Parcel:writeInt	(I)V
    //   49: iload 4
    //   51: ifeq +64 -> 115
    //   54: iconst_1
    //   55: istore_3
    //   56: aload 6
    //   58: iload_3
    //   59: invokevirtual 34	android/os/Parcel:writeInt	(I)V
    //   62: iload 5
    //   64: ifeq +56 -> 120
    //   67: iload 8
    //   69: istore_3
    //   70: aload 6
    //   72: iload_3
    //   73: invokevirtual 34	android/os/Parcel:writeInt	(I)V
    //   76: aload_0
    //   77: getfield 15	com/google/android/gms/games/internal/IGamesService$Stub$Proxy:ko	Landroid/os/IBinder;
    //   80: sipush 5501
    //   83: aload 6
    //   85: aload 7
    //   87: iconst_0
    //   88: invokeinterface 40 5 0
    //   93: pop
    //   94: aload 7
    //   96: invokevirtual 43	android/os/Parcel:readException	()V
    //   99: aload 7
    //   101: invokevirtual 46	android/os/Parcel:recycle	()V
    //   104: aload 6
    //   106: invokevirtual 46	android/os/Parcel:recycle	()V
    //   109: return
    //   110: aconst_null
    //   111: astore_1
    //   112: goto -81 -> 31
    //   115: iconst_0
    //   116: istore_3
    //   117: goto -61 -> 56
    //   120: iconst_0
    //   121: istore_3
    //   122: goto -52 -> 70
    //   125: astore_1
    //   126: aload 7
    //   128: invokevirtual 46	android/os/Parcel:recycle	()V
    //   131: aload 6
    //   133: invokevirtual 46	android/os/Parcel:recycle	()V
    //   136: aload_1
    //   137: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	138	0	this	Proxy
    //   0	138	1	paramIGamesCallbacks	IGamesCallbacks
    //   0	138	2	paramString	String
    //   0	138	3	paramInt	int
    //   0	138	4	paramBoolean1	boolean
    //   0	138	5	paramBoolean2	boolean
    //   6	126	6	localParcel1	Parcel
    //   11	116	7	localParcel2	Parcel
    //   1	67	8	i	int
    // Exception table:
    //   from	to	target	type
    //   13	20	125	finally
    //   24	31	125	finally
    //   31	49	125	finally
    //   56	62	125	finally
    //   70	99	125	finally
  }
  
  /* Error */
  public void b(IGamesCallbacks paramIGamesCallbacks, String paramString, IBinder paramIBinder, Bundle paramBundle)
  {
    // Byte code:
    //   0: invokestatic 24	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   3: astore 5
    //   5: invokestatic 24	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   8: astore 6
    //   10: aload 5
    //   12: ldc 26
    //   14: invokevirtual 30	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
    //   17: aload_1
    //   18: ifnull +81 -> 99
    //   21: aload_1
    //   22: invokeinterface 55 1 0
    //   27: astore_1
    //   28: aload 5
    //   30: aload_1
    //   31: invokevirtual 58	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
    //   34: aload 5
    //   36: aload_2
    //   37: invokevirtual 65	android/os/Parcel:writeString	(Ljava/lang/String;)V
    //   40: aload 5
    //   42: aload_3
    //   43: invokevirtual 58	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
    //   46: aload 4
    //   48: ifnull +56 -> 104
    //   51: aload 5
    //   53: iconst_1
    //   54: invokevirtual 34	android/os/Parcel:writeInt	(I)V
    //   57: aload 4
    //   59: aload 5
    //   61: iconst_0
    //   62: invokevirtual 121	android/os/Bundle:writeToParcel	(Landroid/os/Parcel;I)V
    //   65: aload_0
    //   66: getfield 15	com/google/android/gms/games/internal/IGamesService$Stub$Proxy:ko	Landroid/os/IBinder;
    //   69: sipush 5024
    //   72: aload 5
    //   74: aload 6
    //   76: iconst_0
    //   77: invokeinterface 40 5 0
    //   82: pop
    //   83: aload 6
    //   85: invokevirtual 43	android/os/Parcel:readException	()V
    //   88: aload 6
    //   90: invokevirtual 46	android/os/Parcel:recycle	()V
    //   93: aload 5
    //   95: invokevirtual 46	android/os/Parcel:recycle	()V
    //   98: return
    //   99: aconst_null
    //   100: astore_1
    //   101: goto -73 -> 28
    //   104: aload 5
    //   106: iconst_0
    //   107: invokevirtual 34	android/os/Parcel:writeInt	(I)V
    //   110: goto -45 -> 65
    //   113: astore_1
    //   114: aload 6
    //   116: invokevirtual 46	android/os/Parcel:recycle	()V
    //   119: aload 5
    //   121: invokevirtual 46	android/os/Parcel:recycle	()V
    //   124: aload_1
    //   125: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	126	0	this	Proxy
    //   0	126	1	paramIGamesCallbacks	IGamesCallbacks
    //   0	126	2	paramString	String
    //   0	126	3	paramIBinder	IBinder
    //   0	126	4	paramBundle	Bundle
    //   3	117	5	localParcel1	Parcel
    //   8	107	6	localParcel2	Parcel
    // Exception table:
    //   from	to	target	type
    //   10	17	113	finally
    //   21	28	113	finally
    //   28	46	113	finally
    //   51	65	113	finally
    //   65	88	113	finally
    //   104	110	113	finally
  }
  
  /* Error */
  public void b(IGamesCallbacks paramIGamesCallbacks, String paramString1, String paramString2)
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
    //   18: ifnull +62 -> 80
    //   21: aload_1
    //   22: invokeinterface 55 1 0
    //   27: astore_1
    //   28: aload 4
    //   30: aload_1
    //   31: invokevirtual 58	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
    //   34: aload 4
    //   36: aload_2
    //   37: invokevirtual 65	android/os/Parcel:writeString	(Ljava/lang/String;)V
    //   40: aload 4
    //   42: aload_3
    //   43: invokevirtual 65	android/os/Parcel:writeString	(Ljava/lang/String;)V
    //   46: aload_0
    //   47: getfield 15	com/google/android/gms/games/internal/IGamesService$Stub$Proxy:ko	Landroid/os/IBinder;
    //   50: sipush 5041
    //   53: aload 4
    //   55: aload 5
    //   57: iconst_0
    //   58: invokeinterface 40 5 0
    //   63: pop
    //   64: aload 5
    //   66: invokevirtual 43	android/os/Parcel:readException	()V
    //   69: aload 5
    //   71: invokevirtual 46	android/os/Parcel:recycle	()V
    //   74: aload 4
    //   76: invokevirtual 46	android/os/Parcel:recycle	()V
    //   79: return
    //   80: aconst_null
    //   81: astore_1
    //   82: goto -54 -> 28
    //   85: astore_1
    //   86: aload 5
    //   88: invokevirtual 46	android/os/Parcel:recycle	()V
    //   91: aload 4
    //   93: invokevirtual 46	android/os/Parcel:recycle	()V
    //   96: aload_1
    //   97: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	98	0	this	Proxy
    //   0	98	1	paramIGamesCallbacks	IGamesCallbacks
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
  public void b(IGamesCallbacks paramIGamesCallbacks, String paramString1, String paramString2, int paramInt1, int paramInt2, int paramInt3, boolean paramBoolean)
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore 10
    //   3: invokestatic 24	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   6: astore 8
    //   8: invokestatic 24	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   11: astore 9
    //   13: aload 8
    //   15: ldc 26
    //   17: invokevirtual 30	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
    //   20: aload_1
    //   21: ifnull +102 -> 123
    //   24: aload_1
    //   25: invokeinterface 55 1 0
    //   30: astore_1
    //   31: aload 8
    //   33: aload_1
    //   34: invokevirtual 58	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
    //   37: aload 8
    //   39: aload_2
    //   40: invokevirtual 65	android/os/Parcel:writeString	(Ljava/lang/String;)V
    //   43: aload 8
    //   45: aload_3
    //   46: invokevirtual 65	android/os/Parcel:writeString	(Ljava/lang/String;)V
    //   49: aload 8
    //   51: iload 4
    //   53: invokevirtual 34	android/os/Parcel:writeInt	(I)V
    //   56: aload 8
    //   58: iload 5
    //   60: invokevirtual 34	android/os/Parcel:writeInt	(I)V
    //   63: aload 8
    //   65: iload 6
    //   67: invokevirtual 34	android/os/Parcel:writeInt	(I)V
    //   70: iload 10
    //   72: istore 4
    //   74: iload 7
    //   76: ifeq +6 -> 82
    //   79: iconst_1
    //   80: istore 4
    //   82: aload 8
    //   84: iload 4
    //   86: invokevirtual 34	android/os/Parcel:writeInt	(I)V
    //   89: aload_0
    //   90: getfield 15	com/google/android/gms/games/internal/IGamesService$Stub$Proxy:ko	Landroid/os/IBinder;
    //   93: sipush 5040
    //   96: aload 8
    //   98: aload 9
    //   100: iconst_0
    //   101: invokeinterface 40 5 0
    //   106: pop
    //   107: aload 9
    //   109: invokevirtual 43	android/os/Parcel:readException	()V
    //   112: aload 9
    //   114: invokevirtual 46	android/os/Parcel:recycle	()V
    //   117: aload 8
    //   119: invokevirtual 46	android/os/Parcel:recycle	()V
    //   122: return
    //   123: aconst_null
    //   124: astore_1
    //   125: goto -94 -> 31
    //   128: astore_1
    //   129: aload 9
    //   131: invokevirtual 46	android/os/Parcel:recycle	()V
    //   134: aload 8
    //   136: invokevirtual 46	android/os/Parcel:recycle	()V
    //   139: aload_1
    //   140: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	141	0	this	Proxy
    //   0	141	1	paramIGamesCallbacks	IGamesCallbacks
    //   0	141	2	paramString1	String
    //   0	141	3	paramString2	String
    //   0	141	4	paramInt1	int
    //   0	141	5	paramInt2	int
    //   0	141	6	paramInt3	int
    //   0	141	7	paramBoolean	boolean
    //   6	129	8	localParcel1	Parcel
    //   11	119	9	localParcel2	Parcel
    //   1	70	10	i	int
    // Exception table:
    //   from	to	target	type
    //   13	20	128	finally
    //   24	31	128	finally
    //   31	70	128	finally
    //   82	112	128	finally
  }
  
  /* Error */
  public void b(IGamesCallbacks paramIGamesCallbacks, String paramString1, String paramString2, int paramInt, boolean paramBoolean1, boolean paramBoolean2)
  {
    // Byte code:
    //   0: iconst_1
    //   1: istore 9
    //   3: invokestatic 24	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   6: astore 7
    //   8: invokestatic 24	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   11: astore 8
    //   13: aload 7
    //   15: ldc 26
    //   17: invokevirtual 30	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
    //   20: aload_1
    //   21: ifnull +100 -> 121
    //   24: aload_1
    //   25: invokeinterface 55 1 0
    //   30: astore_1
    //   31: aload 7
    //   33: aload_1
    //   34: invokevirtual 58	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
    //   37: aload 7
    //   39: aload_2
    //   40: invokevirtual 65	android/os/Parcel:writeString	(Ljava/lang/String;)V
    //   43: aload 7
    //   45: aload_3
    //   46: invokevirtual 65	android/os/Parcel:writeString	(Ljava/lang/String;)V
    //   49: aload 7
    //   51: iload 4
    //   53: invokevirtual 34	android/os/Parcel:writeInt	(I)V
    //   56: iload 5
    //   58: ifeq +68 -> 126
    //   61: iconst_1
    //   62: istore 4
    //   64: aload 7
    //   66: iload 4
    //   68: invokevirtual 34	android/os/Parcel:writeInt	(I)V
    //   71: iload 6
    //   73: ifeq +59 -> 132
    //   76: iload 9
    //   78: istore 4
    //   80: aload 7
    //   82: iload 4
    //   84: invokevirtual 34	android/os/Parcel:writeInt	(I)V
    //   87: aload_0
    //   88: getfield 15	com/google/android/gms/games/internal/IGamesService$Stub$Proxy:ko	Landroid/os/IBinder;
    //   91: sipush 12018
    //   94: aload 7
    //   96: aload 8
    //   98: iconst_0
    //   99: invokeinterface 40 5 0
    //   104: pop
    //   105: aload 8
    //   107: invokevirtual 43	android/os/Parcel:readException	()V
    //   110: aload 8
    //   112: invokevirtual 46	android/os/Parcel:recycle	()V
    //   115: aload 7
    //   117: invokevirtual 46	android/os/Parcel:recycle	()V
    //   120: return
    //   121: aconst_null
    //   122: astore_1
    //   123: goto -92 -> 31
    //   126: iconst_0
    //   127: istore 4
    //   129: goto -65 -> 64
    //   132: iconst_0
    //   133: istore 4
    //   135: goto -55 -> 80
    //   138: astore_1
    //   139: aload 8
    //   141: invokevirtual 46	android/os/Parcel:recycle	()V
    //   144: aload 7
    //   146: invokevirtual 46	android/os/Parcel:recycle	()V
    //   149: aload_1
    //   150: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	151	0	this	Proxy
    //   0	151	1	paramIGamesCallbacks	IGamesCallbacks
    //   0	151	2	paramString1	String
    //   0	151	3	paramString2	String
    //   0	151	4	paramInt	int
    //   0	151	5	paramBoolean1	boolean
    //   0	151	6	paramBoolean2	boolean
    //   6	139	7	localParcel1	Parcel
    //   11	129	8	localParcel2	Parcel
    //   1	76	9	i	int
    // Exception table:
    //   from	to	target	type
    //   13	20	138	finally
    //   24	31	138	finally
    //   31	56	138	finally
    //   64	71	138	finally
    //   80	110	138	finally
  }
  
  /* Error */
  public void b(IGamesCallbacks paramIGamesCallbacks, String paramString1, String paramString2, boolean paramBoolean)
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore 7
    //   3: invokestatic 24	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   6: astore 5
    //   8: invokestatic 24	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   11: astore 6
    //   13: aload 5
    //   15: ldc 26
    //   17: invokevirtual 30	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
    //   20: aload_1
    //   21: ifnull +77 -> 98
    //   24: aload_1
    //   25: invokeinterface 55 1 0
    //   30: astore_1
    //   31: aload 5
    //   33: aload_1
    //   34: invokevirtual 58	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
    //   37: aload 5
    //   39: aload_2
    //   40: invokevirtual 65	android/os/Parcel:writeString	(Ljava/lang/String;)V
    //   43: aload 5
    //   45: aload_3
    //   46: invokevirtual 65	android/os/Parcel:writeString	(Ljava/lang/String;)V
    //   49: iload 4
    //   51: ifeq +6 -> 57
    //   54: iconst_1
    //   55: istore 7
    //   57: aload 5
    //   59: iload 7
    //   61: invokevirtual 34	android/os/Parcel:writeInt	(I)V
    //   64: aload_0
    //   65: getfield 15	com/google/android/gms/games/internal/IGamesService$Stub$Proxy:ko	Landroid/os/IBinder;
    //   68: sipush 6506
    //   71: aload 5
    //   73: aload 6
    //   75: iconst_0
    //   76: invokeinterface 40 5 0
    //   81: pop
    //   82: aload 6
    //   84: invokevirtual 43	android/os/Parcel:readException	()V
    //   87: aload 6
    //   89: invokevirtual 46	android/os/Parcel:recycle	()V
    //   92: aload 5
    //   94: invokevirtual 46	android/os/Parcel:recycle	()V
    //   97: return
    //   98: aconst_null
    //   99: astore_1
    //   100: goto -69 -> 31
    //   103: astore_1
    //   104: aload 6
    //   106: invokevirtual 46	android/os/Parcel:recycle	()V
    //   109: aload 5
    //   111: invokevirtual 46	android/os/Parcel:recycle	()V
    //   114: aload_1
    //   115: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	116	0	this	Proxy
    //   0	116	1	paramIGamesCallbacks	IGamesCallbacks
    //   0	116	2	paramString1	String
    //   0	116	3	paramString2	String
    //   0	116	4	paramBoolean	boolean
    //   6	104	5	localParcel1	Parcel
    //   11	94	6	localParcel2	Parcel
    //   1	59	7	i	int
    // Exception table:
    //   from	to	target	type
    //   13	20	103	finally
    //   24	31	103	finally
    //   31	49	103	finally
    //   57	87	103	finally
  }
  
  /* Error */
  public void b(IGamesCallbacks paramIGamesCallbacks, String paramString, boolean paramBoolean)
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore 6
    //   3: invokestatic 24	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   6: astore 4
    //   8: invokestatic 24	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   11: astore 5
    //   13: aload 4
    //   15: ldc 26
    //   17: invokevirtual 30	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
    //   20: aload_1
    //   21: ifnull +70 -> 91
    //   24: aload_1
    //   25: invokeinterface 55 1 0
    //   30: astore_1
    //   31: aload 4
    //   33: aload_1
    //   34: invokevirtual 58	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
    //   37: aload 4
    //   39: aload_2
    //   40: invokevirtual 65	android/os/Parcel:writeString	(Ljava/lang/String;)V
    //   43: iload_3
    //   44: ifeq +6 -> 50
    //   47: iconst_1
    //   48: istore 6
    //   50: aload 4
    //   52: iload 6
    //   54: invokevirtual 34	android/os/Parcel:writeInt	(I)V
    //   57: aload_0
    //   58: getfield 15	com/google/android/gms/games/internal/IGamesService$Stub$Proxy:ko	Landroid/os/IBinder;
    //   61: sipush 6502
    //   64: aload 4
    //   66: aload 5
    //   68: iconst_0
    //   69: invokeinterface 40 5 0
    //   74: pop
    //   75: aload 5
    //   77: invokevirtual 43	android/os/Parcel:readException	()V
    //   80: aload 5
    //   82: invokevirtual 46	android/os/Parcel:recycle	()V
    //   85: aload 4
    //   87: invokevirtual 46	android/os/Parcel:recycle	()V
    //   90: return
    //   91: aconst_null
    //   92: astore_1
    //   93: goto -62 -> 31
    //   96: astore_1
    //   97: aload 5
    //   99: invokevirtual 46	android/os/Parcel:recycle	()V
    //   102: aload 4
    //   104: invokevirtual 46	android/os/Parcel:recycle	()V
    //   107: aload_1
    //   108: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	109	0	this	Proxy
    //   0	109	1	paramIGamesCallbacks	IGamesCallbacks
    //   0	109	2	paramString	String
    //   0	109	3	paramBoolean	boolean
    //   6	97	4	localParcel1	Parcel
    //   11	87	5	localParcel2	Parcel
    //   1	52	6	i	int
    // Exception table:
    //   from	to	target	type
    //   13	20	96	finally
    //   24	31	96	finally
    //   31	43	96	finally
    //   50	80	96	finally
  }
  
  /* Error */
  public void b(IGamesCallbacks paramIGamesCallbacks, boolean paramBoolean)
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
    //   19: ifnull +60 -> 79
    //   22: aload_1
    //   23: invokeinterface 55 1 0
    //   28: astore_1
    //   29: aload_3
    //   30: aload_1
    //   31: invokevirtual 58	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
    //   34: iload_2
    //   35: ifeq +6 -> 41
    //   38: iconst_1
    //   39: istore 5
    //   41: aload_3
    //   42: iload 5
    //   44: invokevirtual 34	android/os/Parcel:writeInt	(I)V
    //   47: aload_0
    //   48: getfield 15	com/google/android/gms/games/internal/IGamesService$Stub$Proxy:ko	Landroid/os/IBinder;
    //   51: sipush 6503
    //   54: aload_3
    //   55: aload 4
    //   57: iconst_0
    //   58: invokeinterface 40 5 0
    //   63: pop
    //   64: aload 4
    //   66: invokevirtual 43	android/os/Parcel:readException	()V
    //   69: aload 4
    //   71: invokevirtual 46	android/os/Parcel:recycle	()V
    //   74: aload_3
    //   75: invokevirtual 46	android/os/Parcel:recycle	()V
    //   78: return
    //   79: aconst_null
    //   80: astore_1
    //   81: goto -52 -> 29
    //   84: astore_1
    //   85: aload 4
    //   87: invokevirtual 46	android/os/Parcel:recycle	()V
    //   90: aload_3
    //   91: invokevirtual 46	android/os/Parcel:recycle	()V
    //   94: aload_1
    //   95: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	96	0	this	Proxy
    //   0	96	1	paramIGamesCallbacks	IGamesCallbacks
    //   0	96	2	paramBoolean	boolean
    //   6	85	3	localParcel1	Parcel
    //   10	76	4	localParcel2	Parcel
    //   1	42	5	i	int
    // Exception table:
    //   from	to	target	type
    //   12	18	84	finally
    //   22	29	84	finally
    //   29	34	84	finally
    //   41	69	84	finally
  }
  
  /* Error */
  public void b(IGamesCallbacks paramIGamesCallbacks, String[] paramArrayOfString)
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
    //   16: ifnull +52 -> 68
    //   19: aload_1
    //   20: invokeinterface 55 1 0
    //   25: astore_1
    //   26: aload_3
    //   27: aload_1
    //   28: invokevirtual 58	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
    //   31: aload_3
    //   32: aload_2
    //   33: invokevirtual 134	android/os/Parcel:writeStringArray	([Ljava/lang/String;)V
    //   36: aload_0
    //   37: getfield 15	com/google/android/gms/games/internal/IGamesService$Stub$Proxy:ko	Landroid/os/IBinder;
    //   40: sipush 10007
    //   43: aload_3
    //   44: aload 4
    //   46: iconst_0
    //   47: invokeinterface 40 5 0
    //   52: pop
    //   53: aload 4
    //   55: invokevirtual 43	android/os/Parcel:readException	()V
    //   58: aload 4
    //   60: invokevirtual 46	android/os/Parcel:recycle	()V
    //   63: aload_3
    //   64: invokevirtual 46	android/os/Parcel:recycle	()V
    //   67: return
    //   68: aconst_null
    //   69: astore_1
    //   70: goto -44 -> 26
    //   73: astore_1
    //   74: aload 4
    //   76: invokevirtual 46	android/os/Parcel:recycle	()V
    //   79: aload_3
    //   80: invokevirtual 46	android/os/Parcel:recycle	()V
    //   83: aload_1
    //   84: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	85	0	this	Proxy
    //   0	85	1	paramIGamesCallbacks	IGamesCallbacks
    //   0	85	2	paramArrayOfString	String[]
    //   3	77	3	localParcel1	Parcel
    //   7	68	4	localParcel2	Parcel
    // Exception table:
    //   from	to	target	type
    //   9	15	73	finally
    //   19	26	73	finally
    //   26	58	73	finally
  }
  
  public void b(String paramString1, String paramString2, int paramInt)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
      localParcel1.writeString(paramString1);
      localParcel1.writeString(paramString2);
      localParcel1.writeInt(paramInt);
      ko.transact(5051, localParcel1, localParcel2, 0);
      localParcel2.readException();
      return;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }
  
  public void ba(String paramString)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
      localParcel1.writeString(paramString);
      ko.transact(8002, localParcel1, localParcel2, 0);
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
  public ParcelFileDescriptor bb(String paramString)
  {
    // Byte code:
    //   0: invokestatic 24	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   3: astore_2
    //   4: invokestatic 24	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   7: astore_3
    //   8: aload_2
    //   9: ldc 26
    //   11: invokevirtual 30	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
    //   14: aload_2
    //   15: aload_1
    //   16: invokevirtual 65	android/os/Parcel:writeString	(Ljava/lang/String;)V
    //   19: aload_0
    //   20: getfield 15	com/google/android/gms/games/internal/IGamesService$Stub$Proxy:ko	Landroid/os/IBinder;
    //   23: sipush 9030
    //   26: aload_2
    //   27: aload_3
    //   28: iconst_0
    //   29: invokeinterface 40 5 0
    //   34: pop
    //   35: aload_3
    //   36: invokevirtual 43	android/os/Parcel:readException	()V
    //   39: aload_3
    //   40: invokevirtual 69	android/os/Parcel:readInt	()I
    //   43: ifeq +26 -> 69
    //   46: getstatic 203	android/os/ParcelFileDescriptor:CREATOR	Landroid/os/Parcelable$Creator;
    //   49: aload_3
    //   50: invokeinterface 82 2 0
    //   55: checkcast 202	android/os/ParcelFileDescriptor
    //   58: astore_1
    //   59: aload_3
    //   60: invokevirtual 46	android/os/Parcel:recycle	()V
    //   63: aload_2
    //   64: invokevirtual 46	android/os/Parcel:recycle	()V
    //   67: aload_1
    //   68: areturn
    //   69: aconst_null
    //   70: astore_1
    //   71: goto -12 -> 59
    //   74: astore_1
    //   75: aload_3
    //   76: invokevirtual 46	android/os/Parcel:recycle	()V
    //   79: aload_2
    //   80: invokevirtual 46	android/os/Parcel:recycle	()V
    //   83: aload_1
    //   84: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	85	0	this	Proxy
    //   0	85	1	paramString	String
    //   3	77	2	localParcel1	Parcel
    //   7	69	3	localParcel2	Parcel
    // Exception table:
    //   from	to	target	type
    //   8	59	74	finally
  }
  
  public void c(long paramLong, String paramString)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
      localParcel1.writeLong(paramLong);
      localParcel1.writeString(paramString);
      ko.transact(10004, localParcel1, localParcel2, 0);
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
  public void c(IGamesCallbacks paramIGamesCallbacks)
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
    //   15: ifnull +44 -> 59
    //   18: aload_1
    //   19: invokeinterface 55 1 0
    //   24: astore_1
    //   25: aload_2
    //   26: aload_1
    //   27: invokevirtual 58	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
    //   30: aload_0
    //   31: getfield 15	com/google/android/gms/games/internal/IGamesService$Stub$Proxy:ko	Landroid/os/IBinder;
    //   34: sipush 5022
    //   37: aload_2
    //   38: aload_3
    //   39: iconst_0
    //   40: invokeinterface 40 5 0
    //   45: pop
    //   46: aload_3
    //   47: invokevirtual 43	android/os/Parcel:readException	()V
    //   50: aload_3
    //   51: invokevirtual 46	android/os/Parcel:recycle	()V
    //   54: aload_2
    //   55: invokevirtual 46	android/os/Parcel:recycle	()V
    //   58: return
    //   59: aconst_null
    //   60: astore_1
    //   61: goto -36 -> 25
    //   64: astore_1
    //   65: aload_3
    //   66: invokevirtual 46	android/os/Parcel:recycle	()V
    //   69: aload_2
    //   70: invokevirtual 46	android/os/Parcel:recycle	()V
    //   73: aload_1
    //   74: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	75	0	this	Proxy
    //   0	75	1	paramIGamesCallbacks	IGamesCallbacks
    //   3	67	2	localParcel1	Parcel
    //   7	59	3	localParcel2	Parcel
    // Exception table:
    //   from	to	target	type
    //   8	14	64	finally
    //   18	25	64	finally
    //   25	50	64	finally
  }
  
  /* Error */
  public void c(IGamesCallbacks paramIGamesCallbacks, int paramInt, boolean paramBoolean1, boolean paramBoolean2)
  {
    // Byte code:
    //   0: iconst_1
    //   1: istore 7
    //   3: invokestatic 24	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   6: astore 5
    //   8: invokestatic 24	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   11: astore 6
    //   13: aload 5
    //   15: ldc 26
    //   17: invokevirtual 30	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
    //   20: aload_1
    //   21: ifnull +82 -> 103
    //   24: aload_1
    //   25: invokeinterface 55 1 0
    //   30: astore_1
    //   31: aload 5
    //   33: aload_1
    //   34: invokevirtual 58	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
    //   37: aload 5
    //   39: iload_2
    //   40: invokevirtual 34	android/os/Parcel:writeInt	(I)V
    //   43: iload_3
    //   44: ifeq +64 -> 108
    //   47: iconst_1
    //   48: istore_2
    //   49: aload 5
    //   51: iload_2
    //   52: invokevirtual 34	android/os/Parcel:writeInt	(I)V
    //   55: iload 4
    //   57: ifeq +56 -> 113
    //   60: iload 7
    //   62: istore_2
    //   63: aload 5
    //   65: iload_2
    //   66: invokevirtual 34	android/os/Parcel:writeInt	(I)V
    //   69: aload_0
    //   70: getfield 15	com/google/android/gms/games/internal/IGamesService$Stub$Proxy:ko	Landroid/os/IBinder;
    //   73: sipush 5048
    //   76: aload 5
    //   78: aload 6
    //   80: iconst_0
    //   81: invokeinterface 40 5 0
    //   86: pop
    //   87: aload 6
    //   89: invokevirtual 43	android/os/Parcel:readException	()V
    //   92: aload 6
    //   94: invokevirtual 46	android/os/Parcel:recycle	()V
    //   97: aload 5
    //   99: invokevirtual 46	android/os/Parcel:recycle	()V
    //   102: return
    //   103: aconst_null
    //   104: astore_1
    //   105: goto -74 -> 31
    //   108: iconst_0
    //   109: istore_2
    //   110: goto -61 -> 49
    //   113: iconst_0
    //   114: istore_2
    //   115: goto -52 -> 63
    //   118: astore_1
    //   119: aload 6
    //   121: invokevirtual 46	android/os/Parcel:recycle	()V
    //   124: aload 5
    //   126: invokevirtual 46	android/os/Parcel:recycle	()V
    //   129: aload_1
    //   130: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	131	0	this	Proxy
    //   0	131	1	paramIGamesCallbacks	IGamesCallbacks
    //   0	131	2	paramInt	int
    //   0	131	3	paramBoolean1	boolean
    //   0	131	4	paramBoolean2	boolean
    //   6	119	5	localParcel1	Parcel
    //   11	109	6	localParcel2	Parcel
    //   1	60	7	i	int
    // Exception table:
    //   from	to	target	type
    //   13	20	118	finally
    //   24	31	118	finally
    //   31	43	118	finally
    //   49	55	118	finally
    //   63	92	118	finally
  }
  
  /* Error */
  public void c(IGamesCallbacks paramIGamesCallbacks, long paramLong)
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
    //   18: ifnull +56 -> 74
    //   21: aload_1
    //   22: invokeinterface 55 1 0
    //   27: astore_1
    //   28: aload 4
    //   30: aload_1
    //   31: invokevirtual 58	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
    //   34: aload 4
    //   36: lload_2
    //   37: invokevirtual 117	android/os/Parcel:writeLong	(J)V
    //   40: aload_0
    //   41: getfield 15	com/google/android/gms/games/internal/IGamesService$Stub$Proxy:ko	Landroid/os/IBinder;
    //   44: sipush 10001
    //   47: aload 4
    //   49: aload 5
    //   51: iconst_0
    //   52: invokeinterface 40 5 0
    //   57: pop
    //   58: aload 5
    //   60: invokevirtual 43	android/os/Parcel:readException	()V
    //   63: aload 5
    //   65: invokevirtual 46	android/os/Parcel:recycle	()V
    //   68: aload 4
    //   70: invokevirtual 46	android/os/Parcel:recycle	()V
    //   73: return
    //   74: aconst_null
    //   75: astore_1
    //   76: goto -48 -> 28
    //   79: astore_1
    //   80: aload 5
    //   82: invokevirtual 46	android/os/Parcel:recycle	()V
    //   85: aload 4
    //   87: invokevirtual 46	android/os/Parcel:recycle	()V
    //   90: aload_1
    //   91: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	92	0	this	Proxy
    //   0	92	1	paramIGamesCallbacks	IGamesCallbacks
    //   0	92	2	paramLong	long
    //   3	83	4	localParcel1	Parcel
    //   8	73	5	localParcel2	Parcel
    // Exception table:
    //   from	to	target	type
    //   10	17	79	finally
    //   21	28	79	finally
    //   28	63	79	finally
  }
  
  /* Error */
  public void c(IGamesCallbacks paramIGamesCallbacks, long paramLong, String paramString)
  {
    // Byte code:
    //   0: invokestatic 24	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   3: astore 5
    //   5: invokestatic 24	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   8: astore 6
    //   10: aload 5
    //   12: ldc 26
    //   14: invokevirtual 30	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
    //   17: aload_1
    //   18: ifnull +63 -> 81
    //   21: aload_1
    //   22: invokeinterface 55 1 0
    //   27: astore_1
    //   28: aload 5
    //   30: aload_1
    //   31: invokevirtual 58	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
    //   34: aload 5
    //   36: lload_2
    //   37: invokevirtual 117	android/os/Parcel:writeLong	(J)V
    //   40: aload 5
    //   42: aload 4
    //   44: invokevirtual 65	android/os/Parcel:writeString	(Ljava/lang/String;)V
    //   47: aload_0
    //   48: getfield 15	com/google/android/gms/games/internal/IGamesService$Stub$Proxy:ko	Landroid/os/IBinder;
    //   51: sipush 10003
    //   54: aload 5
    //   56: aload 6
    //   58: iconst_0
    //   59: invokeinterface 40 5 0
    //   64: pop
    //   65: aload 6
    //   67: invokevirtual 43	android/os/Parcel:readException	()V
    //   70: aload 6
    //   72: invokevirtual 46	android/os/Parcel:recycle	()V
    //   75: aload 5
    //   77: invokevirtual 46	android/os/Parcel:recycle	()V
    //   80: return
    //   81: aconst_null
    //   82: astore_1
    //   83: goto -55 -> 28
    //   86: astore_1
    //   87: aload 6
    //   89: invokevirtual 46	android/os/Parcel:recycle	()V
    //   92: aload 5
    //   94: invokevirtual 46	android/os/Parcel:recycle	()V
    //   97: aload_1
    //   98: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	99	0	this	Proxy
    //   0	99	1	paramIGamesCallbacks	IGamesCallbacks
    //   0	99	2	paramLong	long
    //   0	99	4	paramString	String
    //   3	90	5	localParcel1	Parcel
    //   8	80	6	localParcel2	Parcel
    // Exception table:
    //   from	to	target	type
    //   10	17	86	finally
    //   21	28	86	finally
    //   28	70	86	finally
  }
  
  /* Error */
  public void c(IGamesCallbacks paramIGamesCallbacks, String paramString)
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
    //   16: ifnull +52 -> 68
    //   19: aload_1
    //   20: invokeinterface 55 1 0
    //   25: astore_1
    //   26: aload_3
    //   27: aload_1
    //   28: invokevirtual 58	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
    //   31: aload_3
    //   32: aload_2
    //   33: invokevirtual 65	android/os/Parcel:writeString	(Ljava/lang/String;)V
    //   36: aload_0
    //   37: getfield 15	com/google/android/gms/games/internal/IGamesService$Stub$Proxy:ko	Landroid/os/IBinder;
    //   40: sipush 5032
    //   43: aload_3
    //   44: aload 4
    //   46: iconst_0
    //   47: invokeinterface 40 5 0
    //   52: pop
    //   53: aload 4
    //   55: invokevirtual 43	android/os/Parcel:readException	()V
    //   58: aload 4
    //   60: invokevirtual 46	android/os/Parcel:recycle	()V
    //   63: aload_3
    //   64: invokevirtual 46	android/os/Parcel:recycle	()V
    //   67: return
    //   68: aconst_null
    //   69: astore_1
    //   70: goto -44 -> 26
    //   73: astore_1
    //   74: aload 4
    //   76: invokevirtual 46	android/os/Parcel:recycle	()V
    //   79: aload_3
    //   80: invokevirtual 46	android/os/Parcel:recycle	()V
    //   83: aload_1
    //   84: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	85	0	this	Proxy
    //   0	85	1	paramIGamesCallbacks	IGamesCallbacks
    //   0	85	2	paramString	String
    //   3	77	3	localParcel1	Parcel
    //   7	68	4	localParcel2	Parcel
    // Exception table:
    //   from	to	target	type
    //   9	15	73	finally
    //   19	26	73	finally
    //   26	58	73	finally
  }
  
  /* Error */
  public void c(IGamesCallbacks paramIGamesCallbacks, String paramString, int paramInt)
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
    //   18: ifnull +62 -> 80
    //   21: aload_1
    //   22: invokeinterface 55 1 0
    //   27: astore_1
    //   28: aload 4
    //   30: aload_1
    //   31: invokevirtual 58	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
    //   34: aload 4
    //   36: aload_2
    //   37: invokevirtual 65	android/os/Parcel:writeString	(Ljava/lang/String;)V
    //   40: aload 4
    //   42: iload_3
    //   43: invokevirtual 34	android/os/Parcel:writeInt	(I)V
    //   46: aload_0
    //   47: getfield 15	com/google/android/gms/games/internal/IGamesService$Stub$Proxy:ko	Landroid/os/IBinder;
    //   50: sipush 12024
    //   53: aload 4
    //   55: aload 5
    //   57: iconst_0
    //   58: invokeinterface 40 5 0
    //   63: pop
    //   64: aload 5
    //   66: invokevirtual 43	android/os/Parcel:readException	()V
    //   69: aload 5
    //   71: invokevirtual 46	android/os/Parcel:recycle	()V
    //   74: aload 4
    //   76: invokevirtual 46	android/os/Parcel:recycle	()V
    //   79: return
    //   80: aconst_null
    //   81: astore_1
    //   82: goto -54 -> 28
    //   85: astore_1
    //   86: aload 5
    //   88: invokevirtual 46	android/os/Parcel:recycle	()V
    //   91: aload 4
    //   93: invokevirtual 46	android/os/Parcel:recycle	()V
    //   96: aload_1
    //   97: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	98	0	this	Proxy
    //   0	98	1	paramIGamesCallbacks	IGamesCallbacks
    //   0	98	2	paramString	String
    //   0	98	3	paramInt	int
    //   3	89	4	localParcel1	Parcel
    //   8	79	5	localParcel2	Parcel
    // Exception table:
    //   from	to	target	type
    //   10	17	85	finally
    //   21	28	85	finally
    //   28	69	85	finally
  }
  
  /* Error */
  public void c(IGamesCallbacks paramIGamesCallbacks, String paramString, int paramInt, boolean paramBoolean1, boolean paramBoolean2)
  {
    // Byte code:
    //   0: iconst_1
    //   1: istore 8
    //   3: invokestatic 24	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   6: astore 6
    //   8: invokestatic 24	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   11: astore 7
    //   13: aload 6
    //   15: ldc 26
    //   17: invokevirtual 30	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
    //   20: aload_1
    //   21: ifnull +89 -> 110
    //   24: aload_1
    //   25: invokeinterface 55 1 0
    //   30: astore_1
    //   31: aload 6
    //   33: aload_1
    //   34: invokevirtual 58	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
    //   37: aload 6
    //   39: aload_2
    //   40: invokevirtual 65	android/os/Parcel:writeString	(Ljava/lang/String;)V
    //   43: aload 6
    //   45: iload_3
    //   46: invokevirtual 34	android/os/Parcel:writeInt	(I)V
    //   49: iload 4
    //   51: ifeq +64 -> 115
    //   54: iconst_1
    //   55: istore_3
    //   56: aload 6
    //   58: iload_3
    //   59: invokevirtual 34	android/os/Parcel:writeInt	(I)V
    //   62: iload 5
    //   64: ifeq +56 -> 120
    //   67: iload 8
    //   69: istore_3
    //   70: aload 6
    //   72: iload_3
    //   73: invokevirtual 34	android/os/Parcel:writeInt	(I)V
    //   76: aload_0
    //   77: getfield 15	com/google/android/gms/games/internal/IGamesService$Stub$Proxy:ko	Landroid/os/IBinder;
    //   80: sipush 9001
    //   83: aload 6
    //   85: aload 7
    //   87: iconst_0
    //   88: invokeinterface 40 5 0
    //   93: pop
    //   94: aload 7
    //   96: invokevirtual 43	android/os/Parcel:readException	()V
    //   99: aload 7
    //   101: invokevirtual 46	android/os/Parcel:recycle	()V
    //   104: aload 6
    //   106: invokevirtual 46	android/os/Parcel:recycle	()V
    //   109: return
    //   110: aconst_null
    //   111: astore_1
    //   112: goto -81 -> 31
    //   115: iconst_0
    //   116: istore_3
    //   117: goto -61 -> 56
    //   120: iconst_0
    //   121: istore_3
    //   122: goto -52 -> 70
    //   125: astore_1
    //   126: aload 7
    //   128: invokevirtual 46	android/os/Parcel:recycle	()V
    //   131: aload 6
    //   133: invokevirtual 46	android/os/Parcel:recycle	()V
    //   136: aload_1
    //   137: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	138	0	this	Proxy
    //   0	138	1	paramIGamesCallbacks	IGamesCallbacks
    //   0	138	2	paramString	String
    //   0	138	3	paramInt	int
    //   0	138	4	paramBoolean1	boolean
    //   0	138	5	paramBoolean2	boolean
    //   6	126	6	localParcel1	Parcel
    //   11	116	7	localParcel2	Parcel
    //   1	67	8	i	int
    // Exception table:
    //   from	to	target	type
    //   13	20	125	finally
    //   24	31	125	finally
    //   31	49	125	finally
    //   56	62	125	finally
    //   70	99	125	finally
  }
  
  /* Error */
  public void c(IGamesCallbacks paramIGamesCallbacks, String paramString1, String paramString2)
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
    //   18: ifnull +62 -> 80
    //   21: aload_1
    //   22: invokeinterface 55 1 0
    //   27: astore_1
    //   28: aload 4
    //   30: aload_1
    //   31: invokevirtual 58	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
    //   34: aload 4
    //   36: aload_2
    //   37: invokevirtual 65	android/os/Parcel:writeString	(Ljava/lang/String;)V
    //   40: aload 4
    //   42: aload_3
    //   43: invokevirtual 65	android/os/Parcel:writeString	(Ljava/lang/String;)V
    //   46: aload_0
    //   47: getfield 15	com/google/android/gms/games/internal/IGamesService$Stub$Proxy:ko	Landroid/os/IBinder;
    //   50: sipush 8011
    //   53: aload 4
    //   55: aload 5
    //   57: iconst_0
    //   58: invokeinterface 40 5 0
    //   63: pop
    //   64: aload 5
    //   66: invokevirtual 43	android/os/Parcel:readException	()V
    //   69: aload 5
    //   71: invokevirtual 46	android/os/Parcel:recycle	()V
    //   74: aload 4
    //   76: invokevirtual 46	android/os/Parcel:recycle	()V
    //   79: return
    //   80: aconst_null
    //   81: astore_1
    //   82: goto -54 -> 28
    //   85: astore_1
    //   86: aload 5
    //   88: invokevirtual 46	android/os/Parcel:recycle	()V
    //   91: aload 4
    //   93: invokevirtual 46	android/os/Parcel:recycle	()V
    //   96: aload_1
    //   97: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	98	0	this	Proxy
    //   0	98	1	paramIGamesCallbacks	IGamesCallbacks
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
  public void c(IGamesCallbacks paramIGamesCallbacks, String paramString1, String paramString2, boolean paramBoolean)
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore 7
    //   3: invokestatic 24	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   6: astore 5
    //   8: invokestatic 24	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   11: astore 6
    //   13: aload 5
    //   15: ldc 26
    //   17: invokevirtual 30	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
    //   20: aload_1
    //   21: ifnull +77 -> 98
    //   24: aload_1
    //   25: invokeinterface 55 1 0
    //   30: astore_1
    //   31: aload 5
    //   33: aload_1
    //   34: invokevirtual 58	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
    //   37: aload 5
    //   39: aload_2
    //   40: invokevirtual 65	android/os/Parcel:writeString	(Ljava/lang/String;)V
    //   43: aload 5
    //   45: aload_3
    //   46: invokevirtual 65	android/os/Parcel:writeString	(Ljava/lang/String;)V
    //   49: iload 4
    //   51: ifeq +6 -> 57
    //   54: iconst_1
    //   55: istore 7
    //   57: aload 5
    //   59: iload 7
    //   61: invokevirtual 34	android/os/Parcel:writeInt	(I)V
    //   64: aload_0
    //   65: getfield 15	com/google/android/gms/games/internal/IGamesService$Stub$Proxy:ko	Landroid/os/IBinder;
    //   68: sipush 12003
    //   71: aload 5
    //   73: aload 6
    //   75: iconst_0
    //   76: invokeinterface 40 5 0
    //   81: pop
    //   82: aload 6
    //   84: invokevirtual 43	android/os/Parcel:readException	()V
    //   87: aload 6
    //   89: invokevirtual 46	android/os/Parcel:recycle	()V
    //   92: aload 5
    //   94: invokevirtual 46	android/os/Parcel:recycle	()V
    //   97: return
    //   98: aconst_null
    //   99: astore_1
    //   100: goto -69 -> 31
    //   103: astore_1
    //   104: aload 6
    //   106: invokevirtual 46	android/os/Parcel:recycle	()V
    //   109: aload 5
    //   111: invokevirtual 46	android/os/Parcel:recycle	()V
    //   114: aload_1
    //   115: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	116	0	this	Proxy
    //   0	116	1	paramIGamesCallbacks	IGamesCallbacks
    //   0	116	2	paramString1	String
    //   0	116	3	paramString2	String
    //   0	116	4	paramBoolean	boolean
    //   6	104	5	localParcel1	Parcel
    //   11	94	6	localParcel2	Parcel
    //   1	59	7	i	int
    // Exception table:
    //   from	to	target	type
    //   13	20	103	finally
    //   24	31	103	finally
    //   31	49	103	finally
    //   57	87	103	finally
  }
  
  /* Error */
  public void c(IGamesCallbacks paramIGamesCallbacks, String paramString, boolean paramBoolean)
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore 6
    //   3: invokestatic 24	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   6: astore 4
    //   8: invokestatic 24	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   11: astore 5
    //   13: aload 4
    //   15: ldc 26
    //   17: invokevirtual 30	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
    //   20: aload_1
    //   21: ifnull +70 -> 91
    //   24: aload_1
    //   25: invokeinterface 55 1 0
    //   30: astore_1
    //   31: aload 4
    //   33: aload_1
    //   34: invokevirtual 58	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
    //   37: aload 4
    //   39: aload_2
    //   40: invokevirtual 65	android/os/Parcel:writeString	(Ljava/lang/String;)V
    //   43: iload_3
    //   44: ifeq +6 -> 50
    //   47: iconst_1
    //   48: istore 6
    //   50: aload 4
    //   52: iload 6
    //   54: invokevirtual 34	android/os/Parcel:writeInt	(I)V
    //   57: aload_0
    //   58: getfield 15	com/google/android/gms/games/internal/IGamesService$Stub$Proxy:ko	Landroid/os/IBinder;
    //   61: sipush 6504
    //   64: aload 4
    //   66: aload 5
    //   68: iconst_0
    //   69: invokeinterface 40 5 0
    //   74: pop
    //   75: aload 5
    //   77: invokevirtual 43	android/os/Parcel:readException	()V
    //   80: aload 5
    //   82: invokevirtual 46	android/os/Parcel:recycle	()V
    //   85: aload 4
    //   87: invokevirtual 46	android/os/Parcel:recycle	()V
    //   90: return
    //   91: aconst_null
    //   92: astore_1
    //   93: goto -62 -> 31
    //   96: astore_1
    //   97: aload 5
    //   99: invokevirtual 46	android/os/Parcel:recycle	()V
    //   102: aload 4
    //   104: invokevirtual 46	android/os/Parcel:recycle	()V
    //   107: aload_1
    //   108: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	109	0	this	Proxy
    //   0	109	1	paramIGamesCallbacks	IGamesCallbacks
    //   0	109	2	paramString	String
    //   0	109	3	paramBoolean	boolean
    //   6	97	4	localParcel1	Parcel
    //   11	87	5	localParcel2	Parcel
    //   1	52	6	i	int
    // Exception table:
    //   from	to	target	type
    //   13	20	96	finally
    //   24	31	96	finally
    //   31	43	96	finally
    //   50	80	96	finally
  }
  
  /* Error */
  public void c(IGamesCallbacks paramIGamesCallbacks, boolean paramBoolean)
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
    //   19: ifnull +60 -> 79
    //   22: aload_1
    //   23: invokeinterface 55 1 0
    //   28: astore_1
    //   29: aload_3
    //   30: aload_1
    //   31: invokevirtual 58	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
    //   34: iload_2
    //   35: ifeq +6 -> 41
    //   38: iconst_1
    //   39: istore 5
    //   41: aload_3
    //   42: iload 5
    //   44: invokevirtual 34	android/os/Parcel:writeInt	(I)V
    //   47: aload_0
    //   48: getfield 15	com/google/android/gms/games/internal/IGamesService$Stub$Proxy:ko	Landroid/os/IBinder;
    //   51: sipush 8027
    //   54: aload_3
    //   55: aload 4
    //   57: iconst_0
    //   58: invokeinterface 40 5 0
    //   63: pop
    //   64: aload 4
    //   66: invokevirtual 43	android/os/Parcel:readException	()V
    //   69: aload 4
    //   71: invokevirtual 46	android/os/Parcel:recycle	()V
    //   74: aload_3
    //   75: invokevirtual 46	android/os/Parcel:recycle	()V
    //   78: return
    //   79: aconst_null
    //   80: astore_1
    //   81: goto -52 -> 29
    //   84: astore_1
    //   85: aload 4
    //   87: invokevirtual 46	android/os/Parcel:recycle	()V
    //   90: aload_3
    //   91: invokevirtual 46	android/os/Parcel:recycle	()V
    //   94: aload_1
    //   95: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	96	0	this	Proxy
    //   0	96	1	paramIGamesCallbacks	IGamesCallbacks
    //   0	96	2	paramBoolean	boolean
    //   6	85	3	localParcel1	Parcel
    //   10	76	4	localParcel2	Parcel
    //   1	42	5	i	int
    // Exception table:
    //   from	to	target	type
    //   12	18	84	finally
    //   22	29	84	finally
    //   29	34	84	finally
    //   41	69	84	finally
  }
  
  /* Error */
  public void c(IGamesCallbacks paramIGamesCallbacks, String[] paramArrayOfString)
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
    //   16: ifnull +52 -> 68
    //   19: aload_1
    //   20: invokeinterface 55 1 0
    //   25: astore_1
    //   26: aload_3
    //   27: aload_1
    //   28: invokevirtual 58	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
    //   31: aload_3
    //   32: aload_2
    //   33: invokevirtual 134	android/os/Parcel:writeStringArray	([Ljava/lang/String;)V
    //   36: aload_0
    //   37: getfield 15	com/google/android/gms/games/internal/IGamesService$Stub$Proxy:ko	Landroid/os/IBinder;
    //   40: sipush 10020
    //   43: aload_3
    //   44: aload 4
    //   46: iconst_0
    //   47: invokeinterface 40 5 0
    //   52: pop
    //   53: aload 4
    //   55: invokevirtual 43	android/os/Parcel:readException	()V
    //   58: aload 4
    //   60: invokevirtual 46	android/os/Parcel:recycle	()V
    //   63: aload_3
    //   64: invokevirtual 46	android/os/Parcel:recycle	()V
    //   67: return
    //   68: aconst_null
    //   69: astore_1
    //   70: goto -44 -> 26
    //   73: astore_1
    //   74: aload 4
    //   76: invokevirtual 46	android/os/Parcel:recycle	()V
    //   79: aload_3
    //   80: invokevirtual 46	android/os/Parcel:recycle	()V
    //   83: aload_1
    //   84: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	85	0	this	Proxy
    //   0	85	1	paramIGamesCallbacks	IGamesCallbacks
    //   0	85	2	paramArrayOfString	String[]
    //   3	77	3	localParcel1	Parcel
    //   7	68	4	localParcel2	Parcel
    // Exception table:
    //   from	to	target	type
    //   9	15	73	finally
    //   19	26	73	finally
    //   26	58	73	finally
  }
  
  public void c(String paramString1, String paramString2, int paramInt)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
      localParcel1.writeString(paramString1);
      localParcel1.writeString(paramString2);
      localParcel1.writeInt(paramInt);
      ko.transact(8026, localParcel1, localParcel2, 0);
      localParcel2.readException();
      return;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }
  
  public void ch(int paramInt)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
      localParcel1.writeInt(paramInt);
      ko.transact(5036, localParcel1, localParcel2, 0);
      localParcel2.readException();
      return;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }
  
  public void d(long paramLong, String paramString)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
      localParcel1.writeLong(paramLong);
      localParcel1.writeString(paramString);
      ko.transact(12014, localParcel1, localParcel2, 0);
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
  public void d(IGamesCallbacks paramIGamesCallbacks)
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
    //   15: ifnull +44 -> 59
    //   18: aload_1
    //   19: invokeinterface 55 1 0
    //   24: astore_1
    //   25: aload_2
    //   26: aload_1
    //   27: invokevirtual 58	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
    //   30: aload_0
    //   31: getfield 15	com/google/android/gms/games/internal/IGamesService$Stub$Proxy:ko	Landroid/os/IBinder;
    //   34: sipush 5026
    //   37: aload_2
    //   38: aload_3
    //   39: iconst_0
    //   40: invokeinterface 40 5 0
    //   45: pop
    //   46: aload_3
    //   47: invokevirtual 43	android/os/Parcel:readException	()V
    //   50: aload_3
    //   51: invokevirtual 46	android/os/Parcel:recycle	()V
    //   54: aload_2
    //   55: invokevirtual 46	android/os/Parcel:recycle	()V
    //   58: return
    //   59: aconst_null
    //   60: astore_1
    //   61: goto -36 -> 25
    //   64: astore_1
    //   65: aload_3
    //   66: invokevirtual 46	android/os/Parcel:recycle	()V
    //   69: aload_2
    //   70: invokevirtual 46	android/os/Parcel:recycle	()V
    //   73: aload_1
    //   74: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	75	0	this	Proxy
    //   0	75	1	paramIGamesCallbacks	IGamesCallbacks
    //   3	67	2	localParcel1	Parcel
    //   7	59	3	localParcel2	Parcel
    // Exception table:
    //   from	to	target	type
    //   8	14	64	finally
    //   18	25	64	finally
    //   25	50	64	finally
  }
  
  /* Error */
  public void d(IGamesCallbacks paramIGamesCallbacks, int paramInt, boolean paramBoolean1, boolean paramBoolean2)
  {
    // Byte code:
    //   0: iconst_1
    //   1: istore 7
    //   3: invokestatic 24	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   6: astore 5
    //   8: invokestatic 24	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   11: astore 6
    //   13: aload 5
    //   15: ldc 26
    //   17: invokevirtual 30	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
    //   20: aload_1
    //   21: ifnull +82 -> 103
    //   24: aload_1
    //   25: invokeinterface 55 1 0
    //   30: astore_1
    //   31: aload 5
    //   33: aload_1
    //   34: invokevirtual 58	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
    //   37: aload 5
    //   39: iload_2
    //   40: invokevirtual 34	android/os/Parcel:writeInt	(I)V
    //   43: iload_3
    //   44: ifeq +64 -> 108
    //   47: iconst_1
    //   48: istore_2
    //   49: aload 5
    //   51: iload_2
    //   52: invokevirtual 34	android/os/Parcel:writeInt	(I)V
    //   55: iload 4
    //   57: ifeq +56 -> 113
    //   60: iload 7
    //   62: istore_2
    //   63: aload 5
    //   65: iload_2
    //   66: invokevirtual 34	android/os/Parcel:writeInt	(I)V
    //   69: aload_0
    //   70: getfield 15	com/google/android/gms/games/internal/IGamesService$Stub$Proxy:ko	Landroid/os/IBinder;
    //   73: sipush 6003
    //   76: aload 5
    //   78: aload 6
    //   80: iconst_0
    //   81: invokeinterface 40 5 0
    //   86: pop
    //   87: aload 6
    //   89: invokevirtual 43	android/os/Parcel:readException	()V
    //   92: aload 6
    //   94: invokevirtual 46	android/os/Parcel:recycle	()V
    //   97: aload 5
    //   99: invokevirtual 46	android/os/Parcel:recycle	()V
    //   102: return
    //   103: aconst_null
    //   104: astore_1
    //   105: goto -74 -> 31
    //   108: iconst_0
    //   109: istore_2
    //   110: goto -61 -> 49
    //   113: iconst_0
    //   114: istore_2
    //   115: goto -52 -> 63
    //   118: astore_1
    //   119: aload 6
    //   121: invokevirtual 46	android/os/Parcel:recycle	()V
    //   124: aload 5
    //   126: invokevirtual 46	android/os/Parcel:recycle	()V
    //   129: aload_1
    //   130: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	131	0	this	Proxy
    //   0	131	1	paramIGamesCallbacks	IGamesCallbacks
    //   0	131	2	paramInt	int
    //   0	131	3	paramBoolean1	boolean
    //   0	131	4	paramBoolean2	boolean
    //   6	119	5	localParcel1	Parcel
    //   11	109	6	localParcel2	Parcel
    //   1	60	7	i	int
    // Exception table:
    //   from	to	target	type
    //   13	20	118	finally
    //   24	31	118	finally
    //   31	43	118	finally
    //   49	55	118	finally
    //   63	92	118	finally
  }
  
  /* Error */
  public void d(IGamesCallbacks paramIGamesCallbacks, long paramLong)
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
    //   18: ifnull +56 -> 74
    //   21: aload_1
    //   22: invokeinterface 55 1 0
    //   27: astore_1
    //   28: aload 4
    //   30: aload_1
    //   31: invokevirtual 58	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
    //   34: aload 4
    //   36: lload_2
    //   37: invokevirtual 117	android/os/Parcel:writeLong	(J)V
    //   40: aload_0
    //   41: getfield 15	com/google/android/gms/games/internal/IGamesService$Stub$Proxy:ko	Landroid/os/IBinder;
    //   44: sipush 12011
    //   47: aload 4
    //   49: aload 5
    //   51: iconst_0
    //   52: invokeinterface 40 5 0
    //   57: pop
    //   58: aload 5
    //   60: invokevirtual 43	android/os/Parcel:readException	()V
    //   63: aload 5
    //   65: invokevirtual 46	android/os/Parcel:recycle	()V
    //   68: aload 4
    //   70: invokevirtual 46	android/os/Parcel:recycle	()V
    //   73: return
    //   74: aconst_null
    //   75: astore_1
    //   76: goto -48 -> 28
    //   79: astore_1
    //   80: aload 5
    //   82: invokevirtual 46	android/os/Parcel:recycle	()V
    //   85: aload 4
    //   87: invokevirtual 46	android/os/Parcel:recycle	()V
    //   90: aload_1
    //   91: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	92	0	this	Proxy
    //   0	92	1	paramIGamesCallbacks	IGamesCallbacks
    //   0	92	2	paramLong	long
    //   3	83	4	localParcel1	Parcel
    //   8	73	5	localParcel2	Parcel
    // Exception table:
    //   from	to	target	type
    //   10	17	79	finally
    //   21	28	79	finally
    //   28	63	79	finally
  }
  
  /* Error */
  public void d(IGamesCallbacks paramIGamesCallbacks, long paramLong, String paramString)
  {
    // Byte code:
    //   0: invokestatic 24	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   3: astore 5
    //   5: invokestatic 24	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   8: astore 6
    //   10: aload 5
    //   12: ldc 26
    //   14: invokevirtual 30	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
    //   17: aload_1
    //   18: ifnull +63 -> 81
    //   21: aload_1
    //   22: invokeinterface 55 1 0
    //   27: astore_1
    //   28: aload 5
    //   30: aload_1
    //   31: invokevirtual 58	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
    //   34: aload 5
    //   36: lload_2
    //   37: invokevirtual 117	android/os/Parcel:writeLong	(J)V
    //   40: aload 5
    //   42: aload 4
    //   44: invokevirtual 65	android/os/Parcel:writeString	(Ljava/lang/String;)V
    //   47: aload_0
    //   48: getfield 15	com/google/android/gms/games/internal/IGamesService$Stub$Proxy:ko	Landroid/os/IBinder;
    //   51: sipush 12013
    //   54: aload 5
    //   56: aload 6
    //   58: iconst_0
    //   59: invokeinterface 40 5 0
    //   64: pop
    //   65: aload 6
    //   67: invokevirtual 43	android/os/Parcel:readException	()V
    //   70: aload 6
    //   72: invokevirtual 46	android/os/Parcel:recycle	()V
    //   75: aload 5
    //   77: invokevirtual 46	android/os/Parcel:recycle	()V
    //   80: return
    //   81: aconst_null
    //   82: astore_1
    //   83: goto -55 -> 28
    //   86: astore_1
    //   87: aload 6
    //   89: invokevirtual 46	android/os/Parcel:recycle	()V
    //   92: aload 5
    //   94: invokevirtual 46	android/os/Parcel:recycle	()V
    //   97: aload_1
    //   98: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	99	0	this	Proxy
    //   0	99	1	paramIGamesCallbacks	IGamesCallbacks
    //   0	99	2	paramLong	long
    //   0	99	4	paramString	String
    //   3	90	5	localParcel1	Parcel
    //   8	80	6	localParcel2	Parcel
    // Exception table:
    //   from	to	target	type
    //   10	17	86	finally
    //   21	28	86	finally
    //   28	70	86	finally
  }
  
  /* Error */
  public void d(IGamesCallbacks paramIGamesCallbacks, String paramString)
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
    //   16: ifnull +52 -> 68
    //   19: aload_1
    //   20: invokeinterface 55 1 0
    //   25: astore_1
    //   26: aload_3
    //   27: aload_1
    //   28: invokevirtual 58	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
    //   31: aload_3
    //   32: aload_2
    //   33: invokevirtual 65	android/os/Parcel:writeString	(Ljava/lang/String;)V
    //   36: aload_0
    //   37: getfield 15	com/google/android/gms/games/internal/IGamesService$Stub$Proxy:ko	Landroid/os/IBinder;
    //   40: sipush 5037
    //   43: aload_3
    //   44: aload 4
    //   46: iconst_0
    //   47: invokeinterface 40 5 0
    //   52: pop
    //   53: aload 4
    //   55: invokevirtual 43	android/os/Parcel:readException	()V
    //   58: aload 4
    //   60: invokevirtual 46	android/os/Parcel:recycle	()V
    //   63: aload_3
    //   64: invokevirtual 46	android/os/Parcel:recycle	()V
    //   67: return
    //   68: aconst_null
    //   69: astore_1
    //   70: goto -44 -> 26
    //   73: astore_1
    //   74: aload 4
    //   76: invokevirtual 46	android/os/Parcel:recycle	()V
    //   79: aload_3
    //   80: invokevirtual 46	android/os/Parcel:recycle	()V
    //   83: aload_1
    //   84: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	85	0	this	Proxy
    //   0	85	1	paramIGamesCallbacks	IGamesCallbacks
    //   0	85	2	paramString	String
    //   3	77	3	localParcel1	Parcel
    //   7	68	4	localParcel2	Parcel
    // Exception table:
    //   from	to	target	type
    //   9	15	73	finally
    //   19	26	73	finally
    //   26	58	73	finally
  }
  
  /* Error */
  public void d(IGamesCallbacks paramIGamesCallbacks, String paramString, int paramInt, boolean paramBoolean1, boolean paramBoolean2)
  {
    // Byte code:
    //   0: iconst_1
    //   1: istore 8
    //   3: invokestatic 24	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   6: astore 6
    //   8: invokestatic 24	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   11: astore 7
    //   13: aload 6
    //   15: ldc 26
    //   17: invokevirtual 30	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
    //   20: aload_1
    //   21: ifnull +89 -> 110
    //   24: aload_1
    //   25: invokeinterface 55 1 0
    //   30: astore_1
    //   31: aload 6
    //   33: aload_1
    //   34: invokevirtual 58	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
    //   37: aload 6
    //   39: aload_2
    //   40: invokevirtual 65	android/os/Parcel:writeString	(Ljava/lang/String;)V
    //   43: aload 6
    //   45: iload_3
    //   46: invokevirtual 34	android/os/Parcel:writeInt	(I)V
    //   49: iload 4
    //   51: ifeq +64 -> 115
    //   54: iconst_1
    //   55: istore_3
    //   56: aload 6
    //   58: iload_3
    //   59: invokevirtual 34	android/os/Parcel:writeInt	(I)V
    //   62: iload 5
    //   64: ifeq +56 -> 120
    //   67: iload 8
    //   69: istore_3
    //   70: aload 6
    //   72: iload_3
    //   73: invokevirtual 34	android/os/Parcel:writeInt	(I)V
    //   76: aload_0
    //   77: getfield 15	com/google/android/gms/games/internal/IGamesService$Stub$Proxy:ko	Landroid/os/IBinder;
    //   80: sipush 9020
    //   83: aload 6
    //   85: aload 7
    //   87: iconst_0
    //   88: invokeinterface 40 5 0
    //   93: pop
    //   94: aload 7
    //   96: invokevirtual 43	android/os/Parcel:readException	()V
    //   99: aload 7
    //   101: invokevirtual 46	android/os/Parcel:recycle	()V
    //   104: aload 6
    //   106: invokevirtual 46	android/os/Parcel:recycle	()V
    //   109: return
    //   110: aconst_null
    //   111: astore_1
    //   112: goto -81 -> 31
    //   115: iconst_0
    //   116: istore_3
    //   117: goto -61 -> 56
    //   120: iconst_0
    //   121: istore_3
    //   122: goto -52 -> 70
    //   125: astore_1
    //   126: aload 7
    //   128: invokevirtual 46	android/os/Parcel:recycle	()V
    //   131: aload 6
    //   133: invokevirtual 46	android/os/Parcel:recycle	()V
    //   136: aload_1
    //   137: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	138	0	this	Proxy
    //   0	138	1	paramIGamesCallbacks	IGamesCallbacks
    //   0	138	2	paramString	String
    //   0	138	3	paramInt	int
    //   0	138	4	paramBoolean1	boolean
    //   0	138	5	paramBoolean2	boolean
    //   6	126	6	localParcel1	Parcel
    //   11	116	7	localParcel2	Parcel
    //   1	67	8	i	int
    // Exception table:
    //   from	to	target	type
    //   13	20	125	finally
    //   24	31	125	finally
    //   31	49	125	finally
    //   56	62	125	finally
    //   70	99	125	finally
  }
  
  /* Error */
  public void d(IGamesCallbacks paramIGamesCallbacks, String paramString1, String paramString2)
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
    //   18: ifnull +62 -> 80
    //   21: aload_1
    //   22: invokeinterface 55 1 0
    //   27: astore_1
    //   28: aload 4
    //   30: aload_1
    //   31: invokevirtual 58	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
    //   34: aload 4
    //   36: aload_2
    //   37: invokevirtual 65	android/os/Parcel:writeString	(Ljava/lang/String;)V
    //   40: aload 4
    //   42: aload_3
    //   43: invokevirtual 65	android/os/Parcel:writeString	(Ljava/lang/String;)V
    //   46: aload_0
    //   47: getfield 15	com/google/android/gms/games/internal/IGamesService$Stub$Proxy:ko	Landroid/os/IBinder;
    //   50: sipush 8015
    //   53: aload 4
    //   55: aload 5
    //   57: iconst_0
    //   58: invokeinterface 40 5 0
    //   63: pop
    //   64: aload 5
    //   66: invokevirtual 43	android/os/Parcel:readException	()V
    //   69: aload 5
    //   71: invokevirtual 46	android/os/Parcel:recycle	()V
    //   74: aload 4
    //   76: invokevirtual 46	android/os/Parcel:recycle	()V
    //   79: return
    //   80: aconst_null
    //   81: astore_1
    //   82: goto -54 -> 28
    //   85: astore_1
    //   86: aload 5
    //   88: invokevirtual 46	android/os/Parcel:recycle	()V
    //   91: aload 4
    //   93: invokevirtual 46	android/os/Parcel:recycle	()V
    //   96: aload_1
    //   97: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	98	0	this	Proxy
    //   0	98	1	paramIGamesCallbacks	IGamesCallbacks
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
  public void d(IGamesCallbacks paramIGamesCallbacks, String paramString, boolean paramBoolean)
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore 6
    //   3: invokestatic 24	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   6: astore 4
    //   8: invokestatic 24	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   11: astore 5
    //   13: aload 4
    //   15: ldc 26
    //   17: invokevirtual 30	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
    //   20: aload_1
    //   21: ifnull +70 -> 91
    //   24: aload_1
    //   25: invokeinterface 55 1 0
    //   30: astore_1
    //   31: aload 4
    //   33: aload_1
    //   34: invokevirtual 58	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
    //   37: aload 4
    //   39: aload_2
    //   40: invokevirtual 65	android/os/Parcel:writeString	(Ljava/lang/String;)V
    //   43: iload_3
    //   44: ifeq +6 -> 50
    //   47: iconst_1
    //   48: istore 6
    //   50: aload 4
    //   52: iload 6
    //   54: invokevirtual 34	android/os/Parcel:writeInt	(I)V
    //   57: aload_0
    //   58: getfield 15	com/google/android/gms/games/internal/IGamesService$Stub$Proxy:ko	Landroid/os/IBinder;
    //   61: sipush 6505
    //   64: aload 4
    //   66: aload 5
    //   68: iconst_0
    //   69: invokeinterface 40 5 0
    //   74: pop
    //   75: aload 5
    //   77: invokevirtual 43	android/os/Parcel:readException	()V
    //   80: aload 5
    //   82: invokevirtual 46	android/os/Parcel:recycle	()V
    //   85: aload 4
    //   87: invokevirtual 46	android/os/Parcel:recycle	()V
    //   90: return
    //   91: aconst_null
    //   92: astore_1
    //   93: goto -62 -> 31
    //   96: astore_1
    //   97: aload 5
    //   99: invokevirtual 46	android/os/Parcel:recycle	()V
    //   102: aload 4
    //   104: invokevirtual 46	android/os/Parcel:recycle	()V
    //   107: aload_1
    //   108: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	109	0	this	Proxy
    //   0	109	1	paramIGamesCallbacks	IGamesCallbacks
    //   0	109	2	paramString	String
    //   0	109	3	paramBoolean	boolean
    //   6	97	4	localParcel1	Parcel
    //   11	87	5	localParcel2	Parcel
    //   1	52	6	i	int
    // Exception table:
    //   from	to	target	type
    //   13	20	96	finally
    //   24	31	96	finally
    //   31	43	96	finally
    //   50	80	96	finally
  }
  
  /* Error */
  public void d(IGamesCallbacks paramIGamesCallbacks, boolean paramBoolean)
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
    //   19: ifnull +60 -> 79
    //   22: aload_1
    //   23: invokeinterface 55 1 0
    //   28: astore_1
    //   29: aload_3
    //   30: aload_1
    //   31: invokevirtual 58	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
    //   34: iload_2
    //   35: ifeq +6 -> 41
    //   38: iconst_1
    //   39: istore 5
    //   41: aload_3
    //   42: iload 5
    //   44: invokevirtual 34	android/os/Parcel:writeInt	(I)V
    //   47: aload_0
    //   48: getfield 15	com/google/android/gms/games/internal/IGamesService$Stub$Proxy:ko	Landroid/os/IBinder;
    //   51: sipush 12002
    //   54: aload_3
    //   55: aload 4
    //   57: iconst_0
    //   58: invokeinterface 40 5 0
    //   63: pop
    //   64: aload 4
    //   66: invokevirtual 43	android/os/Parcel:readException	()V
    //   69: aload 4
    //   71: invokevirtual 46	android/os/Parcel:recycle	()V
    //   74: aload_3
    //   75: invokevirtual 46	android/os/Parcel:recycle	()V
    //   78: return
    //   79: aconst_null
    //   80: astore_1
    //   81: goto -52 -> 29
    //   84: astore_1
    //   85: aload 4
    //   87: invokevirtual 46	android/os/Parcel:recycle	()V
    //   90: aload_3
    //   91: invokevirtual 46	android/os/Parcel:recycle	()V
    //   94: aload_1
    //   95: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	96	0	this	Proxy
    //   0	96	1	paramIGamesCallbacks	IGamesCallbacks
    //   0	96	2	paramBoolean	boolean
    //   6	85	3	localParcel1	Parcel
    //   10	76	4	localParcel2	Parcel
    //   1	42	5	i	int
    // Exception table:
    //   from	to	target	type
    //   12	18	84	finally
    //   22	29	84	finally
    //   29	34	84	finally
    //   41	69	84	finally
  }
  
  /* Error */
  public void e(IGamesCallbacks paramIGamesCallbacks)
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
    //   15: ifnull +44 -> 59
    //   18: aload_1
    //   19: invokeinterface 55 1 0
    //   24: astore_1
    //   25: aload_2
    //   26: aload_1
    //   27: invokevirtual 58	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
    //   30: aload_0
    //   31: getfield 15	com/google/android/gms/games/internal/IGamesService$Stub$Proxy:ko	Landroid/os/IBinder;
    //   34: sipush 5027
    //   37: aload_2
    //   38: aload_3
    //   39: iconst_0
    //   40: invokeinterface 40 5 0
    //   45: pop
    //   46: aload_3
    //   47: invokevirtual 43	android/os/Parcel:readException	()V
    //   50: aload_3
    //   51: invokevirtual 46	android/os/Parcel:recycle	()V
    //   54: aload_2
    //   55: invokevirtual 46	android/os/Parcel:recycle	()V
    //   58: return
    //   59: aconst_null
    //   60: astore_1
    //   61: goto -36 -> 25
    //   64: astore_1
    //   65: aload_3
    //   66: invokevirtual 46	android/os/Parcel:recycle	()V
    //   69: aload_2
    //   70: invokevirtual 46	android/os/Parcel:recycle	()V
    //   73: aload_1
    //   74: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	75	0	this	Proxy
    //   0	75	1	paramIGamesCallbacks	IGamesCallbacks
    //   3	67	2	localParcel1	Parcel
    //   7	59	3	localParcel2	Parcel
    // Exception table:
    //   from	to	target	type
    //   8	14	64	finally
    //   18	25	64	finally
    //   25	50	64	finally
  }
  
  /* Error */
  public void e(IGamesCallbacks paramIGamesCallbacks, int paramInt, boolean paramBoolean1, boolean paramBoolean2)
  {
    // Byte code:
    //   0: iconst_1
    //   1: istore 7
    //   3: invokestatic 24	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   6: astore 5
    //   8: invokestatic 24	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   11: astore 6
    //   13: aload 5
    //   15: ldc 26
    //   17: invokevirtual 30	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
    //   20: aload_1
    //   21: ifnull +82 -> 103
    //   24: aload_1
    //   25: invokeinterface 55 1 0
    //   30: astore_1
    //   31: aload 5
    //   33: aload_1
    //   34: invokevirtual 58	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
    //   37: aload 5
    //   39: iload_2
    //   40: invokevirtual 34	android/os/Parcel:writeInt	(I)V
    //   43: iload_3
    //   44: ifeq +64 -> 108
    //   47: iconst_1
    //   48: istore_2
    //   49: aload 5
    //   51: iload_2
    //   52: invokevirtual 34	android/os/Parcel:writeInt	(I)V
    //   55: iload 4
    //   57: ifeq +56 -> 113
    //   60: iload 7
    //   62: istore_2
    //   63: aload 5
    //   65: iload_2
    //   66: invokevirtual 34	android/os/Parcel:writeInt	(I)V
    //   69: aload_0
    //   70: getfield 15	com/google/android/gms/games/internal/IGamesService$Stub$Proxy:ko	Landroid/os/IBinder;
    //   73: sipush 6004
    //   76: aload 5
    //   78: aload 6
    //   80: iconst_0
    //   81: invokeinterface 40 5 0
    //   86: pop
    //   87: aload 6
    //   89: invokevirtual 43	android/os/Parcel:readException	()V
    //   92: aload 6
    //   94: invokevirtual 46	android/os/Parcel:recycle	()V
    //   97: aload 5
    //   99: invokevirtual 46	android/os/Parcel:recycle	()V
    //   102: return
    //   103: aconst_null
    //   104: astore_1
    //   105: goto -74 -> 31
    //   108: iconst_0
    //   109: istore_2
    //   110: goto -61 -> 49
    //   113: iconst_0
    //   114: istore_2
    //   115: goto -52 -> 63
    //   118: astore_1
    //   119: aload 6
    //   121: invokevirtual 46	android/os/Parcel:recycle	()V
    //   124: aload 5
    //   126: invokevirtual 46	android/os/Parcel:recycle	()V
    //   129: aload_1
    //   130: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	131	0	this	Proxy
    //   0	131	1	paramIGamesCallbacks	IGamesCallbacks
    //   0	131	2	paramInt	int
    //   0	131	3	paramBoolean1	boolean
    //   0	131	4	paramBoolean2	boolean
    //   6	119	5	localParcel1	Parcel
    //   11	109	6	localParcel2	Parcel
    //   1	60	7	i	int
    // Exception table:
    //   from	to	target	type
    //   13	20	118	finally
    //   24	31	118	finally
    //   31	43	118	finally
    //   49	55	118	finally
    //   63	92	118	finally
  }
  
  /* Error */
  public void e(IGamesCallbacks paramIGamesCallbacks, String paramString)
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
    //   16: ifnull +52 -> 68
    //   19: aload_1
    //   20: invokeinterface 55 1 0
    //   25: astore_1
    //   26: aload_3
    //   27: aload_1
    //   28: invokevirtual 58	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
    //   31: aload_3
    //   32: aload_2
    //   33: invokevirtual 65	android/os/Parcel:writeString	(Ljava/lang/String;)V
    //   36: aload_0
    //   37: getfield 15	com/google/android/gms/games/internal/IGamesService$Stub$Proxy:ko	Landroid/os/IBinder;
    //   40: sipush 5042
    //   43: aload_3
    //   44: aload 4
    //   46: iconst_0
    //   47: invokeinterface 40 5 0
    //   52: pop
    //   53: aload 4
    //   55: invokevirtual 43	android/os/Parcel:readException	()V
    //   58: aload 4
    //   60: invokevirtual 46	android/os/Parcel:recycle	()V
    //   63: aload_3
    //   64: invokevirtual 46	android/os/Parcel:recycle	()V
    //   67: return
    //   68: aconst_null
    //   69: astore_1
    //   70: goto -44 -> 26
    //   73: astore_1
    //   74: aload 4
    //   76: invokevirtual 46	android/os/Parcel:recycle	()V
    //   79: aload_3
    //   80: invokevirtual 46	android/os/Parcel:recycle	()V
    //   83: aload_1
    //   84: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	85	0	this	Proxy
    //   0	85	1	paramIGamesCallbacks	IGamesCallbacks
    //   0	85	2	paramString	String
    //   3	77	3	localParcel1	Parcel
    //   7	68	4	localParcel2	Parcel
    // Exception table:
    //   from	to	target	type
    //   9	15	73	finally
    //   19	26	73	finally
    //   26	58	73	finally
  }
  
  /* Error */
  public void e(IGamesCallbacks paramIGamesCallbacks, String paramString, int paramInt, boolean paramBoolean1, boolean paramBoolean2)
  {
    // Byte code:
    //   0: iconst_1
    //   1: istore 8
    //   3: invokestatic 24	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   6: astore 6
    //   8: invokestatic 24	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   11: astore 7
    //   13: aload 6
    //   15: ldc 26
    //   17: invokevirtual 30	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
    //   20: aload_1
    //   21: ifnull +89 -> 110
    //   24: aload_1
    //   25: invokeinterface 55 1 0
    //   30: astore_1
    //   31: aload 6
    //   33: aload_1
    //   34: invokevirtual 58	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
    //   37: aload 6
    //   39: aload_2
    //   40: invokevirtual 65	android/os/Parcel:writeString	(Ljava/lang/String;)V
    //   43: aload 6
    //   45: iload_3
    //   46: invokevirtual 34	android/os/Parcel:writeInt	(I)V
    //   49: iload 4
    //   51: ifeq +64 -> 115
    //   54: iconst_1
    //   55: istore_3
    //   56: aload 6
    //   58: iload_3
    //   59: invokevirtual 34	android/os/Parcel:writeInt	(I)V
    //   62: iload 5
    //   64: ifeq +56 -> 120
    //   67: iload 8
    //   69: istore_3
    //   70: aload 6
    //   72: iload_3
    //   73: invokevirtual 34	android/os/Parcel:writeInt	(I)V
    //   76: aload_0
    //   77: getfield 15	com/google/android/gms/games/internal/IGamesService$Stub$Proxy:ko	Landroid/os/IBinder;
    //   80: sipush 12021
    //   83: aload 6
    //   85: aload 7
    //   87: iconst_0
    //   88: invokeinterface 40 5 0
    //   93: pop
    //   94: aload 7
    //   96: invokevirtual 43	android/os/Parcel:readException	()V
    //   99: aload 7
    //   101: invokevirtual 46	android/os/Parcel:recycle	()V
    //   104: aload 6
    //   106: invokevirtual 46	android/os/Parcel:recycle	()V
    //   109: return
    //   110: aconst_null
    //   111: astore_1
    //   112: goto -81 -> 31
    //   115: iconst_0
    //   116: istore_3
    //   117: goto -61 -> 56
    //   120: iconst_0
    //   121: istore_3
    //   122: goto -52 -> 70
    //   125: astore_1
    //   126: aload 7
    //   128: invokevirtual 46	android/os/Parcel:recycle	()V
    //   131: aload 6
    //   133: invokevirtual 46	android/os/Parcel:recycle	()V
    //   136: aload_1
    //   137: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	138	0	this	Proxy
    //   0	138	1	paramIGamesCallbacks	IGamesCallbacks
    //   0	138	2	paramString	String
    //   0	138	3	paramInt	int
    //   0	138	4	paramBoolean1	boolean
    //   0	138	5	paramBoolean2	boolean
    //   6	126	6	localParcel1	Parcel
    //   11	116	7	localParcel2	Parcel
    //   1	67	8	i	int
    // Exception table:
    //   from	to	target	type
    //   13	20	125	finally
    //   24	31	125	finally
    //   31	49	125	finally
    //   56	62	125	finally
    //   70	99	125	finally
  }
  
  /* Error */
  public void e(IGamesCallbacks paramIGamesCallbacks, String paramString1, String paramString2)
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
    //   18: ifnull +62 -> 80
    //   21: aload_1
    //   22: invokeinterface 55 1 0
    //   27: astore_1
    //   28: aload 4
    //   30: aload_1
    //   31: invokevirtual 58	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
    //   34: aload 4
    //   36: aload_2
    //   37: invokevirtual 65	android/os/Parcel:writeString	(Ljava/lang/String;)V
    //   40: aload 4
    //   42: aload_3
    //   43: invokevirtual 65	android/os/Parcel:writeString	(Ljava/lang/String;)V
    //   46: aload_0
    //   47: getfield 15	com/google/android/gms/games/internal/IGamesService$Stub$Proxy:ko	Landroid/os/IBinder;
    //   50: sipush 8016
    //   53: aload 4
    //   55: aload 5
    //   57: iconst_0
    //   58: invokeinterface 40 5 0
    //   63: pop
    //   64: aload 5
    //   66: invokevirtual 43	android/os/Parcel:readException	()V
    //   69: aload 5
    //   71: invokevirtual 46	android/os/Parcel:recycle	()V
    //   74: aload 4
    //   76: invokevirtual 46	android/os/Parcel:recycle	()V
    //   79: return
    //   80: aconst_null
    //   81: astore_1
    //   82: goto -54 -> 28
    //   85: astore_1
    //   86: aload 5
    //   88: invokevirtual 46	android/os/Parcel:recycle	()V
    //   91: aload 4
    //   93: invokevirtual 46	android/os/Parcel:recycle	()V
    //   96: aload_1
    //   97: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	98	0	this	Proxy
    //   0	98	1	paramIGamesCallbacks	IGamesCallbacks
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
  public void e(IGamesCallbacks paramIGamesCallbacks, String paramString, boolean paramBoolean)
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore 6
    //   3: invokestatic 24	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   6: astore 4
    //   8: invokestatic 24	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   11: astore 5
    //   13: aload 4
    //   15: ldc 26
    //   17: invokevirtual 30	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
    //   20: aload_1
    //   21: ifnull +70 -> 91
    //   24: aload_1
    //   25: invokeinterface 55 1 0
    //   30: astore_1
    //   31: aload 4
    //   33: aload_1
    //   34: invokevirtual 58	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
    //   37: aload 4
    //   39: aload_2
    //   40: invokevirtual 65	android/os/Parcel:writeString	(Ljava/lang/String;)V
    //   43: iload_3
    //   44: ifeq +6 -> 50
    //   47: iconst_1
    //   48: istore 6
    //   50: aload 4
    //   52: iload 6
    //   54: invokevirtual 34	android/os/Parcel:writeInt	(I)V
    //   57: aload_0
    //   58: getfield 15	com/google/android/gms/games/internal/IGamesService$Stub$Proxy:ko	Landroid/os/IBinder;
    //   61: sipush 12006
    //   64: aload 4
    //   66: aload 5
    //   68: iconst_0
    //   69: invokeinterface 40 5 0
    //   74: pop
    //   75: aload 5
    //   77: invokevirtual 43	android/os/Parcel:readException	()V
    //   80: aload 5
    //   82: invokevirtual 46	android/os/Parcel:recycle	()V
    //   85: aload 4
    //   87: invokevirtual 46	android/os/Parcel:recycle	()V
    //   90: return
    //   91: aconst_null
    //   92: astore_1
    //   93: goto -62 -> 31
    //   96: astore_1
    //   97: aload 5
    //   99: invokevirtual 46	android/os/Parcel:recycle	()V
    //   102: aload 4
    //   104: invokevirtual 46	android/os/Parcel:recycle	()V
    //   107: aload_1
    //   108: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	109	0	this	Proxy
    //   0	109	1	paramIGamesCallbacks	IGamesCallbacks
    //   0	109	2	paramString	String
    //   0	109	3	paramBoolean	boolean
    //   6	97	4	localParcel1	Parcel
    //   11	87	5	localParcel2	Parcel
    //   1	52	6	i	int
    // Exception table:
    //   from	to	target	type
    //   13	20	96	finally
    //   24	31	96	finally
    //   31	43	96	finally
    //   50	80	96	finally
  }
  
  /* Error */
  public void e(IGamesCallbacks paramIGamesCallbacks, boolean paramBoolean)
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
    //   19: ifnull +60 -> 79
    //   22: aload_1
    //   23: invokeinterface 55 1 0
    //   28: astore_1
    //   29: aload_3
    //   30: aload_1
    //   31: invokevirtual 58	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
    //   34: iload_2
    //   35: ifeq +6 -> 41
    //   38: iconst_1
    //   39: istore 5
    //   41: aload_3
    //   42: iload 5
    //   44: invokevirtual 34	android/os/Parcel:writeInt	(I)V
    //   47: aload_0
    //   48: getfield 15	com/google/android/gms/games/internal/IGamesService$Stub$Proxy:ko	Landroid/os/IBinder;
    //   51: sipush 12032
    //   54: aload_3
    //   55: aload 4
    //   57: iconst_0
    //   58: invokeinterface 40 5 0
    //   63: pop
    //   64: aload 4
    //   66: invokevirtual 43	android/os/Parcel:readException	()V
    //   69: aload 4
    //   71: invokevirtual 46	android/os/Parcel:recycle	()V
    //   74: aload_3
    //   75: invokevirtual 46	android/os/Parcel:recycle	()V
    //   78: return
    //   79: aconst_null
    //   80: astore_1
    //   81: goto -52 -> 29
    //   84: astore_1
    //   85: aload 4
    //   87: invokevirtual 46	android/os/Parcel:recycle	()V
    //   90: aload_3
    //   91: invokevirtual 46	android/os/Parcel:recycle	()V
    //   94: aload_1
    //   95: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	96	0	this	Proxy
    //   0	96	1	paramIGamesCallbacks	IGamesCallbacks
    //   0	96	2	paramBoolean	boolean
    //   6	85	3	localParcel1	Parcel
    //   10	76	4	localParcel2	Parcel
    //   1	42	5	i	int
    // Exception table:
    //   from	to	target	type
    //   12	18	84	finally
    //   22	29	84	finally
    //   29	34	84	finally
    //   41	69	84	finally
  }
  
  /* Error */
  public Bundle ea()
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
    //   15: getfield 15	com/google/android/gms/games/internal/IGamesService$Stub$Proxy:ko	Landroid/os/IBinder;
    //   18: sipush 5004
    //   21: aload_2
    //   22: aload_3
    //   23: iconst_0
    //   24: invokeinterface 40 5 0
    //   29: pop
    //   30: aload_3
    //   31: invokevirtual 43	android/os/Parcel:readException	()V
    //   34: aload_3
    //   35: invokevirtual 69	android/os/Parcel:readInt	()I
    //   38: ifeq +26 -> 64
    //   41: getstatic 210	android/os/Bundle:CREATOR	Landroid/os/Parcelable$Creator;
    //   44: aload_3
    //   45: invokeinterface 82 2 0
    //   50: checkcast 120	android/os/Bundle
    //   53: astore_1
    //   54: aload_3
    //   55: invokevirtual 46	android/os/Parcel:recycle	()V
    //   58: aload_2
    //   59: invokevirtual 46	android/os/Parcel:recycle	()V
    //   62: aload_1
    //   63: areturn
    //   64: aconst_null
    //   65: astore_1
    //   66: goto -12 -> 54
    //   69: astore_1
    //   70: aload_3
    //   71: invokevirtual 46	android/os/Parcel:recycle	()V
    //   74: aload_2
    //   75: invokevirtual 46	android/os/Parcel:recycle	()V
    //   78: aload_1
    //   79: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	80	0	this	Proxy
    //   53	13	1	localBundle	Bundle
    //   69	10	1	localObject	Object
    //   3	72	2	localParcel1	Parcel
    //   7	64	3	localParcel2	Parcel
    // Exception table:
    //   from	to	target	type
    //   8	54	69	finally
  }
  
  /* Error */
  public void f(IGamesCallbacks paramIGamesCallbacks)
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
    //   15: ifnull +44 -> 59
    //   18: aload_1
    //   19: invokeinterface 55 1 0
    //   24: astore_1
    //   25: aload_2
    //   26: aload_1
    //   27: invokevirtual 58	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
    //   30: aload_0
    //   31: getfield 15	com/google/android/gms/games/internal/IGamesService$Stub$Proxy:ko	Landroid/os/IBinder;
    //   34: sipush 5047
    //   37: aload_2
    //   38: aload_3
    //   39: iconst_0
    //   40: invokeinterface 40 5 0
    //   45: pop
    //   46: aload_3
    //   47: invokevirtual 43	android/os/Parcel:readException	()V
    //   50: aload_3
    //   51: invokevirtual 46	android/os/Parcel:recycle	()V
    //   54: aload_2
    //   55: invokevirtual 46	android/os/Parcel:recycle	()V
    //   58: return
    //   59: aconst_null
    //   60: astore_1
    //   61: goto -36 -> 25
    //   64: astore_1
    //   65: aload_3
    //   66: invokevirtual 46	android/os/Parcel:recycle	()V
    //   69: aload_2
    //   70: invokevirtual 46	android/os/Parcel:recycle	()V
    //   73: aload_1
    //   74: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	75	0	this	Proxy
    //   0	75	1	paramIGamesCallbacks	IGamesCallbacks
    //   3	67	2	localParcel1	Parcel
    //   7	59	3	localParcel2	Parcel
    // Exception table:
    //   from	to	target	type
    //   8	14	64	finally
    //   18	25	64	finally
    //   25	50	64	finally
  }
  
  /* Error */
  public void f(IGamesCallbacks paramIGamesCallbacks, String paramString)
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
    //   16: ifnull +52 -> 68
    //   19: aload_1
    //   20: invokeinterface 55 1 0
    //   25: astore_1
    //   26: aload_3
    //   27: aload_1
    //   28: invokevirtual 58	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
    //   31: aload_3
    //   32: aload_2
    //   33: invokevirtual 65	android/os/Parcel:writeString	(Ljava/lang/String;)V
    //   36: aload_0
    //   37: getfield 15	com/google/android/gms/games/internal/IGamesService$Stub$Proxy:ko	Landroid/os/IBinder;
    //   40: sipush 5043
    //   43: aload_3
    //   44: aload 4
    //   46: iconst_0
    //   47: invokeinterface 40 5 0
    //   52: pop
    //   53: aload 4
    //   55: invokevirtual 43	android/os/Parcel:readException	()V
    //   58: aload 4
    //   60: invokevirtual 46	android/os/Parcel:recycle	()V
    //   63: aload_3
    //   64: invokevirtual 46	android/os/Parcel:recycle	()V
    //   67: return
    //   68: aconst_null
    //   69: astore_1
    //   70: goto -44 -> 26
    //   73: astore_1
    //   74: aload 4
    //   76: invokevirtual 46	android/os/Parcel:recycle	()V
    //   79: aload_3
    //   80: invokevirtual 46	android/os/Parcel:recycle	()V
    //   83: aload_1
    //   84: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	85	0	this	Proxy
    //   0	85	1	paramIGamesCallbacks	IGamesCallbacks
    //   0	85	2	paramString	String
    //   3	77	3	localParcel1	Parcel
    //   7	68	4	localParcel2	Parcel
    // Exception table:
    //   from	to	target	type
    //   9	15	73	finally
    //   19	26	73	finally
    //   26	58	73	finally
  }
  
  /* Error */
  public void f(IGamesCallbacks paramIGamesCallbacks, String paramString, int paramInt, boolean paramBoolean1, boolean paramBoolean2)
  {
    // Byte code:
    //   0: iconst_1
    //   1: istore 8
    //   3: invokestatic 24	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   6: astore 6
    //   8: invokestatic 24	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   11: astore 7
    //   13: aload 6
    //   15: ldc 26
    //   17: invokevirtual 30	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
    //   20: aload_1
    //   21: ifnull +89 -> 110
    //   24: aload_1
    //   25: invokeinterface 55 1 0
    //   30: astore_1
    //   31: aload 6
    //   33: aload_1
    //   34: invokevirtual 58	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
    //   37: aload 6
    //   39: aload_2
    //   40: invokevirtual 65	android/os/Parcel:writeString	(Ljava/lang/String;)V
    //   43: aload 6
    //   45: iload_3
    //   46: invokevirtual 34	android/os/Parcel:writeInt	(I)V
    //   49: iload 4
    //   51: ifeq +64 -> 115
    //   54: iconst_1
    //   55: istore_3
    //   56: aload 6
    //   58: iload_3
    //   59: invokevirtual 34	android/os/Parcel:writeInt	(I)V
    //   62: iload 5
    //   64: ifeq +56 -> 120
    //   67: iload 8
    //   69: istore_3
    //   70: aload 6
    //   72: iload_3
    //   73: invokevirtual 34	android/os/Parcel:writeInt	(I)V
    //   76: aload_0
    //   77: getfield 15	com/google/android/gms/games/internal/IGamesService$Stub$Proxy:ko	Landroid/os/IBinder;
    //   80: sipush 12022
    //   83: aload 6
    //   85: aload 7
    //   87: iconst_0
    //   88: invokeinterface 40 5 0
    //   93: pop
    //   94: aload 7
    //   96: invokevirtual 43	android/os/Parcel:readException	()V
    //   99: aload 7
    //   101: invokevirtual 46	android/os/Parcel:recycle	()V
    //   104: aload 6
    //   106: invokevirtual 46	android/os/Parcel:recycle	()V
    //   109: return
    //   110: aconst_null
    //   111: astore_1
    //   112: goto -81 -> 31
    //   115: iconst_0
    //   116: istore_3
    //   117: goto -61 -> 56
    //   120: iconst_0
    //   121: istore_3
    //   122: goto -52 -> 70
    //   125: astore_1
    //   126: aload 7
    //   128: invokevirtual 46	android/os/Parcel:recycle	()V
    //   131: aload 6
    //   133: invokevirtual 46	android/os/Parcel:recycle	()V
    //   136: aload_1
    //   137: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	138	0	this	Proxy
    //   0	138	1	paramIGamesCallbacks	IGamesCallbacks
    //   0	138	2	paramString	String
    //   0	138	3	paramInt	int
    //   0	138	4	paramBoolean1	boolean
    //   0	138	5	paramBoolean2	boolean
    //   6	126	6	localParcel1	Parcel
    //   11	116	7	localParcel2	Parcel
    //   1	67	8	i	int
    // Exception table:
    //   from	to	target	type
    //   13	20	125	finally
    //   24	31	125	finally
    //   31	49	125	finally
    //   56	62	125	finally
    //   70	99	125	finally
  }
  
  /* Error */
  public void f(IGamesCallbacks paramIGamesCallbacks, String paramString1, String paramString2)
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
    //   18: ifnull +62 -> 80
    //   21: aload_1
    //   22: invokeinterface 55 1 0
    //   27: astore_1
    //   28: aload 4
    //   30: aload_1
    //   31: invokevirtual 58	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
    //   34: aload 4
    //   36: aload_2
    //   37: invokevirtual 65	android/os/Parcel:writeString	(Ljava/lang/String;)V
    //   40: aload 4
    //   42: aload_3
    //   43: invokevirtual 65	android/os/Parcel:writeString	(Ljava/lang/String;)V
    //   46: aload_0
    //   47: getfield 15	com/google/android/gms/games/internal/IGamesService$Stub$Proxy:ko	Landroid/os/IBinder;
    //   50: sipush 12009
    //   53: aload 4
    //   55: aload 5
    //   57: iconst_0
    //   58: invokeinterface 40 5 0
    //   63: pop
    //   64: aload 5
    //   66: invokevirtual 43	android/os/Parcel:readException	()V
    //   69: aload 5
    //   71: invokevirtual 46	android/os/Parcel:recycle	()V
    //   74: aload 4
    //   76: invokevirtual 46	android/os/Parcel:recycle	()V
    //   79: return
    //   80: aconst_null
    //   81: astore_1
    //   82: goto -54 -> 28
    //   85: astore_1
    //   86: aload 5
    //   88: invokevirtual 46	android/os/Parcel:recycle	()V
    //   91: aload 4
    //   93: invokevirtual 46	android/os/Parcel:recycle	()V
    //   96: aload_1
    //   97: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	98	0	this	Proxy
    //   0	98	1	paramIGamesCallbacks	IGamesCallbacks
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
  public void f(IGamesCallbacks paramIGamesCallbacks, boolean paramBoolean)
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
    //   19: ifnull +60 -> 79
    //   22: aload_1
    //   23: invokeinterface 55 1 0
    //   28: astore_1
    //   29: aload_3
    //   30: aload_1
    //   31: invokevirtual 58	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
    //   34: iload_2
    //   35: ifeq +6 -> 41
    //   38: iconst_1
    //   39: istore 5
    //   41: aload_3
    //   42: iload 5
    //   44: invokevirtual 34	android/os/Parcel:writeInt	(I)V
    //   47: aload_0
    //   48: getfield 15	com/google/android/gms/games/internal/IGamesService$Stub$Proxy:ko	Landroid/os/IBinder;
    //   51: sipush 12016
    //   54: aload_3
    //   55: aload 4
    //   57: iconst_0
    //   58: invokeinterface 40 5 0
    //   63: pop
    //   64: aload 4
    //   66: invokevirtual 43	android/os/Parcel:readException	()V
    //   69: aload 4
    //   71: invokevirtual 46	android/os/Parcel:recycle	()V
    //   74: aload_3
    //   75: invokevirtual 46	android/os/Parcel:recycle	()V
    //   78: return
    //   79: aconst_null
    //   80: astore_1
    //   81: goto -52 -> 29
    //   84: astore_1
    //   85: aload 4
    //   87: invokevirtual 46	android/os/Parcel:recycle	()V
    //   90: aload_3
    //   91: invokevirtual 46	android/os/Parcel:recycle	()V
    //   94: aload_1
    //   95: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	96	0	this	Proxy
    //   0	96	1	paramIGamesCallbacks	IGamesCallbacks
    //   0	96	2	paramBoolean	boolean
    //   6	85	3	localParcel1	Parcel
    //   10	76	4	localParcel2	Parcel
    //   1	42	5	i	int
    // Exception table:
    //   from	to	target	type
    //   12	18	84	finally
    //   22	29	84	finally
    //   29	34	84	finally
    //   41	69	84	finally
  }
  
  public ParcelFileDescriptor g(Uri paramUri)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    for (;;)
    {
      try
      {
        localParcel1.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
        if (paramUri != null)
        {
          localParcel1.writeInt(1);
          paramUri.writeToParcel(localParcel1, 0);
          ko.transact(6507, localParcel1, localParcel2, 0);
          localParcel2.readException();
          if (localParcel2.readInt() != 0)
          {
            paramUri = (ParcelFileDescriptor)ParcelFileDescriptor.CREATOR.createFromParcel(localParcel2);
            return paramUri;
          }
        }
        else
        {
          localParcel1.writeInt(0);
          continue;
        }
        paramUri = null;
      }
      finally
      {
        localParcel2.recycle();
        localParcel1.recycle();
      }
    }
  }
  
  /* Error */
  public void g(IGamesCallbacks paramIGamesCallbacks)
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
    //   15: ifnull +44 -> 59
    //   18: aload_1
    //   19: invokeinterface 55 1 0
    //   24: astore_1
    //   25: aload_2
    //   26: aload_1
    //   27: invokevirtual 58	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
    //   30: aload_0
    //   31: getfield 15	com/google/android/gms/games/internal/IGamesService$Stub$Proxy:ko	Landroid/os/IBinder;
    //   34: sipush 5049
    //   37: aload_2
    //   38: aload_3
    //   39: iconst_0
    //   40: invokeinterface 40 5 0
    //   45: pop
    //   46: aload_3
    //   47: invokevirtual 43	android/os/Parcel:readException	()V
    //   50: aload_3
    //   51: invokevirtual 46	android/os/Parcel:recycle	()V
    //   54: aload_2
    //   55: invokevirtual 46	android/os/Parcel:recycle	()V
    //   58: return
    //   59: aconst_null
    //   60: astore_1
    //   61: goto -36 -> 25
    //   64: astore_1
    //   65: aload_3
    //   66: invokevirtual 46	android/os/Parcel:recycle	()V
    //   69: aload_2
    //   70: invokevirtual 46	android/os/Parcel:recycle	()V
    //   73: aload_1
    //   74: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	75	0	this	Proxy
    //   0	75	1	paramIGamesCallbacks	IGamesCallbacks
    //   3	67	2	localParcel1	Parcel
    //   7	59	3	localParcel2	Parcel
    // Exception table:
    //   from	to	target	type
    //   8	14	64	finally
    //   18	25	64	finally
    //   25	50	64	finally
  }
  
  /* Error */
  public void g(IGamesCallbacks paramIGamesCallbacks, String paramString)
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
    //   16: ifnull +52 -> 68
    //   19: aload_1
    //   20: invokeinterface 55 1 0
    //   25: astore_1
    //   26: aload_3
    //   27: aload_1
    //   28: invokevirtual 58	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
    //   31: aload_3
    //   32: aload_2
    //   33: invokevirtual 65	android/os/Parcel:writeString	(Ljava/lang/String;)V
    //   36: aload_0
    //   37: getfield 15	com/google/android/gms/games/internal/IGamesService$Stub$Proxy:ko	Landroid/os/IBinder;
    //   40: sipush 5052
    //   43: aload_3
    //   44: aload 4
    //   46: iconst_0
    //   47: invokeinterface 40 5 0
    //   52: pop
    //   53: aload 4
    //   55: invokevirtual 43	android/os/Parcel:readException	()V
    //   58: aload 4
    //   60: invokevirtual 46	android/os/Parcel:recycle	()V
    //   63: aload_3
    //   64: invokevirtual 46	android/os/Parcel:recycle	()V
    //   67: return
    //   68: aconst_null
    //   69: astore_1
    //   70: goto -44 -> 26
    //   73: astore_1
    //   74: aload 4
    //   76: invokevirtual 46	android/os/Parcel:recycle	()V
    //   79: aload_3
    //   80: invokevirtual 46	android/os/Parcel:recycle	()V
    //   83: aload_1
    //   84: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	85	0	this	Proxy
    //   0	85	1	paramIGamesCallbacks	IGamesCallbacks
    //   0	85	2	paramString	String
    //   3	77	3	localParcel1	Parcel
    //   7	68	4	localParcel2	Parcel
    // Exception table:
    //   from	to	target	type
    //   9	15	73	finally
    //   19	26	73	finally
    //   26	58	73	finally
  }
  
  public String gU()
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
      ko.transact(5007, localParcel1, localParcel2, 0);
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
  
  public String gV()
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
      ko.transact(5012, localParcel1, localParcel2, 0);
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
  
  /* Error */
  public Intent gY()
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
    //   15: getfield 15	com/google/android/gms/games/internal/IGamesService$Stub$Proxy:ko	Landroid/os/IBinder;
    //   18: sipush 9003
    //   21: aload_2
    //   22: aload_3
    //   23: iconst_0
    //   24: invokeinterface 40 5 0
    //   29: pop
    //   30: aload_3
    //   31: invokevirtual 43	android/os/Parcel:readException	()V
    //   34: aload_3
    //   35: invokevirtual 69	android/os/Parcel:readInt	()I
    //   38: ifeq +26 -> 64
    //   41: getstatic 76	android/content/Intent:CREATOR	Landroid/os/Parcelable$Creator;
    //   44: aload_3
    //   45: invokeinterface 82 2 0
    //   50: checkcast 72	android/content/Intent
    //   53: astore_1
    //   54: aload_3
    //   55: invokevirtual 46	android/os/Parcel:recycle	()V
    //   58: aload_2
    //   59: invokevirtual 46	android/os/Parcel:recycle	()V
    //   62: aload_1
    //   63: areturn
    //   64: aconst_null
    //   65: astore_1
    //   66: goto -12 -> 54
    //   69: astore_1
    //   70: aload_3
    //   71: invokevirtual 46	android/os/Parcel:recycle	()V
    //   74: aload_2
    //   75: invokevirtual 46	android/os/Parcel:recycle	()V
    //   78: aload_1
    //   79: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	80	0	this	Proxy
    //   53	13	1	localIntent	Intent
    //   69	10	1	localObject	Object
    //   3	72	2	localParcel1	Parcel
    //   7	64	3	localParcel2	Parcel
    // Exception table:
    //   from	to	target	type
    //   8	54	69	finally
  }
  
  /* Error */
  public Intent gZ()
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
    //   15: getfield 15	com/google/android/gms/games/internal/IGamesService$Stub$Proxy:ko	Landroid/os/IBinder;
    //   18: sipush 9005
    //   21: aload_2
    //   22: aload_3
    //   23: iconst_0
    //   24: invokeinterface 40 5 0
    //   29: pop
    //   30: aload_3
    //   31: invokevirtual 43	android/os/Parcel:readException	()V
    //   34: aload_3
    //   35: invokevirtual 69	android/os/Parcel:readInt	()I
    //   38: ifeq +26 -> 64
    //   41: getstatic 76	android/content/Intent:CREATOR	Landroid/os/Parcelable$Creator;
    //   44: aload_3
    //   45: invokeinterface 82 2 0
    //   50: checkcast 72	android/content/Intent
    //   53: astore_1
    //   54: aload_3
    //   55: invokevirtual 46	android/os/Parcel:recycle	()V
    //   58: aload_2
    //   59: invokevirtual 46	android/os/Parcel:recycle	()V
    //   62: aload_1
    //   63: areturn
    //   64: aconst_null
    //   65: astore_1
    //   66: goto -12 -> 54
    //   69: astore_1
    //   70: aload_3
    //   71: invokevirtual 46	android/os/Parcel:recycle	()V
    //   74: aload_2
    //   75: invokevirtual 46	android/os/Parcel:recycle	()V
    //   78: aload_1
    //   79: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	80	0	this	Proxy
    //   53	13	1	localIntent	Intent
    //   69	10	1	localObject	Object
    //   3	72	2	localParcel1	Parcel
    //   7	64	3	localParcel2	Parcel
    // Exception table:
    //   from	to	target	type
    //   8	54	69	finally
  }
  
  /* Error */
  public RoomEntity h(IGamesCallbacks paramIGamesCallbacks, String paramString)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_3
    //   2: invokestatic 24	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   5: astore 4
    //   7: invokestatic 24	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   10: astore 5
    //   12: aload 4
    //   14: ldc 26
    //   16: invokevirtual 30	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
    //   19: aload_1
    //   20: ifnull +81 -> 101
    //   23: aload_1
    //   24: invokeinterface 55 1 0
    //   29: astore_1
    //   30: aload 4
    //   32: aload_1
    //   33: invokevirtual 58	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
    //   36: aload 4
    //   38: aload_2
    //   39: invokevirtual 65	android/os/Parcel:writeString	(Ljava/lang/String;)V
    //   42: aload_0
    //   43: getfield 15	com/google/android/gms/games/internal/IGamesService$Stub$Proxy:ko	Landroid/os/IBinder;
    //   46: sipush 5053
    //   49: aload 4
    //   51: aload 5
    //   53: iconst_0
    //   54: invokeinterface 40 5 0
    //   59: pop
    //   60: aload 5
    //   62: invokevirtual 43	android/os/Parcel:readException	()V
    //   65: aload_3
    //   66: astore_1
    //   67: aload 5
    //   69: invokevirtual 69	android/os/Parcel:readInt	()I
    //   72: ifeq +17 -> 89
    //   75: getstatic 221	com/google/android/gms/games/multiplayer/realtime/RoomEntity:CREATOR	Landroid/os/Parcelable$Creator;
    //   78: aload 5
    //   80: invokeinterface 82 2 0
    //   85: checkcast 97	com/google/android/gms/games/multiplayer/realtime/RoomEntity
    //   88: astore_1
    //   89: aload 5
    //   91: invokevirtual 46	android/os/Parcel:recycle	()V
    //   94: aload 4
    //   96: invokevirtual 46	android/os/Parcel:recycle	()V
    //   99: aload_1
    //   100: areturn
    //   101: aconst_null
    //   102: astore_1
    //   103: goto -73 -> 30
    //   106: astore_1
    //   107: aload 5
    //   109: invokevirtual 46	android/os/Parcel:recycle	()V
    //   112: aload 4
    //   114: invokevirtual 46	android/os/Parcel:recycle	()V
    //   117: aload_1
    //   118: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	119	0	this	Proxy
    //   0	119	1	paramIGamesCallbacks	IGamesCallbacks
    //   0	119	2	paramString	String
    //   1	65	3	localObject	Object
    //   5	108	4	localParcel1	Parcel
    //   10	98	5	localParcel2	Parcel
    // Exception table:
    //   from	to	target	type
    //   12	19	106	finally
    //   23	30	106	finally
    //   30	65	106	finally
    //   67	89	106	finally
  }
  
  /* Error */
  public void h(IGamesCallbacks paramIGamesCallbacks)
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
    //   15: ifnull +44 -> 59
    //   18: aload_1
    //   19: invokeinterface 55 1 0
    //   24: astore_1
    //   25: aload_2
    //   26: aload_1
    //   27: invokevirtual 58	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
    //   30: aload_0
    //   31: getfield 15	com/google/android/gms/games/internal/IGamesService$Stub$Proxy:ko	Landroid/os/IBinder;
    //   34: sipush 5056
    //   37: aload_2
    //   38: aload_3
    //   39: iconst_0
    //   40: invokeinterface 40 5 0
    //   45: pop
    //   46: aload_3
    //   47: invokevirtual 43	android/os/Parcel:readException	()V
    //   50: aload_3
    //   51: invokevirtual 46	android/os/Parcel:recycle	()V
    //   54: aload_2
    //   55: invokevirtual 46	android/os/Parcel:recycle	()V
    //   58: return
    //   59: aconst_null
    //   60: astore_1
    //   61: goto -36 -> 25
    //   64: astore_1
    //   65: aload_3
    //   66: invokevirtual 46	android/os/Parcel:recycle	()V
    //   69: aload_2
    //   70: invokevirtual 46	android/os/Parcel:recycle	()V
    //   73: aload_1
    //   74: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	75	0	this	Proxy
    //   0	75	1	paramIGamesCallbacks	IGamesCallbacks
    //   3	67	2	localParcel1	Parcel
    //   7	59	3	localParcel2	Parcel
    // Exception table:
    //   from	to	target	type
    //   8	14	64	finally
    //   18	25	64	finally
    //   25	50	64	finally
  }
  
  /* Error */
  public Intent ha()
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
    //   15: getfield 15	com/google/android/gms/games/internal/IGamesService$Stub$Proxy:ko	Landroid/os/IBinder;
    //   18: sipush 9006
    //   21: aload_2
    //   22: aload_3
    //   23: iconst_0
    //   24: invokeinterface 40 5 0
    //   29: pop
    //   30: aload_3
    //   31: invokevirtual 43	android/os/Parcel:readException	()V
    //   34: aload_3
    //   35: invokevirtual 69	android/os/Parcel:readInt	()I
    //   38: ifeq +26 -> 64
    //   41: getstatic 76	android/content/Intent:CREATOR	Landroid/os/Parcelable$Creator;
    //   44: aload_3
    //   45: invokeinterface 82 2 0
    //   50: checkcast 72	android/content/Intent
    //   53: astore_1
    //   54: aload_3
    //   55: invokevirtual 46	android/os/Parcel:recycle	()V
    //   58: aload_2
    //   59: invokevirtual 46	android/os/Parcel:recycle	()V
    //   62: aload_1
    //   63: areturn
    //   64: aconst_null
    //   65: astore_1
    //   66: goto -12 -> 54
    //   69: astore_1
    //   70: aload_3
    //   71: invokevirtual 46	android/os/Parcel:recycle	()V
    //   74: aload_2
    //   75: invokevirtual 46	android/os/Parcel:recycle	()V
    //   78: aload_1
    //   79: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	80	0	this	Proxy
    //   53	13	1	localIntent	Intent
    //   69	10	1	localObject	Object
    //   3	72	2	localParcel1	Parcel
    //   7	64	3	localParcel2	Parcel
    // Exception table:
    //   from	to	target	type
    //   8	54	69	finally
  }
  
  /* Error */
  public Intent hb()
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
    //   15: getfield 15	com/google/android/gms/games/internal/IGamesService$Stub$Proxy:ko	Landroid/os/IBinder;
    //   18: sipush 9007
    //   21: aload_2
    //   22: aload_3
    //   23: iconst_0
    //   24: invokeinterface 40 5 0
    //   29: pop
    //   30: aload_3
    //   31: invokevirtual 43	android/os/Parcel:readException	()V
    //   34: aload_3
    //   35: invokevirtual 69	android/os/Parcel:readInt	()I
    //   38: ifeq +26 -> 64
    //   41: getstatic 76	android/content/Intent:CREATOR	Landroid/os/Parcelable$Creator;
    //   44: aload_3
    //   45: invokeinterface 82 2 0
    //   50: checkcast 72	android/content/Intent
    //   53: astore_1
    //   54: aload_3
    //   55: invokevirtual 46	android/os/Parcel:recycle	()V
    //   58: aload_2
    //   59: invokevirtual 46	android/os/Parcel:recycle	()V
    //   62: aload_1
    //   63: areturn
    //   64: aconst_null
    //   65: astore_1
    //   66: goto -12 -> 54
    //   69: astore_1
    //   70: aload_3
    //   71: invokevirtual 46	android/os/Parcel:recycle	()V
    //   74: aload_2
    //   75: invokevirtual 46	android/os/Parcel:recycle	()V
    //   78: aload_1
    //   79: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	80	0	this	Proxy
    //   53	13	1	localIntent	Intent
    //   69	10	1	localObject	Object
    //   3	72	2	localParcel1	Parcel
    //   7	64	3	localParcel2	Parcel
    // Exception table:
    //   from	to	target	type
    //   8	54	69	finally
  }
  
  /* Error */
  public Intent hg()
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
    //   15: getfield 15	com/google/android/gms/games/internal/IGamesService$Stub$Proxy:ko	Landroid/os/IBinder;
    //   18: sipush 9010
    //   21: aload_2
    //   22: aload_3
    //   23: iconst_0
    //   24: invokeinterface 40 5 0
    //   29: pop
    //   30: aload_3
    //   31: invokevirtual 43	android/os/Parcel:readException	()V
    //   34: aload_3
    //   35: invokevirtual 69	android/os/Parcel:readInt	()I
    //   38: ifeq +26 -> 64
    //   41: getstatic 76	android/content/Intent:CREATOR	Landroid/os/Parcelable$Creator;
    //   44: aload_3
    //   45: invokeinterface 82 2 0
    //   50: checkcast 72	android/content/Intent
    //   53: astore_1
    //   54: aload_3
    //   55: invokevirtual 46	android/os/Parcel:recycle	()V
    //   58: aload_2
    //   59: invokevirtual 46	android/os/Parcel:recycle	()V
    //   62: aload_1
    //   63: areturn
    //   64: aconst_null
    //   65: astore_1
    //   66: goto -12 -> 54
    //   69: astore_1
    //   70: aload_3
    //   71: invokevirtual 46	android/os/Parcel:recycle	()V
    //   74: aload_2
    //   75: invokevirtual 46	android/os/Parcel:recycle	()V
    //   78: aload_1
    //   79: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	80	0	this	Proxy
    //   53	13	1	localIntent	Intent
    //   69	10	1	localObject	Object
    //   3	72	2	localParcel1	Parcel
    //   7	64	3	localParcel2	Parcel
    // Exception table:
    //   from	to	target	type
    //   8	54	69	finally
  }
  
  /* Error */
  public Intent hh()
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
    //   15: getfield 15	com/google/android/gms/games/internal/IGamesService$Stub$Proxy:ko	Landroid/os/IBinder;
    //   18: sipush 9012
    //   21: aload_2
    //   22: aload_3
    //   23: iconst_0
    //   24: invokeinterface 40 5 0
    //   29: pop
    //   30: aload_3
    //   31: invokevirtual 43	android/os/Parcel:readException	()V
    //   34: aload_3
    //   35: invokevirtual 69	android/os/Parcel:readInt	()I
    //   38: ifeq +26 -> 64
    //   41: getstatic 76	android/content/Intent:CREATOR	Landroid/os/Parcelable$Creator;
    //   44: aload_3
    //   45: invokeinterface 82 2 0
    //   50: checkcast 72	android/content/Intent
    //   53: astore_1
    //   54: aload_3
    //   55: invokevirtual 46	android/os/Parcel:recycle	()V
    //   58: aload_2
    //   59: invokevirtual 46	android/os/Parcel:recycle	()V
    //   62: aload_1
    //   63: areturn
    //   64: aconst_null
    //   65: astore_1
    //   66: goto -12 -> 54
    //   69: astore_1
    //   70: aload_3
    //   71: invokevirtual 46	android/os/Parcel:recycle	()V
    //   74: aload_2
    //   75: invokevirtual 46	android/os/Parcel:recycle	()V
    //   78: aload_1
    //   79: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	80	0	this	Proxy
    //   53	13	1	localIntent	Intent
    //   69	10	1	localObject	Object
    //   3	72	2	localParcel1	Parcel
    //   7	64	3	localParcel2	Parcel
    // Exception table:
    //   from	to	target	type
    //   8	54	69	finally
  }
  
  public int hi()
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
      ko.transact(9019, localParcel1, localParcel2, 0);
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
  
  public String hj()
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
      ko.transact(5003, localParcel1, localParcel2, 0);
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
  
  public int hk()
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
      ko.transact(8024, localParcel1, localParcel2, 0);
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
  
  /* Error */
  public Intent hl()
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
    //   15: getfield 15	com/google/android/gms/games/internal/IGamesService$Stub$Proxy:ko	Landroid/os/IBinder;
    //   18: sipush 10015
    //   21: aload_2
    //   22: aload_3
    //   23: iconst_0
    //   24: invokeinterface 40 5 0
    //   29: pop
    //   30: aload_3
    //   31: invokevirtual 43	android/os/Parcel:readException	()V
    //   34: aload_3
    //   35: invokevirtual 69	android/os/Parcel:readInt	()I
    //   38: ifeq +26 -> 64
    //   41: getstatic 76	android/content/Intent:CREATOR	Landroid/os/Parcelable$Creator;
    //   44: aload_3
    //   45: invokeinterface 82 2 0
    //   50: checkcast 72	android/content/Intent
    //   53: astore_1
    //   54: aload_3
    //   55: invokevirtual 46	android/os/Parcel:recycle	()V
    //   58: aload_2
    //   59: invokevirtual 46	android/os/Parcel:recycle	()V
    //   62: aload_1
    //   63: areturn
    //   64: aconst_null
    //   65: astore_1
    //   66: goto -12 -> 54
    //   69: astore_1
    //   70: aload_3
    //   71: invokevirtual 46	android/os/Parcel:recycle	()V
    //   74: aload_2
    //   75: invokevirtual 46	android/os/Parcel:recycle	()V
    //   78: aload_1
    //   79: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	80	0	this	Proxy
    //   53	13	1	localIntent	Intent
    //   69	10	1	localObject	Object
    //   3	72	2	localParcel1	Parcel
    //   7	64	3	localParcel2	Parcel
    // Exception table:
    //   from	to	target	type
    //   8	54	69	finally
  }
  
  public int hm()
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
      ko.transact(10013, localParcel1, localParcel2, 0);
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
  
  public int hn()
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
      ko.transact(10023, localParcel1, localParcel2, 0);
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
  
  public int ho()
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
      ko.transact(12035, localParcel1, localParcel2, 0);
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
  
  public int hp()
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
      ko.transact(12036, localParcel1, localParcel2, 0);
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
  
  public void hr()
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
      ko.transact(5006, localParcel1, localParcel2, 0);
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
  public com.google.android.gms.common.data.DataHolder ht()
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
    //   15: getfield 15	com/google/android/gms/games/internal/IGamesService$Stub$Proxy:ko	Landroid/os/IBinder;
    //   18: sipush 5013
    //   21: aload_2
    //   22: aload_3
    //   23: iconst_0
    //   24: invokeinterface 40 5 0
    //   29: pop
    //   30: aload_3
    //   31: invokevirtual 43	android/os/Parcel:readException	()V
    //   34: aload_3
    //   35: invokevirtual 69	android/os/Parcel:readInt	()I
    //   38: ifeq +21 -> 59
    //   41: getstatic 241	com/google/android/gms/common/data/DataHolder:CREATOR	Lcom/google/android/gms/common/data/f;
    //   44: aload_3
    //   45: invokevirtual 247	com/google/android/gms/common/data/f:x	(Landroid/os/Parcel;)Lcom/google/android/gms/common/data/DataHolder;
    //   48: astore_1
    //   49: aload_3
    //   50: invokevirtual 46	android/os/Parcel:recycle	()V
    //   53: aload_2
    //   54: invokevirtual 46	android/os/Parcel:recycle	()V
    //   57: aload_1
    //   58: areturn
    //   59: aconst_null
    //   60: astore_1
    //   61: goto -12 -> 49
    //   64: astore_1
    //   65: aload_3
    //   66: invokevirtual 46	android/os/Parcel:recycle	()V
    //   69: aload_2
    //   70: invokevirtual 46	android/os/Parcel:recycle	()V
    //   73: aload_1
    //   74: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	75	0	this	Proxy
    //   48	13	1	localDataHolder	com.google.android.gms.common.data.DataHolder
    //   64	10	1	localObject	Object
    //   3	67	2	localParcel1	Parcel
    //   7	59	3	localParcel2	Parcel
    // Exception table:
    //   from	to	target	type
    //   8	49	64	finally
  }
  
  public boolean hu()
  {
    boolean bool = false;
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
      ko.transact(5067, localParcel1, localParcel2, 0);
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
  
  /* Error */
  public com.google.android.gms.common.data.DataHolder hv()
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
    //   15: getfield 15	com/google/android/gms/games/internal/IGamesService$Stub$Proxy:ko	Landroid/os/IBinder;
    //   18: sipush 5502
    //   21: aload_2
    //   22: aload_3
    //   23: iconst_0
    //   24: invokeinterface 40 5 0
    //   29: pop
    //   30: aload_3
    //   31: invokevirtual 43	android/os/Parcel:readException	()V
    //   34: aload_3
    //   35: invokevirtual 69	android/os/Parcel:readInt	()I
    //   38: ifeq +21 -> 59
    //   41: getstatic 241	com/google/android/gms/common/data/DataHolder:CREATOR	Lcom/google/android/gms/common/data/f;
    //   44: aload_3
    //   45: invokevirtual 247	com/google/android/gms/common/data/f:x	(Landroid/os/Parcel;)Lcom/google/android/gms/common/data/DataHolder;
    //   48: astore_1
    //   49: aload_3
    //   50: invokevirtual 46	android/os/Parcel:recycle	()V
    //   53: aload_2
    //   54: invokevirtual 46	android/os/Parcel:recycle	()V
    //   57: aload_1
    //   58: areturn
    //   59: aconst_null
    //   60: astore_1
    //   61: goto -12 -> 49
    //   64: astore_1
    //   65: aload_3
    //   66: invokevirtual 46	android/os/Parcel:recycle	()V
    //   69: aload_2
    //   70: invokevirtual 46	android/os/Parcel:recycle	()V
    //   73: aload_1
    //   74: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	75	0	this	Proxy
    //   48	13	1	localDataHolder	com.google.android.gms.common.data.DataHolder
    //   64	10	1	localObject	Object
    //   3	67	2	localParcel1	Parcel
    //   7	59	3	localParcel2	Parcel
    // Exception table:
    //   from	to	target	type
    //   8	49	64	finally
  }
  
  public void hw()
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
      ko.transact(8022, localParcel1, localParcel2, 0);
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
  public Intent hx()
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
    //   15: getfield 15	com/google/android/gms/games/internal/IGamesService$Stub$Proxy:ko	Landroid/os/IBinder;
    //   18: sipush 9013
    //   21: aload_2
    //   22: aload_3
    //   23: iconst_0
    //   24: invokeinterface 40 5 0
    //   29: pop
    //   30: aload_3
    //   31: invokevirtual 43	android/os/Parcel:readException	()V
    //   34: aload_3
    //   35: invokevirtual 69	android/os/Parcel:readInt	()I
    //   38: ifeq +26 -> 64
    //   41: getstatic 76	android/content/Intent:CREATOR	Landroid/os/Parcelable$Creator;
    //   44: aload_3
    //   45: invokeinterface 82 2 0
    //   50: checkcast 72	android/content/Intent
    //   53: astore_1
    //   54: aload_3
    //   55: invokevirtual 46	android/os/Parcel:recycle	()V
    //   58: aload_2
    //   59: invokevirtual 46	android/os/Parcel:recycle	()V
    //   62: aload_1
    //   63: areturn
    //   64: aconst_null
    //   65: astore_1
    //   66: goto -12 -> 54
    //   69: astore_1
    //   70: aload_3
    //   71: invokevirtual 46	android/os/Parcel:recycle	()V
    //   74: aload_2
    //   75: invokevirtual 46	android/os/Parcel:recycle	()V
    //   78: aload_1
    //   79: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	80	0	this	Proxy
    //   53	13	1	localIntent	Intent
    //   69	10	1	localObject	Object
    //   3	72	2	localParcel1	Parcel
    //   7	64	3	localParcel2	Parcel
    // Exception table:
    //   from	to	target	type
    //   8	54	69	finally
  }
  
  public void hy()
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
      ko.transact(11002, localParcel1, localParcel2, 0);
      localParcel2.readException();
      return;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }
  
  public boolean hz()
  {
    boolean bool = false;
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
      ko.transact(12025, localParcel1, localParcel2, 0);
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
  
  /* Error */
  public void i(IGamesCallbacks paramIGamesCallbacks)
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
    //   15: ifnull +44 -> 59
    //   18: aload_1
    //   19: invokeinterface 55 1 0
    //   24: astore_1
    //   25: aload_2
    //   26: aload_1
    //   27: invokevirtual 58	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
    //   30: aload_0
    //   31: getfield 15	com/google/android/gms/games/internal/IGamesService$Stub$Proxy:ko	Landroid/os/IBinder;
    //   34: sipush 5062
    //   37: aload_2
    //   38: aload_3
    //   39: iconst_0
    //   40: invokeinterface 40 5 0
    //   45: pop
    //   46: aload_3
    //   47: invokevirtual 43	android/os/Parcel:readException	()V
    //   50: aload_3
    //   51: invokevirtual 46	android/os/Parcel:recycle	()V
    //   54: aload_2
    //   55: invokevirtual 46	android/os/Parcel:recycle	()V
    //   58: return
    //   59: aconst_null
    //   60: astore_1
    //   61: goto -36 -> 25
    //   64: astore_1
    //   65: aload_3
    //   66: invokevirtual 46	android/os/Parcel:recycle	()V
    //   69: aload_2
    //   70: invokevirtual 46	android/os/Parcel:recycle	()V
    //   73: aload_1
    //   74: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	75	0	this	Proxy
    //   0	75	1	paramIGamesCallbacks	IGamesCallbacks
    //   3	67	2	localParcel1	Parcel
    //   7	59	3	localParcel2	Parcel
    // Exception table:
    //   from	to	target	type
    //   8	14	64	finally
    //   18	25	64	finally
    //   25	50	64	finally
  }
  
  /* Error */
  public void i(IGamesCallbacks paramIGamesCallbacks, String paramString)
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
    //   16: ifnull +52 -> 68
    //   19: aload_1
    //   20: invokeinterface 55 1 0
    //   25: astore_1
    //   26: aload_3
    //   27: aload_1
    //   28: invokevirtual 58	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
    //   31: aload_3
    //   32: aload_2
    //   33: invokevirtual 65	android/os/Parcel:writeString	(Ljava/lang/String;)V
    //   36: aload_0
    //   37: getfield 15	com/google/android/gms/games/internal/IGamesService$Stub$Proxy:ko	Landroid/os/IBinder;
    //   40: sipush 5061
    //   43: aload_3
    //   44: aload 4
    //   46: iconst_0
    //   47: invokeinterface 40 5 0
    //   52: pop
    //   53: aload 4
    //   55: invokevirtual 43	android/os/Parcel:readException	()V
    //   58: aload 4
    //   60: invokevirtual 46	android/os/Parcel:recycle	()V
    //   63: aload_3
    //   64: invokevirtual 46	android/os/Parcel:recycle	()V
    //   67: return
    //   68: aconst_null
    //   69: astore_1
    //   70: goto -44 -> 26
    //   73: astore_1
    //   74: aload 4
    //   76: invokevirtual 46	android/os/Parcel:recycle	()V
    //   79: aload_3
    //   80: invokevirtual 46	android/os/Parcel:recycle	()V
    //   83: aload_1
    //   84: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	85	0	this	Proxy
    //   0	85	1	paramIGamesCallbacks	IGamesCallbacks
    //   0	85	2	paramString	String
    //   3	77	3	localParcel1	Parcel
    //   7	68	4	localParcel2	Parcel
    // Exception table:
    //   from	to	target	type
    //   9	15	73	finally
    //   19	26	73	finally
    //   26	58	73	finally
  }
  
  /* Error */
  public void j(IGamesCallbacks paramIGamesCallbacks)
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
    //   15: ifnull +44 -> 59
    //   18: aload_1
    //   19: invokeinterface 55 1 0
    //   24: astore_1
    //   25: aload_2
    //   26: aload_1
    //   27: invokevirtual 58	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
    //   30: aload_0
    //   31: getfield 15	com/google/android/gms/games/internal/IGamesService$Stub$Proxy:ko	Landroid/os/IBinder;
    //   34: sipush 11001
    //   37: aload_2
    //   38: aload_3
    //   39: iconst_0
    //   40: invokeinterface 40 5 0
    //   45: pop
    //   46: aload_3
    //   47: invokevirtual 43	android/os/Parcel:readException	()V
    //   50: aload_3
    //   51: invokevirtual 46	android/os/Parcel:recycle	()V
    //   54: aload_2
    //   55: invokevirtual 46	android/os/Parcel:recycle	()V
    //   58: return
    //   59: aconst_null
    //   60: astore_1
    //   61: goto -36 -> 25
    //   64: astore_1
    //   65: aload_3
    //   66: invokevirtual 46	android/os/Parcel:recycle	()V
    //   69: aload_2
    //   70: invokevirtual 46	android/os/Parcel:recycle	()V
    //   73: aload_1
    //   74: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	75	0	this	Proxy
    //   0	75	1	paramIGamesCallbacks	IGamesCallbacks
    //   3	67	2	localParcel1	Parcel
    //   7	59	3	localParcel2	Parcel
    // Exception table:
    //   from	to	target	type
    //   8	14	64	finally
    //   18	25	64	finally
    //   25	50	64	finally
  }
  
  /* Error */
  public void j(IGamesCallbacks paramIGamesCallbacks, String paramString)
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
    //   16: ifnull +52 -> 68
    //   19: aload_1
    //   20: invokeinterface 55 1 0
    //   25: astore_1
    //   26: aload_3
    //   27: aload_1
    //   28: invokevirtual 58	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
    //   31: aload_3
    //   32: aload_2
    //   33: invokevirtual 65	android/os/Parcel:writeString	(Ljava/lang/String;)V
    //   36: aload_0
    //   37: getfield 15	com/google/android/gms/games/internal/IGamesService$Stub$Proxy:ko	Landroid/os/IBinder;
    //   40: sipush 5057
    //   43: aload_3
    //   44: aload 4
    //   46: iconst_0
    //   47: invokeinterface 40 5 0
    //   52: pop
    //   53: aload 4
    //   55: invokevirtual 43	android/os/Parcel:readException	()V
    //   58: aload 4
    //   60: invokevirtual 46	android/os/Parcel:recycle	()V
    //   63: aload_3
    //   64: invokevirtual 46	android/os/Parcel:recycle	()V
    //   67: return
    //   68: aconst_null
    //   69: astore_1
    //   70: goto -44 -> 26
    //   73: astore_1
    //   74: aload 4
    //   76: invokevirtual 46	android/os/Parcel:recycle	()V
    //   79: aload_3
    //   80: invokevirtual 46	android/os/Parcel:recycle	()V
    //   83: aload_1
    //   84: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	85	0	this	Proxy
    //   0	85	1	paramIGamesCallbacks	IGamesCallbacks
    //   0	85	2	paramString	String
    //   3	77	3	localParcel1	Parcel
    //   7	68	4	localParcel2	Parcel
    // Exception table:
    //   from	to	target	type
    //   9	15	73	finally
    //   19	26	73	finally
    //   26	58	73	finally
  }
  
  /* Error */
  public void k(IGamesCallbacks paramIGamesCallbacks, String paramString)
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
    //   16: ifnull +52 -> 68
    //   19: aload_1
    //   20: invokeinterface 55 1 0
    //   25: astore_1
    //   26: aload_3
    //   27: aload_1
    //   28: invokevirtual 58	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
    //   31: aload_3
    //   32: aload_2
    //   33: invokevirtual 65	android/os/Parcel:writeString	(Ljava/lang/String;)V
    //   36: aload_0
    //   37: getfield 15	com/google/android/gms/games/internal/IGamesService$Stub$Proxy:ko	Landroid/os/IBinder;
    //   40: sipush 7001
    //   43: aload_3
    //   44: aload 4
    //   46: iconst_0
    //   47: invokeinterface 40 5 0
    //   52: pop
    //   53: aload 4
    //   55: invokevirtual 43	android/os/Parcel:readException	()V
    //   58: aload 4
    //   60: invokevirtual 46	android/os/Parcel:recycle	()V
    //   63: aload_3
    //   64: invokevirtual 46	android/os/Parcel:recycle	()V
    //   67: return
    //   68: aconst_null
    //   69: astore_1
    //   70: goto -44 -> 26
    //   73: astore_1
    //   74: aload 4
    //   76: invokevirtual 46	android/os/Parcel:recycle	()V
    //   79: aload_3
    //   80: invokevirtual 46	android/os/Parcel:recycle	()V
    //   83: aload_1
    //   84: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	85	0	this	Proxy
    //   0	85	1	paramIGamesCallbacks	IGamesCallbacks
    //   0	85	2	paramString	String
    //   3	77	3	localParcel1	Parcel
    //   7	68	4	localParcel2	Parcel
    // Exception table:
    //   from	to	target	type
    //   9	15	73	finally
    //   19	26	73	finally
    //   26	58	73	finally
  }
  
  /* Error */
  public void l(IGamesCallbacks paramIGamesCallbacks, String paramString)
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
    //   16: ifnull +52 -> 68
    //   19: aload_1
    //   20: invokeinterface 55 1 0
    //   25: astore_1
    //   26: aload_3
    //   27: aload_1
    //   28: invokevirtual 58	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
    //   31: aload_3
    //   32: aload_2
    //   33: invokevirtual 65	android/os/Parcel:writeString	(Ljava/lang/String;)V
    //   36: aload_0
    //   37: getfield 15	com/google/android/gms/games/internal/IGamesService$Stub$Proxy:ko	Landroid/os/IBinder;
    //   40: sipush 8005
    //   43: aload_3
    //   44: aload 4
    //   46: iconst_0
    //   47: invokeinterface 40 5 0
    //   52: pop
    //   53: aload 4
    //   55: invokevirtual 43	android/os/Parcel:readException	()V
    //   58: aload 4
    //   60: invokevirtual 46	android/os/Parcel:recycle	()V
    //   63: aload_3
    //   64: invokevirtual 46	android/os/Parcel:recycle	()V
    //   67: return
    //   68: aconst_null
    //   69: astore_1
    //   70: goto -44 -> 26
    //   73: astore_1
    //   74: aload 4
    //   76: invokevirtual 46	android/os/Parcel:recycle	()V
    //   79: aload_3
    //   80: invokevirtual 46	android/os/Parcel:recycle	()V
    //   83: aload_1
    //   84: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	85	0	this	Proxy
    //   0	85	1	paramIGamesCallbacks	IGamesCallbacks
    //   0	85	2	paramString	String
    //   3	77	3	localParcel1	Parcel
    //   7	68	4	localParcel2	Parcel
    // Exception table:
    //   from	to	target	type
    //   9	15	73	finally
    //   19	26	73	finally
    //   26	58	73	finally
  }
  
  public void l(String paramString, int paramInt)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
      localParcel1.writeString(paramString);
      localParcel1.writeInt(paramInt);
      ko.transact(12017, localParcel1, localParcel2, 0);
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
  public void m(IGamesCallbacks paramIGamesCallbacks, String paramString)
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
    //   16: ifnull +52 -> 68
    //   19: aload_1
    //   20: invokeinterface 55 1 0
    //   25: astore_1
    //   26: aload_3
    //   27: aload_1
    //   28: invokevirtual 58	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
    //   31: aload_3
    //   32: aload_2
    //   33: invokevirtual 65	android/os/Parcel:writeString	(Ljava/lang/String;)V
    //   36: aload_0
    //   37: getfield 15	com/google/android/gms/games/internal/IGamesService$Stub$Proxy:ko	Landroid/os/IBinder;
    //   40: sipush 8006
    //   43: aload_3
    //   44: aload 4
    //   46: iconst_0
    //   47: invokeinterface 40 5 0
    //   52: pop
    //   53: aload 4
    //   55: invokevirtual 43	android/os/Parcel:readException	()V
    //   58: aload 4
    //   60: invokevirtual 46	android/os/Parcel:recycle	()V
    //   63: aload_3
    //   64: invokevirtual 46	android/os/Parcel:recycle	()V
    //   67: return
    //   68: aconst_null
    //   69: astore_1
    //   70: goto -44 -> 26
    //   73: astore_1
    //   74: aload 4
    //   76: invokevirtual 46	android/os/Parcel:recycle	()V
    //   79: aload_3
    //   80: invokevirtual 46	android/os/Parcel:recycle	()V
    //   83: aload_1
    //   84: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	85	0	this	Proxy
    //   0	85	1	paramIGamesCallbacks	IGamesCallbacks
    //   0	85	2	paramString	String
    //   3	77	3	localParcel1	Parcel
    //   7	68	4	localParcel2	Parcel
    // Exception table:
    //   from	to	target	type
    //   9	15	73	finally
    //   19	26	73	finally
    //   26	58	73	finally
  }
  
  public void m(String paramString, int paramInt)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
      localParcel1.writeString(paramString);
      localParcel1.writeInt(paramInt);
      ko.transact(5029, localParcel1, localParcel2, 0);
      localParcel2.readException();
      return;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }
  
  public void m(String paramString1, String paramString2)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
      localParcel1.writeString(paramString1);
      localParcel1.writeString(paramString2);
      ko.transact(5065, localParcel1, localParcel2, 0);
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
  public void n(IGamesCallbacks paramIGamesCallbacks, String paramString)
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
    //   16: ifnull +52 -> 68
    //   19: aload_1
    //   20: invokeinterface 55 1 0
    //   25: astore_1
    //   26: aload_3
    //   27: aload_1
    //   28: invokevirtual 58	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
    //   31: aload_3
    //   32: aload_2
    //   33: invokevirtual 65	android/os/Parcel:writeString	(Ljava/lang/String;)V
    //   36: aload_0
    //   37: getfield 15	com/google/android/gms/games/internal/IGamesService$Stub$Proxy:ko	Landroid/os/IBinder;
    //   40: sipush 8009
    //   43: aload_3
    //   44: aload 4
    //   46: iconst_0
    //   47: invokeinterface 40 5 0
    //   52: pop
    //   53: aload 4
    //   55: invokevirtual 43	android/os/Parcel:readException	()V
    //   58: aload 4
    //   60: invokevirtual 46	android/os/Parcel:recycle	()V
    //   63: aload_3
    //   64: invokevirtual 46	android/os/Parcel:recycle	()V
    //   67: return
    //   68: aconst_null
    //   69: astore_1
    //   70: goto -44 -> 26
    //   73: astore_1
    //   74: aload 4
    //   76: invokevirtual 46	android/os/Parcel:recycle	()V
    //   79: aload_3
    //   80: invokevirtual 46	android/os/Parcel:recycle	()V
    //   83: aload_1
    //   84: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	85	0	this	Proxy
    //   0	85	1	paramIGamesCallbacks	IGamesCallbacks
    //   0	85	2	paramString	String
    //   3	77	3	localParcel1	Parcel
    //   7	68	4	localParcel2	Parcel
    // Exception table:
    //   from	to	target	type
    //   9	15	73	finally
    //   19	26	73	finally
    //   26	58	73	finally
  }
  
  public void n(String paramString, int paramInt)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
      localParcel1.writeString(paramString);
      localParcel1.writeInt(paramInt);
      ko.transact(5028, localParcel1, localParcel2, 0);
      localParcel2.readException();
      return;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }
  
  public void n(String paramString1, String paramString2)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
      localParcel1.writeString(paramString1);
      localParcel1.writeString(paramString2);
      ko.transact(8025, localParcel1, localParcel2, 0);
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
  public void o(IGamesCallbacks paramIGamesCallbacks, String paramString)
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
    //   16: ifnull +52 -> 68
    //   19: aload_1
    //   20: invokeinterface 55 1 0
    //   25: astore_1
    //   26: aload_3
    //   27: aload_1
    //   28: invokevirtual 58	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
    //   31: aload_3
    //   32: aload_2
    //   33: invokevirtual 65	android/os/Parcel:writeString	(Ljava/lang/String;)V
    //   36: aload_0
    //   37: getfield 15	com/google/android/gms/games/internal/IGamesService$Stub$Proxy:ko	Landroid/os/IBinder;
    //   40: sipush 8010
    //   43: aload_3
    //   44: aload 4
    //   46: iconst_0
    //   47: invokeinterface 40 5 0
    //   52: pop
    //   53: aload 4
    //   55: invokevirtual 43	android/os/Parcel:readException	()V
    //   58: aload 4
    //   60: invokevirtual 46	android/os/Parcel:recycle	()V
    //   63: aload_3
    //   64: invokevirtual 46	android/os/Parcel:recycle	()V
    //   67: return
    //   68: aconst_null
    //   69: astore_1
    //   70: goto -44 -> 26
    //   73: astore_1
    //   74: aload 4
    //   76: invokevirtual 46	android/os/Parcel:recycle	()V
    //   79: aload_3
    //   80: invokevirtual 46	android/os/Parcel:recycle	()V
    //   83: aload_1
    //   84: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	85	0	this	Proxy
    //   0	85	1	paramIGamesCallbacks	IGamesCallbacks
    //   0	85	2	paramString	String
    //   3	77	3	localParcel1	Parcel
    //   7	68	4	localParcel2	Parcel
    // Exception table:
    //   from	to	target	type
    //   9	15	73	finally
    //   19	26	73	finally
    //   26	58	73	finally
  }
  
  /* Error */
  public void p(IGamesCallbacks paramIGamesCallbacks, String paramString)
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
    //   16: ifnull +52 -> 68
    //   19: aload_1
    //   20: invokeinterface 55 1 0
    //   25: astore_1
    //   26: aload_3
    //   27: aload_1
    //   28: invokevirtual 58	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
    //   31: aload_3
    //   32: aload_2
    //   33: invokevirtual 65	android/os/Parcel:writeString	(Ljava/lang/String;)V
    //   36: aload_0
    //   37: getfield 15	com/google/android/gms/games/internal/IGamesService$Stub$Proxy:ko	Landroid/os/IBinder;
    //   40: sipush 8014
    //   43: aload_3
    //   44: aload 4
    //   46: iconst_0
    //   47: invokeinterface 40 5 0
    //   52: pop
    //   53: aload 4
    //   55: invokevirtual 43	android/os/Parcel:readException	()V
    //   58: aload 4
    //   60: invokevirtual 46	android/os/Parcel:recycle	()V
    //   63: aload_3
    //   64: invokevirtual 46	android/os/Parcel:recycle	()V
    //   67: return
    //   68: aconst_null
    //   69: astore_1
    //   70: goto -44 -> 26
    //   73: astore_1
    //   74: aload 4
    //   76: invokevirtual 46	android/os/Parcel:recycle	()V
    //   79: aload_3
    //   80: invokevirtual 46	android/os/Parcel:recycle	()V
    //   83: aload_1
    //   84: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	85	0	this	Proxy
    //   0	85	1	paramIGamesCallbacks	IGamesCallbacks
    //   0	85	2	paramString	String
    //   3	77	3	localParcel1	Parcel
    //   7	68	4	localParcel2	Parcel
    // Exception table:
    //   from	to	target	type
    //   9	15	73	finally
    //   19	26	73	finally
    //   26	58	73	finally
  }
  
  public void p(String paramString, int paramInt)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
      localParcel1.writeString(paramString);
      localParcel1.writeInt(paramInt);
      ko.transact(5055, localParcel1, localParcel2, 0);
      localParcel2.readException();
      return;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }
  
  public void q(long paramLong)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
      localParcel1.writeLong(paramLong);
      ko.transact(5001, localParcel1, localParcel2, 0);
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
  public void q(IGamesCallbacks paramIGamesCallbacks, String paramString)
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
    //   16: ifnull +52 -> 68
    //   19: aload_1
    //   20: invokeinterface 55 1 0
    //   25: astore_1
    //   26: aload_3
    //   27: aload_1
    //   28: invokevirtual 58	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
    //   31: aload_3
    //   32: aload_2
    //   33: invokevirtual 65	android/os/Parcel:writeString	(Ljava/lang/String;)V
    //   36: aload_0
    //   37: getfield 15	com/google/android/gms/games/internal/IGamesService$Stub$Proxy:ko	Landroid/os/IBinder;
    //   40: sipush 9002
    //   43: aload_3
    //   44: aload 4
    //   46: iconst_0
    //   47: invokeinterface 40 5 0
    //   52: pop
    //   53: aload 4
    //   55: invokevirtual 43	android/os/Parcel:readException	()V
    //   58: aload 4
    //   60: invokevirtual 46	android/os/Parcel:recycle	()V
    //   63: aload_3
    //   64: invokevirtual 46	android/os/Parcel:recycle	()V
    //   67: return
    //   68: aconst_null
    //   69: astore_1
    //   70: goto -44 -> 26
    //   73: astore_1
    //   74: aload 4
    //   76: invokevirtual 46	android/os/Parcel:recycle	()V
    //   79: aload_3
    //   80: invokevirtual 46	android/os/Parcel:recycle	()V
    //   83: aload_1
    //   84: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	85	0	this	Proxy
    //   0	85	1	paramIGamesCallbacks	IGamesCallbacks
    //   0	85	2	paramString	String
    //   3	77	3	localParcel1	Parcel
    //   7	68	4	localParcel2	Parcel
    // Exception table:
    //   from	to	target	type
    //   9	15	73	finally
    //   19	26	73	finally
    //   26	58	73	finally
  }
  
  public void q(String paramString, int paramInt)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
      localParcel1.writeString(paramString);
      localParcel1.writeInt(paramInt);
      ko.transact(10014, localParcel1, localParcel2, 0);
      localParcel2.readException();
      return;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }
  
  public void r(long paramLong)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
      localParcel1.writeLong(paramLong);
      ko.transact(5059, localParcel1, localParcel2, 0);
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
  public void r(IGamesCallbacks paramIGamesCallbacks, String paramString)
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
    //   16: ifnull +52 -> 68
    //   19: aload_1
    //   20: invokeinterface 55 1 0
    //   25: astore_1
    //   26: aload_3
    //   27: aload_1
    //   28: invokevirtual 58	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
    //   31: aload_3
    //   32: aload_2
    //   33: invokevirtual 65	android/os/Parcel:writeString	(Ljava/lang/String;)V
    //   36: aload_0
    //   37: getfield 15	com/google/android/gms/games/internal/IGamesService$Stub$Proxy:ko	Landroid/os/IBinder;
    //   40: sipush 12020
    //   43: aload_3
    //   44: aload 4
    //   46: iconst_0
    //   47: invokeinterface 40 5 0
    //   52: pop
    //   53: aload 4
    //   55: invokevirtual 43	android/os/Parcel:readException	()V
    //   58: aload 4
    //   60: invokevirtual 46	android/os/Parcel:recycle	()V
    //   63: aload_3
    //   64: invokevirtual 46	android/os/Parcel:recycle	()V
    //   67: return
    //   68: aconst_null
    //   69: astore_1
    //   70: goto -44 -> 26
    //   73: astore_1
    //   74: aload 4
    //   76: invokevirtual 46	android/os/Parcel:recycle	()V
    //   79: aload_3
    //   80: invokevirtual 46	android/os/Parcel:recycle	()V
    //   83: aload_1
    //   84: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	85	0	this	Proxy
    //   0	85	1	paramIGamesCallbacks	IGamesCallbacks
    //   0	85	2	paramString	String
    //   3	77	3	localParcel1	Parcel
    //   7	68	4	localParcel2	Parcel
    // Exception table:
    //   from	to	target	type
    //   9	15	73	finally
    //   19	26	73	finally
    //   26	58	73	finally
  }
  
  public void s(long paramLong)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
      localParcel1.writeLong(paramLong);
      ko.transact(8013, localParcel1, localParcel2, 0);
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
  public void s(IGamesCallbacks paramIGamesCallbacks, String paramString)
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
    //   16: ifnull +52 -> 68
    //   19: aload_1
    //   20: invokeinterface 55 1 0
    //   25: astore_1
    //   26: aload_3
    //   27: aload_1
    //   28: invokevirtual 58	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
    //   31: aload_3
    //   32: aload_2
    //   33: invokevirtual 65	android/os/Parcel:writeString	(Ljava/lang/String;)V
    //   36: aload_0
    //   37: getfield 15	com/google/android/gms/games/internal/IGamesService$Stub$Proxy:ko	Landroid/os/IBinder;
    //   40: sipush 12005
    //   43: aload_3
    //   44: aload 4
    //   46: iconst_0
    //   47: invokeinterface 40 5 0
    //   52: pop
    //   53: aload 4
    //   55: invokevirtual 43	android/os/Parcel:readException	()V
    //   58: aload 4
    //   60: invokevirtual 46	android/os/Parcel:recycle	()V
    //   63: aload_3
    //   64: invokevirtual 46	android/os/Parcel:recycle	()V
    //   67: return
    //   68: aconst_null
    //   69: astore_1
    //   70: goto -44 -> 26
    //   73: astore_1
    //   74: aload 4
    //   76: invokevirtual 46	android/os/Parcel:recycle	()V
    //   79: aload_3
    //   80: invokevirtual 46	android/os/Parcel:recycle	()V
    //   83: aload_1
    //   84: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	85	0	this	Proxy
    //   0	85	1	paramIGamesCallbacks	IGamesCallbacks
    //   0	85	2	paramString	String
    //   3	77	3	localParcel1	Parcel
    //   7	68	4	localParcel2	Parcel
    // Exception table:
    //   from	to	target	type
    //   9	15	73	finally
    //   19	26	73	finally
    //   26	58	73	finally
  }
  
  public void t(long paramLong)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
      localParcel1.writeLong(paramLong);
      ko.transact(10002, localParcel1, localParcel2, 0);
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
  public void t(IGamesCallbacks paramIGamesCallbacks, String paramString)
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
    //   16: ifnull +52 -> 68
    //   19: aload_1
    //   20: invokeinterface 55 1 0
    //   25: astore_1
    //   26: aload_3
    //   27: aload_1
    //   28: invokevirtual 58	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
    //   31: aload_3
    //   32: aload_2
    //   33: invokevirtual 65	android/os/Parcel:writeString	(Ljava/lang/String;)V
    //   36: aload_0
    //   37: getfield 15	com/google/android/gms/games/internal/IGamesService$Stub$Proxy:ko	Landroid/os/IBinder;
    //   40: sipush 12027
    //   43: aload_3
    //   44: aload 4
    //   46: iconst_0
    //   47: invokeinterface 40 5 0
    //   52: pop
    //   53: aload 4
    //   55: invokevirtual 43	android/os/Parcel:readException	()V
    //   58: aload 4
    //   60: invokevirtual 46	android/os/Parcel:recycle	()V
    //   63: aload_3
    //   64: invokevirtual 46	android/os/Parcel:recycle	()V
    //   67: return
    //   68: aconst_null
    //   69: astore_1
    //   70: goto -44 -> 26
    //   73: astore_1
    //   74: aload 4
    //   76: invokevirtual 46	android/os/Parcel:recycle	()V
    //   79: aload_3
    //   80: invokevirtual 46	android/os/Parcel:recycle	()V
    //   83: aload_1
    //   84: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	85	0	this	Proxy
    //   0	85	1	paramIGamesCallbacks	IGamesCallbacks
    //   0	85	2	paramString	String
    //   3	77	3	localParcel1	Parcel
    //   7	68	4	localParcel2	Parcel
    // Exception table:
    //   from	to	target	type
    //   9	15	73	finally
    //   19	26	73	finally
    //   26	58	73	finally
  }
  
  public void u(long paramLong)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.google.android.gms.games.internal.IGamesService");
      localParcel1.writeLong(paramLong);
      ko.transact(12012, localParcel1, localParcel2, 0);
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
  public void u(IGamesCallbacks paramIGamesCallbacks, String paramString)
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
    //   16: ifnull +52 -> 68
    //   19: aload_1
    //   20: invokeinterface 55 1 0
    //   25: astore_1
    //   26: aload_3
    //   27: aload_1
    //   28: invokevirtual 58	android/os/Parcel:writeStrongBinder	(Landroid/os/IBinder;)V
    //   31: aload_3
    //   32: aload_2
    //   33: invokevirtual 65	android/os/Parcel:writeString	(Ljava/lang/String;)V
    //   36: aload_0
    //   37: getfield 15	com/google/android/gms/games/internal/IGamesService$Stub$Proxy:ko	Landroid/os/IBinder;
    //   40: sipush 12008
    //   43: aload_3
    //   44: aload 4
    //   46: iconst_0
    //   47: invokeinterface 40 5 0
    //   52: pop
    //   53: aload 4
    //   55: invokevirtual 43	android/os/Parcel:readException	()V
    //   58: aload 4
    //   60: invokevirtual 46	android/os/Parcel:recycle	()V
    //   63: aload_3
    //   64: invokevirtual 46	android/os/Parcel:recycle	()V
    //   67: return
    //   68: aconst_null
    //   69: astore_1
    //   70: goto -44 -> 26
    //   73: astore_1
    //   74: aload 4
    //   76: invokevirtual 46	android/os/Parcel:recycle	()V
    //   79: aload_3
    //   80: invokevirtual 46	android/os/Parcel:recycle	()V
    //   83: aload_1
    //   84: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	85	0	this	Proxy
    //   0	85	1	paramIGamesCallbacks	IGamesCallbacks
    //   0	85	2	paramString	String
    //   3	77	3	localParcel1	Parcel
    //   7	68	4	localParcel2	Parcel
    // Exception table:
    //   from	to	target	type
    //   9	15	73	finally
    //   19	26	73	finally
    //   26	58	73	finally
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.internal.IGamesService.Stub.Proxy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */