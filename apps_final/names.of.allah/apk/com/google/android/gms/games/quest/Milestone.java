package com.google.android.gms.games.quest;

import android.os.Parcelable;
import com.google.android.gms.common.data.Freezable;

public abstract interface Milestone
  extends Parcelable, Freezable<Milestone>
{
  public static final int STATE_CLAIMED = 4;
  public static final int STATE_COMPLETED_NOT_CLAIMED = 3;
  public static final int STATE_NOT_COMPLETED = 2;
  public static final int STATE_NOT_STARTED = 1;
  public static final long UNSET_CRITERIA = -1L;
  
  public abstract byte[] getCompletionRewardData();
  
  public abstract long getCurrentProgress();
  
  public abstract String getEventId();
  
  public abstract String getMilestoneId();
  
  public abstract int getState();
  
  public abstract long getTargetProgress();
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.quest.Milestone
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */