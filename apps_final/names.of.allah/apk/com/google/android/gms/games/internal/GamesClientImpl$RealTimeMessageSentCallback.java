package com.google.android.gms.games.internal;

import com.google.android.gms.games.multiplayer.realtime.RealTimeMultiplayer.ReliableMessageSentCallback;
import com.google.android.gms.internal.hc;
import com.google.android.gms.internal.hc.b;

final class GamesClientImpl$RealTimeMessageSentCallback
  extends hc<IGamesService>.b<RealTimeMultiplayer.ReliableMessageSentCallback>
{
  private final int CQ;
  private final String Ot;
  private final int Ou;
  
  GamesClientImpl$RealTimeMessageSentCallback(GamesClientImpl paramGamesClientImpl, RealTimeMultiplayer.ReliableMessageSentCallback paramReliableMessageSentCallback, int paramInt1, int paramInt2, String paramString)
  {
    super(paramGamesClientImpl, paramReliableMessageSentCallback);
    CQ = paramInt1;
    Ou = paramInt2;
    Ot = paramString;
  }
  
  public final void a(RealTimeMultiplayer.ReliableMessageSentCallback paramReliableMessageSentCallback)
  {
    if (paramReliableMessageSentCallback != null) {
      paramReliableMessageSentCallback.onRealTimeMessageSent(CQ, Ou, Ot);
    }
  }
  
  protected final void fp() {}
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.internal.GamesClientImpl.RealTimeMessageSentCallback
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */