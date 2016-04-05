package com.google.android.gms.games.internal;

import com.google.android.gms.common.api.b;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.games.Players.LoadXpStreamResult;
import com.google.android.gms.games.internal.experience.ExperienceEventBuffer;

final class GamesClientImpl$LoadXpStreamResultImpl
  extends b
  implements Players.LoadXpStreamResult
{
  private final ExperienceEventBuffer Oe;
  
  GamesClientImpl$LoadXpStreamResultImpl(DataHolder paramDataHolder)
  {
    super(paramDataHolder);
    Oe = new ExperienceEventBuffer(paramDataHolder);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.internal.GamesClientImpl.LoadXpStreamResultImpl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */