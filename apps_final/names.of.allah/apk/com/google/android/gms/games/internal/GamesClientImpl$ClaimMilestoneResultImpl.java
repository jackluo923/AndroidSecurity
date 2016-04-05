package com.google.android.gms.games.internal;

import com.google.android.gms.common.api.b;
import com.google.android.gms.games.quest.Milestone;
import com.google.android.gms.games.quest.Quest;
import com.google.android.gms.games.quest.Quests.ClaimMilestoneResult;

final class GamesClientImpl$ClaimMilestoneResultImpl
  extends b
  implements Quests.ClaimMilestoneResult
{
  private final Quest ND;
  private final Milestone NF;
  
  /* Error */
  GamesClientImpl$ClaimMilestoneResultImpl(com.google.android.gms.common.data.DataHolder paramDataHolder, String paramString)
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore 4
    //   3: aload_0
    //   4: aload_1
    //   5: invokespecial 15	com/google/android/gms/common/api/b:<init>	(Lcom/google/android/gms/common/data/DataHolder;)V
    //   8: new 17	com/google/android/gms/games/quest/QuestBuffer
    //   11: dup
    //   12: aload_1
    //   13: invokespecial 18	com/google/android/gms/games/quest/QuestBuffer:<init>	(Lcom/google/android/gms/common/data/DataHolder;)V
    //   16: astore_1
    //   17: aload_1
    //   18: invokevirtual 22	com/google/android/gms/games/quest/QuestBuffer:getCount	()I
    //   21: ifle +109 -> 130
    //   24: aload_0
    //   25: new 24	com/google/android/gms/games/quest/QuestEntity
    //   28: dup
    //   29: aload_1
    //   30: iconst_0
    //   31: invokevirtual 28	com/google/android/gms/games/quest/QuestBuffer:get	(I)Ljava/lang/Object;
    //   34: checkcast 30	com/google/android/gms/games/quest/Quest
    //   37: invokespecial 33	com/google/android/gms/games/quest/QuestEntity:<init>	(Lcom/google/android/gms/games/quest/Quest;)V
    //   40: putfield 35	com/google/android/gms/games/internal/GamesClientImpl$ClaimMilestoneResultImpl:ND	Lcom/google/android/gms/games/quest/Quest;
    //   43: aload_0
    //   44: getfield 35	com/google/android/gms/games/internal/GamesClientImpl$ClaimMilestoneResultImpl:ND	Lcom/google/android/gms/games/quest/Quest;
    //   47: invokeinterface 39 1 0
    //   52: astore_3
    //   53: aload_3
    //   54: invokeinterface 44 1 0
    //   59: istore 5
    //   61: iload 4
    //   63: iload 5
    //   65: if_icmpge +55 -> 120
    //   68: aload_3
    //   69: iload 4
    //   71: invokeinterface 45 2 0
    //   76: checkcast 47	com/google/android/gms/games/quest/Milestone
    //   79: invokeinterface 51 1 0
    //   84: aload_2
    //   85: invokevirtual 57	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   88: ifeq +23 -> 111
    //   91: aload_0
    //   92: aload_3
    //   93: iload 4
    //   95: invokeinterface 45 2 0
    //   100: checkcast 47	com/google/android/gms/games/quest/Milestone
    //   103: putfield 59	com/google/android/gms/games/internal/GamesClientImpl$ClaimMilestoneResultImpl:NF	Lcom/google/android/gms/games/quest/Milestone;
    //   106: aload_1
    //   107: invokevirtual 63	com/google/android/gms/games/quest/QuestBuffer:close	()V
    //   110: return
    //   111: iload 4
    //   113: iconst_1
    //   114: iadd
    //   115: istore 4
    //   117: goto -56 -> 61
    //   120: aload_0
    //   121: aconst_null
    //   122: putfield 59	com/google/android/gms/games/internal/GamesClientImpl$ClaimMilestoneResultImpl:NF	Lcom/google/android/gms/games/quest/Milestone;
    //   125: aload_1
    //   126: invokevirtual 63	com/google/android/gms/games/quest/QuestBuffer:close	()V
    //   129: return
    //   130: aload_0
    //   131: aconst_null
    //   132: putfield 59	com/google/android/gms/games/internal/GamesClientImpl$ClaimMilestoneResultImpl:NF	Lcom/google/android/gms/games/quest/Milestone;
    //   135: aload_0
    //   136: aconst_null
    //   137: putfield 35	com/google/android/gms/games/internal/GamesClientImpl$ClaimMilestoneResultImpl:ND	Lcom/google/android/gms/games/quest/Quest;
    //   140: goto -15 -> 125
    //   143: astore_2
    //   144: aload_1
    //   145: invokevirtual 63	com/google/android/gms/games/quest/QuestBuffer:close	()V
    //   148: aload_2
    //   149: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	150	0	this	ClaimMilestoneResultImpl
    //   0	150	1	paramDataHolder	com.google.android.gms.common.data.DataHolder
    //   0	150	2	paramString	String
    //   52	41	3	localList	java.util.List
    //   1	115	4	i	int
    //   59	7	5	j	int
    // Exception table:
    //   from	to	target	type
    //   17	61	143	finally
    //   68	106	143	finally
    //   120	125	143	finally
    //   130	140	143	finally
  }
  
  public final Milestone getMilestone()
  {
    return NF;
  }
  
  public final Quest getQuest()
  {
    return ND;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.internal.GamesClientImpl.ClaimMilestoneResultImpl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */