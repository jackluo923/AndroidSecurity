package com.google.android.gms.games.quest;

import android.os.Parcel;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.d;

public final class MilestoneRef
  extends d
  implements Milestone
{
  MilestoneRef(DataHolder paramDataHolder, int paramInt)
  {
    super(paramDataHolder, paramInt);
  }
  
  private long iD()
  {
    return getLong("initial_value");
  }
  
  public final int describeContents()
  {
    return 0;
  }
  
  public final boolean equals(Object paramObject)
  {
    return MilestoneEntity.a(this, paramObject);
  }
  
  public final Milestone freeze()
  {
    return new MilestoneEntity(this);
  }
  
  public final byte[] getCompletionRewardData()
  {
    return getByteArray("completion_reward_data");
  }
  
  public final long getCurrentProgress()
  {
    switch (getState())
    {
    case 1: 
    default: 
      return 0L;
    case 3: 
    case 4: 
      return getTargetProgress();
    }
    return getLong("current_value") - iD();
  }
  
  public final String getEventId()
  {
    return getString("external_event_id");
  }
  
  public final String getMilestoneId()
  {
    return getString("external_milestone_id");
  }
  
  public final int getState()
  {
    return getInteger("milestone_state");
  }
  
  public final long getTargetProgress()
  {
    return getLong("target_value");
  }
  
  public final int hashCode()
  {
    return MilestoneEntity.a(this);
  }
  
  public final String toString()
  {
    return MilestoneEntity.b(this);
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    ((MilestoneEntity)freeze()).writeToParcel(paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.quest.MilestoneRef
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */