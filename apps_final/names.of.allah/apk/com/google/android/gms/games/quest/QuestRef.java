package com.google.android.gms.games.quest;

import android.database.CharArrayBuffer;
import android.net.Uri;
import android.os.Parcel;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.d;
import com.google.android.gms.games.Game;
import com.google.android.gms.games.GameRef;
import java.util.ArrayList;
import java.util.List;

public final class QuestRef
  extends d
  implements Quest
{
  private final int RD;
  private final Game Sp;
  
  QuestRef(DataHolder paramDataHolder, int paramInt1, int paramInt2)
  {
    super(paramDataHolder, paramInt1);
    Sp = new GameRef(paramDataHolder, paramInt1);
    RD = paramInt2;
  }
  
  public final int describeContents()
  {
    return 0;
  }
  
  public final boolean equals(Object paramObject)
  {
    return QuestEntity.a(this, paramObject);
  }
  
  public final Quest freeze()
  {
    return new QuestEntity(this);
  }
  
  public final long getAcceptedTimestamp()
  {
    return getLong("accepted_ts");
  }
  
  public final Uri getBannerImageUri()
  {
    return aw("quest_banner_image_uri");
  }
  
  public final String getBannerImageUrl()
  {
    return getString("quest_banner_image_url");
  }
  
  public final Milestone getCurrentMilestone()
  {
    return (Milestone)iE().get(0);
  }
  
  public final String getDescription()
  {
    return getString("quest_description");
  }
  
  public final void getDescription(CharArrayBuffer paramCharArrayBuffer)
  {
    a("quest_description", paramCharArrayBuffer);
  }
  
  public final long getEndTimestamp()
  {
    return getLong("quest_end_ts");
  }
  
  public final Game getGame()
  {
    return Sp;
  }
  
  public final Uri getIconImageUri()
  {
    return aw("quest_icon_image_uri");
  }
  
  public final String getIconImageUrl()
  {
    return getString("quest_icon_image_url");
  }
  
  public final long getLastUpdatedTimestamp()
  {
    return getLong("quest_last_updated_ts");
  }
  
  public final String getName()
  {
    return getString("quest_name");
  }
  
  public final void getName(CharArrayBuffer paramCharArrayBuffer)
  {
    a("quest_name", paramCharArrayBuffer);
  }
  
  public final String getQuestId()
  {
    return getString("external_quest_id");
  }
  
  public final long getStartTimestamp()
  {
    return getLong("quest_start_ts");
  }
  
  public final int getState()
  {
    return getInteger("quest_state");
  }
  
  public final int getType()
  {
    return getInteger("quest_type");
  }
  
  public final int hashCode()
  {
    return QuestEntity.a(this);
  }
  
  public final List<Milestone> iE()
  {
    ArrayList localArrayList = new ArrayList(RD);
    int i = 0;
    while (i < RD)
    {
      localArrayList.add(new MilestoneRef(DD, Ez + i));
      i += 1;
    }
    return localArrayList;
  }
  
  public final long iF()
  {
    return getLong("notification_ts");
  }
  
  public final boolean isEndingSoon()
  {
    return iF() <= System.currentTimeMillis() + 1800000L;
  }
  
  public final String toString()
  {
    return QuestEntity.b(this);
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    ((QuestEntity)freeze()).writeToParcel(paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.quest.QuestRef
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */