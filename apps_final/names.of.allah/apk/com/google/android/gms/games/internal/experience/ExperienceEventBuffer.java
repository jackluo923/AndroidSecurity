package com.google.android.gms.games.internal.experience;

import com.google.android.gms.common.data.DataBuffer;
import com.google.android.gms.common.data.DataHolder;

public final class ExperienceEventBuffer
  extends DataBuffer<ExperienceEvent>
{
  public ExperienceEventBuffer(DataHolder paramDataHolder)
  {
    super(paramDataHolder);
  }
  
  public final ExperienceEvent cn(int paramInt)
  {
    return new ExperienceEventRef(DD, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.internal.experience.ExperienceEventBuffer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */