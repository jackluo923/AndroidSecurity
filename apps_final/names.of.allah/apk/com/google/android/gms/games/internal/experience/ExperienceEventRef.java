package com.google.android.gms.games.internal.experience;

import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.d;

public final class ExperienceEventRef
  extends d
  implements ExperienceEvent
{
  public ExperienceEventRef(DataHolder paramDataHolder, int paramInt)
  {
    super(paramDataHolder, paramInt);
  }
  
  public final String getIconImageUrl()
  {
    return getString("icon_url");
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.internal.experience.ExperienceEventRef
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */