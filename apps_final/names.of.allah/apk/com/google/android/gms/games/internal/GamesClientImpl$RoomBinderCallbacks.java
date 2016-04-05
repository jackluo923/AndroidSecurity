package com.google.android.gms.games.internal;

import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.games.multiplayer.realtime.RealTimeMessage;
import com.google.android.gms.games.multiplayer.realtime.RealTimeMessageReceivedListener;
import com.google.android.gms.games.multiplayer.realtime.RoomStatusUpdateListener;
import com.google.android.gms.games.multiplayer.realtime.RoomUpdateListener;
import com.google.android.gms.internal.hn;

final class GamesClientImpl$RoomBinderCallbacks
  extends AbstractGamesCallbacks
{
  private final RoomUpdateListener OD;
  private final RoomStatusUpdateListener OE;
  private final RealTimeMessageReceivedListener OF;
  
  public GamesClientImpl$RoomBinderCallbacks(GamesClientImpl paramGamesClientImpl, RoomUpdateListener paramRoomUpdateListener)
  {
    OD = ((RoomUpdateListener)hn.b(paramRoomUpdateListener, "Callbacks must not be null"));
    OE = null;
    OF = null;
  }
  
  public GamesClientImpl$RoomBinderCallbacks(GamesClientImpl paramGamesClientImpl, RoomUpdateListener paramRoomUpdateListener, RoomStatusUpdateListener paramRoomStatusUpdateListener, RealTimeMessageReceivedListener paramRealTimeMessageReceivedListener)
  {
    OD = ((RoomUpdateListener)hn.b(paramRoomUpdateListener, "Callbacks must not be null"));
    OE = paramRoomStatusUpdateListener;
    OF = paramRealTimeMessageReceivedListener;
  }
  
  public final void A(DataHolder paramDataHolder)
  {
    NB.a(new GamesClientImpl.DisconnectedFromRoomCallback(NB, OE, paramDataHolder));
  }
  
  public final void a(DataHolder paramDataHolder, String[] paramArrayOfString)
  {
    NB.a(new GamesClientImpl.PeerInvitedToRoomCallback(NB, OE, paramDataHolder, paramArrayOfString));
  }
  
  public final void b(DataHolder paramDataHolder, String[] paramArrayOfString)
  {
    NB.a(new GamesClientImpl.PeerJoinedRoomCallback(NB, OE, paramDataHolder, paramArrayOfString));
  }
  
  public final void c(DataHolder paramDataHolder, String[] paramArrayOfString)
  {
    NB.a(new GamesClientImpl.PeerLeftRoomCallback(NB, OE, paramDataHolder, paramArrayOfString));
  }
  
  public final void d(DataHolder paramDataHolder, String[] paramArrayOfString)
  {
    NB.a(new GamesClientImpl.PeerDeclinedCallback(NB, OE, paramDataHolder, paramArrayOfString));
  }
  
  public final void e(DataHolder paramDataHolder, String[] paramArrayOfString)
  {
    NB.a(new GamesClientImpl.PeerConnectedCallback(NB, OE, paramDataHolder, paramArrayOfString));
  }
  
  public final void f(DataHolder paramDataHolder, String[] paramArrayOfString)
  {
    NB.a(new GamesClientImpl.PeerDisconnectedCallback(NB, OE, paramDataHolder, paramArrayOfString));
  }
  
  public final void onLeftRoom(int paramInt, String paramString)
  {
    NB.a(new GamesClientImpl.LeftRoomCallback(NB, OD, paramInt, paramString));
  }
  
  public final void onP2PConnected(String paramString)
  {
    NB.a(new GamesClientImpl.P2PConnectedCallback(NB, OE, paramString));
  }
  
  public final void onP2PDisconnected(String paramString)
  {
    NB.a(new GamesClientImpl.P2PDisconnectedCallback(NB, OE, paramString));
  }
  
  public final void onRealTimeMessageReceived(RealTimeMessage paramRealTimeMessage)
  {
    NB.a(new GamesClientImpl.MessageReceivedCallback(NB, OF, paramRealTimeMessage));
  }
  
  public final void u(DataHolder paramDataHolder)
  {
    NB.a(new GamesClientImpl.RoomCreatedCallback(NB, OD, paramDataHolder));
  }
  
  public final void v(DataHolder paramDataHolder)
  {
    NB.a(new GamesClientImpl.JoinedRoomCallback(NB, OD, paramDataHolder));
  }
  
  public final void w(DataHolder paramDataHolder)
  {
    NB.a(new GamesClientImpl.RoomConnectingCallback(NB, OE, paramDataHolder));
  }
  
  public final void x(DataHolder paramDataHolder)
  {
    NB.a(new GamesClientImpl.RoomAutoMatchingCallback(NB, OE, paramDataHolder));
  }
  
  public final void y(DataHolder paramDataHolder)
  {
    NB.a(new GamesClientImpl.RoomConnectedCallback(NB, OD, paramDataHolder));
  }
  
  public final void z(DataHolder paramDataHolder)
  {
    NB.a(new GamesClientImpl.ConnectedToRoomCallback(NB, OE, paramDataHolder));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.internal.GamesClientImpl.RoomBinderCallbacks
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */