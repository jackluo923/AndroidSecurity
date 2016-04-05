package com.google.android.gms.games.internal;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.games.Notifications.GameMuteStatusLoadResult;

final class GamesClientImpl$GameMuteStatusLoadResultImpl
  implements Notifications.GameMuteStatusLoadResult
{
  private final String NI;
  private final boolean NJ;
  private final Status yw;
  
  /* Error */
  public GamesClientImpl$GameMuteStatusLoadResultImpl(com.google.android.gms.common.data.DataHolder paramDataHolder)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokespecial 17	java/lang/Object:<init>	()V
    //   4: aload_0
    //   5: new 19	com/google/android/gms/common/api/Status
    //   8: dup
    //   9: aload_1
    //   10: invokevirtual 25	com/google/android/gms/common/data/DataHolder:getStatusCode	()I
    //   13: invokespecial 28	com/google/android/gms/common/api/Status:<init>	(I)V
    //   16: putfield 30	com/google/android/gms/games/internal/GamesClientImpl$GameMuteStatusLoadResultImpl:yw	Lcom/google/android/gms/common/api/Status;
    //   19: aload_1
    //   20: invokevirtual 33	com/google/android/gms/common/data/DataHolder:getCount	()I
    //   23: ifle +32 -> 55
    //   26: aload_0
    //   27: aload_1
    //   28: ldc 35
    //   30: iconst_0
    //   31: iconst_0
    //   32: invokevirtual 39	com/google/android/gms/common/data/DataHolder:c	(Ljava/lang/String;II)Ljava/lang/String;
    //   35: putfield 41	com/google/android/gms/games/internal/GamesClientImpl$GameMuteStatusLoadResultImpl:NI	Ljava/lang/String;
    //   38: aload_0
    //   39: aload_1
    //   40: ldc 43
    //   42: iconst_0
    //   43: iconst_0
    //   44: invokevirtual 47	com/google/android/gms/common/data/DataHolder:d	(Ljava/lang/String;II)Z
    //   47: putfield 49	com/google/android/gms/games/internal/GamesClientImpl$GameMuteStatusLoadResultImpl:NJ	Z
    //   50: aload_1
    //   51: invokevirtual 52	com/google/android/gms/common/data/DataHolder:close	()V
    //   54: return
    //   55: aload_0
    //   56: aconst_null
    //   57: putfield 41	com/google/android/gms/games/internal/GamesClientImpl$GameMuteStatusLoadResultImpl:NI	Ljava/lang/String;
    //   60: aload_0
    //   61: iconst_0
    //   62: putfield 49	com/google/android/gms/games/internal/GamesClientImpl$GameMuteStatusLoadResultImpl:NJ	Z
    //   65: goto -15 -> 50
    //   68: astore_2
    //   69: aload_1
    //   70: invokevirtual 52	com/google/android/gms/common/data/DataHolder:close	()V
    //   73: aload_2
    //   74: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	75	0	this	GameMuteStatusLoadResultImpl
    //   0	75	1	paramDataHolder	com.google.android.gms.common.data.DataHolder
    //   68	6	2	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   4	50	68	finally
    //   55	65	68	finally
  }
  
  public final Status getStatus()
  {
    return yw;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.internal.GamesClientImpl.GameMuteStatusLoadResultImpl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */