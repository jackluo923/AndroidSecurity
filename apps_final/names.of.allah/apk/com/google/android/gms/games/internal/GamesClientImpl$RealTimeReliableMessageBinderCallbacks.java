package com.google.android.gms.games.internal;

import com.google.android.gms.games.multiplayer.realtime.RealTimeMultiplayer.ReliableMessageSentCallback;

final class GamesClientImpl$RealTimeReliableMessageBinderCallbacks
  extends AbstractGamesCallbacks
{
  final RealTimeMultiplayer.ReliableMessageSentCallback Ov;
  
  public GamesClientImpl$RealTimeReliableMessageBinderCallbacks(GamesClientImpl paramGamesClientImpl, RealTimeMultiplayer.ReliableMessageSentCallback paramReliableMessageSentCallback)
  {
    Ov = paramReliableMessageSentCallback;
  }
  
  public final void b(int paramInt1, int paramInt2, String paramString)
  {
    NB.a(new GamesClientImpl.RealTimeMessageSentCallback(NB, Ov, paramInt1, paramInt2, paramString));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.internal.GamesClientImpl.RealTimeReliableMessageBinderCallbacks
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */