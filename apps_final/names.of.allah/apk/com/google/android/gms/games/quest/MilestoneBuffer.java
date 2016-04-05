package com.google.android.gms.games.quest;

import com.google.android.gms.common.data.DataBuffer;

public final class MilestoneBuffer
  extends DataBuffer<Milestone>
{
  public final Milestone get(int paramInt)
  {
    return new MilestoneRef(DD, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.quest.MilestoneBuffer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */