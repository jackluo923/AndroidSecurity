package com.google.android.gms.games.request;

import com.google.android.gms.common.data.DataBuffer;

public final class GameRequestSummaryBuffer
  extends DataBuffer<GameRequestSummary>
{
  public final GameRequestSummary cB(int paramInt)
  {
    return new GameRequestSummaryRef(DD, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.request.GameRequestSummaryBuffer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */