package com.google.android.gms.games.multiplayer.realtime;

import android.os.Bundle;
import com.google.android.gms.internal.hn;
import java.util.ArrayList;

public final class RoomConfig
{
  private final String NN;
  private final int SV;
  private final RoomUpdateListener Th;
  private final RoomStatusUpdateListener Ti;
  private final RealTimeMessageReceivedListener Tj;
  private final String[] Tk;
  private final Bundle Tl;
  private final boolean Tm;
  
  private RoomConfig(RoomConfig.Builder paramBuilder)
  {
    Th = Th;
    Ti = Ti;
    Tj = Tj;
    NN = Tn;
    SV = SV;
    Tl = Tl;
    Tm = Tm;
    int i = To.size();
    Tk = ((String[])To.toArray(new String[i]));
    if (Tj == null) {
      hn.a(Tm, "Must either enable sockets OR specify a message listener");
    }
  }
  
  public static RoomConfig.Builder builder(RoomUpdateListener paramRoomUpdateListener)
  {
    return new RoomConfig.Builder(paramRoomUpdateListener, null);
  }
  
  public static Bundle createAutoMatchCriteria(int paramInt1, int paramInt2, long paramLong)
  {
    Bundle localBundle = new Bundle();
    localBundle.putInt("min_automatch_players", paramInt1);
    localBundle.putInt("max_automatch_players", paramInt2);
    localBundle.putLong("exclusive_bit_mask", paramLong);
    return localBundle;
  }
  
  public final Bundle getAutoMatchCriteria()
  {
    return Tl;
  }
  
  public final String getInvitationId()
  {
    return NN;
  }
  
  public final String[] getInvitedPlayerIds()
  {
    return Tk;
  }
  
  public final RealTimeMessageReceivedListener getMessageReceivedListener()
  {
    return Tj;
  }
  
  public final RoomStatusUpdateListener getRoomStatusUpdateListener()
  {
    return Ti;
  }
  
  public final RoomUpdateListener getRoomUpdateListener()
  {
    return Th;
  }
  
  public final int getVariant()
  {
    return SV;
  }
  
  public final boolean isSocketEnabled()
  {
    return Tm;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.multiplayer.realtime.RoomConfig
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */