package com.google.android.gms.games.quest;

import android.database.CharArrayBuffer;
import android.net.Uri;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.games.Game;
import com.google.android.gms.games.GameEntity;
import com.google.android.gms.internal.hl;
import com.google.android.gms.internal.hl.a;
import com.google.android.gms.internal.il;
import java.util.ArrayList;
import java.util.List;

public final class QuestEntity
  implements SafeParcelable, Quest
{
  public static final QuestEntityCreator CREATOR = new QuestEntityCreator();
  private final int AQ;
  private final String Mm;
  private final GameEntity Rq;
  private final String TM;
  private final long TN;
  private final Uri TO;
  private final String TP;
  private final long TQ;
  private final Uri TR;
  private final String TS;
  private final long TT;
  private final long TU;
  private final ArrayList<MilestoneEntity> TV;
  private final long Ty;
  private final String mName;
  private final int mState;
  private final int xJ;
  
  QuestEntity(int paramInt1, GameEntity paramGameEntity, String paramString1, long paramLong1, Uri paramUri1, String paramString2, String paramString3, long paramLong2, long paramLong3, Uri paramUri2, String paramString4, String paramString5, long paramLong4, long paramLong5, int paramInt2, int paramInt3, ArrayList<MilestoneEntity> paramArrayList)
  {
    xJ = paramInt1;
    Rq = paramGameEntity;
    TM = paramString1;
    TN = paramLong1;
    TO = paramUri1;
    TP = paramString2;
    Mm = paramString3;
    TQ = paramLong2;
    Ty = paramLong3;
    TR = paramUri2;
    TS = paramString4;
    mName = paramString5;
    TT = paramLong4;
    TU = paramLong5;
    mState = paramInt2;
    AQ = paramInt3;
    TV = paramArrayList;
  }
  
  public QuestEntity(Quest paramQuest)
  {
    xJ = 2;
    Rq = new GameEntity(paramQuest.getGame());
    TM = paramQuest.getQuestId();
    TN = paramQuest.getAcceptedTimestamp();
    Mm = paramQuest.getDescription();
    TO = paramQuest.getBannerImageUri();
    TP = paramQuest.getBannerImageUrl();
    TQ = paramQuest.getEndTimestamp();
    TR = paramQuest.getIconImageUri();
    TS = paramQuest.getIconImageUrl();
    Ty = paramQuest.getLastUpdatedTimestamp();
    mName = paramQuest.getName();
    TT = paramQuest.iF();
    TU = paramQuest.getStartTimestamp();
    mState = paramQuest.getState();
    AQ = paramQuest.getType();
    paramQuest = paramQuest.iE();
    int j = paramQuest.size();
    TV = new ArrayList(j);
    int i = 0;
    while (i < j)
    {
      TV.add((MilestoneEntity)((Milestone)paramQuest.get(i)).freeze());
      i += 1;
    }
  }
  
  static int a(Quest paramQuest)
  {
    return hl.hashCode(new Object[] { paramQuest.getGame(), paramQuest.getQuestId(), Long.valueOf(paramQuest.getAcceptedTimestamp()), paramQuest.getBannerImageUri(), paramQuest.getDescription(), Long.valueOf(paramQuest.getEndTimestamp()), paramQuest.getIconImageUri(), Long.valueOf(paramQuest.getLastUpdatedTimestamp()), paramQuest.iE(), paramQuest.getName(), Long.valueOf(paramQuest.iF()), Long.valueOf(paramQuest.getStartTimestamp()), Integer.valueOf(paramQuest.getState()) });
  }
  
  static boolean a(Quest paramQuest, Object paramObject)
  {
    if (!(paramObject instanceof Quest)) {}
    do
    {
      return false;
      if (paramQuest == paramObject) {
        return true;
      }
      paramObject = (Quest)paramObject;
    } while ((!hl.equal(((Quest)paramObject).getGame(), paramQuest.getGame())) || (!hl.equal(((Quest)paramObject).getQuestId(), paramQuest.getQuestId())) || (!hl.equal(Long.valueOf(((Quest)paramObject).getAcceptedTimestamp()), Long.valueOf(paramQuest.getAcceptedTimestamp()))) || (!hl.equal(((Quest)paramObject).getBannerImageUri(), paramQuest.getBannerImageUri())) || (!hl.equal(((Quest)paramObject).getDescription(), paramQuest.getDescription())) || (!hl.equal(Long.valueOf(((Quest)paramObject).getEndTimestamp()), Long.valueOf(paramQuest.getEndTimestamp()))) || (!hl.equal(((Quest)paramObject).getIconImageUri(), paramQuest.getIconImageUri())) || (!hl.equal(Long.valueOf(((Quest)paramObject).getLastUpdatedTimestamp()), Long.valueOf(paramQuest.getLastUpdatedTimestamp()))) || (!hl.equal(((Quest)paramObject).iE(), paramQuest.iE())) || (!hl.equal(((Quest)paramObject).getName(), paramQuest.getName())) || (!hl.equal(Long.valueOf(((Quest)paramObject).iF()), Long.valueOf(paramQuest.iF()))) || (!hl.equal(Long.valueOf(((Quest)paramObject).getStartTimestamp()), Long.valueOf(paramQuest.getStartTimestamp()))) || (!hl.equal(Integer.valueOf(((Quest)paramObject).getState()), Integer.valueOf(paramQuest.getState()))));
    return true;
  }
  
  static String b(Quest paramQuest)
  {
    return hl.e(paramQuest).a("Game", paramQuest.getGame()).a("QuestId", paramQuest.getQuestId()).a("AcceptedTimestamp", Long.valueOf(paramQuest.getAcceptedTimestamp())).a("BannerImageUri", paramQuest.getBannerImageUri()).a("BannerImageUrl", paramQuest.getBannerImageUrl()).a("Description", paramQuest.getDescription()).a("EndTimestamp", Long.valueOf(paramQuest.getEndTimestamp())).a("IconImageUri", paramQuest.getIconImageUri()).a("IconImageUrl", paramQuest.getIconImageUrl()).a("LastUpdatedTimestamp", Long.valueOf(paramQuest.getLastUpdatedTimestamp())).a("Milestones", paramQuest.iE()).a("Name", paramQuest.getName()).a("NotifyTimestamp", Long.valueOf(paramQuest.iF())).a("StartTimestamp", Long.valueOf(paramQuest.getStartTimestamp())).a("State", Integer.valueOf(paramQuest.getState())).toString();
  }
  
  public final int describeContents()
  {
    return 0;
  }
  
  public final boolean equals(Object paramObject)
  {
    return a(this, paramObject);
  }
  
  public final Quest freeze()
  {
    return this;
  }
  
  public final long getAcceptedTimestamp()
  {
    return TN;
  }
  
  public final Uri getBannerImageUri()
  {
    return TO;
  }
  
  public final String getBannerImageUrl()
  {
    return TP;
  }
  
  public final Milestone getCurrentMilestone()
  {
    return (Milestone)iE().get(0);
  }
  
  public final String getDescription()
  {
    return Mm;
  }
  
  public final void getDescription(CharArrayBuffer paramCharArrayBuffer)
  {
    il.b(Mm, paramCharArrayBuffer);
  }
  
  public final long getEndTimestamp()
  {
    return TQ;
  }
  
  public final Game getGame()
  {
    return Rq;
  }
  
  public final Uri getIconImageUri()
  {
    return TR;
  }
  
  public final String getIconImageUrl()
  {
    return TS;
  }
  
  public final long getLastUpdatedTimestamp()
  {
    return Ty;
  }
  
  public final String getName()
  {
    return mName;
  }
  
  public final void getName(CharArrayBuffer paramCharArrayBuffer)
  {
    il.b(mName, paramCharArrayBuffer);
  }
  
  public final String getQuestId()
  {
    return TM;
  }
  
  public final long getStartTimestamp()
  {
    return TU;
  }
  
  public final int getState()
  {
    return mState;
  }
  
  public final int getType()
  {
    return AQ;
  }
  
  public final int getVersionCode()
  {
    return xJ;
  }
  
  public final int hashCode()
  {
    return a(this);
  }
  
  public final List<Milestone> iE()
  {
    return new ArrayList(TV);
  }
  
  public final long iF()
  {
    return TT;
  }
  
  public final boolean isDataValid()
  {
    return true;
  }
  
  public final boolean isEndingSoon()
  {
    return TT <= System.currentTimeMillis() + 1800000L;
  }
  
  public final String toString()
  {
    return b(this);
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    QuestEntityCreator.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.quest.QuestEntity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */