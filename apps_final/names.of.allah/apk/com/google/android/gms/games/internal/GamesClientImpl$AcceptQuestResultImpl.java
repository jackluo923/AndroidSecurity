package com.google.android.gms.games.internal;

import com.google.android.gms.common.api.b;
import com.google.android.gms.games.quest.Quest;
import com.google.android.gms.games.quest.Quests.AcceptQuestResult;

final class GamesClientImpl$AcceptQuestResultImpl
  extends b
  implements Quests.AcceptQuestResult
{
  private final Quest ND;
  
  /* Error */
  GamesClientImpl$AcceptQuestResultImpl(com.google.android.gms.common.data.DataHolder paramDataHolder)
  {
    // Byte code:
    //   0: aload_0
    //   1: aload_1
    //   2: invokespecial 12	com/google/android/gms/common/api/b:<init>	(Lcom/google/android/gms/common/data/DataHolder;)V
    //   5: new 14	com/google/android/gms/games/quest/QuestBuffer
    //   8: dup
    //   9: aload_1
    //   10: invokespecial 15	com/google/android/gms/games/quest/QuestBuffer:<init>	(Lcom/google/android/gms/common/data/DataHolder;)V
    //   13: astore_1
    //   14: aload_1
    //   15: invokevirtual 19	com/google/android/gms/games/quest/QuestBuffer:getCount	()I
    //   18: ifle +27 -> 45
    //   21: aload_0
    //   22: new 21	com/google/android/gms/games/quest/QuestEntity
    //   25: dup
    //   26: aload_1
    //   27: iconst_0
    //   28: invokevirtual 25	com/google/android/gms/games/quest/QuestBuffer:get	(I)Ljava/lang/Object;
    //   31: checkcast 27	com/google/android/gms/games/quest/Quest
    //   34: invokespecial 30	com/google/android/gms/games/quest/QuestEntity:<init>	(Lcom/google/android/gms/games/quest/Quest;)V
    //   37: putfield 32	com/google/android/gms/games/internal/GamesClientImpl$AcceptQuestResultImpl:ND	Lcom/google/android/gms/games/quest/Quest;
    //   40: aload_1
    //   41: invokevirtual 36	com/google/android/gms/games/quest/QuestBuffer:close	()V
    //   44: return
    //   45: aload_0
    //   46: aconst_null
    //   47: putfield 32	com/google/android/gms/games/internal/GamesClientImpl$AcceptQuestResultImpl:ND	Lcom/google/android/gms/games/quest/Quest;
    //   50: goto -10 -> 40
    //   53: astore_2
    //   54: aload_1
    //   55: invokevirtual 36	com/google/android/gms/games/quest/QuestBuffer:close	()V
    //   58: aload_2
    //   59: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	60	0	this	AcceptQuestResultImpl
    //   0	60	1	paramDataHolder	com.google.android.gms.common.data.DataHolder
    //   53	6	2	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   14	40	53	finally
    //   45	50	53	finally
  }
  
  public final Quest getQuest()
  {
    return ND;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.internal.GamesClientImpl.AcceptQuestResultImpl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */