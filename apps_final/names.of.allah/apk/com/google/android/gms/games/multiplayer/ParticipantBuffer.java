package com.google.android.gms.games.multiplayer;

import com.google.android.gms.common.data.DataBuffer;

public final class ParticipantBuffer
  extends DataBuffer<Participant>
{
  public final Participant get(int paramInt)
  {
    return new ParticipantRef(DD, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.multiplayer.ParticipantBuffer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */