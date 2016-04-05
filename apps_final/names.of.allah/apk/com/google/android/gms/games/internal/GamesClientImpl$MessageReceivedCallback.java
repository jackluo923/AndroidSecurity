package com.google.android.gms.games.internal;

import com.google.android.gms.games.multiplayer.realtime.RealTimeMessage;
import com.google.android.gms.games.multiplayer.realtime.RealTimeMessageReceivedListener;
import com.google.android.gms.internal.hc;
import com.google.android.gms.internal.hc.b;

final class GamesClientImpl$MessageReceivedCallback
  extends hc<IGamesService>.b<RealTimeMessageReceivedListener>
{
  private final RealTimeMessage Oi;
  
  GamesClientImpl$MessageReceivedCallback(GamesClientImpl paramGamesClientImpl, RealTimeMessageReceivedListener paramRealTimeMessageReceivedListener, RealTimeMessage paramRealTimeMessage)
  {
    super(paramGamesClientImpl, paramRealTimeMessageReceivedListener);
    Oi = paramRealTimeMessage;
  }
  
  public final void a(RealTimeMessageReceivedListener paramRealTimeMessageReceivedListener)
  {
    if (paramRealTimeMessageReceivedListener != null) {
      paramRealTimeMessageReceivedListener.onRealTimeMessageReceived(Oi);
    }
  }
  
  protected final void fp() {}
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.internal.GamesClientImpl.MessageReceivedCallback
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */