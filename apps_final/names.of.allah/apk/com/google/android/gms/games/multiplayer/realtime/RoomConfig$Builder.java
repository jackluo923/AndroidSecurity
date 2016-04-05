package com.google.android.gms.games.multiplayer.realtime;

import android.os.Bundle;
import com.google.android.gms.internal.hn;
import java.util.ArrayList;
import java.util.Arrays;

public final class RoomConfig$Builder
{
  int SV = -1;
  final RoomUpdateListener Th;
  RoomStatusUpdateListener Ti;
  RealTimeMessageReceivedListener Tj;
  Bundle Tl;
  boolean Tm = false;
  String Tn = null;
  ArrayList<String> To = new ArrayList();
  
  private RoomConfig$Builder(RoomUpdateListener paramRoomUpdateListener)
  {
    Th = ((RoomUpdateListener)hn.b(paramRoomUpdateListener, "Must provide a RoomUpdateListener"));
  }
  
  public final Builder addPlayersToInvite(ArrayList<String> paramArrayList)
  {
    hn.f(paramArrayList);
    To.addAll(paramArrayList);
    return this;
  }
  
  public final Builder addPlayersToInvite(String... paramVarArgs)
  {
    hn.f(paramVarArgs);
    To.addAll(Arrays.asList(paramVarArgs));
    return this;
  }
  
  public final RoomConfig build()
  {
    return new RoomConfig(this, null);
  }
  
  public final Builder setAutoMatchCriteria(Bundle paramBundle)
  {
    Tl = paramBundle;
    return this;
  }
  
  public final Builder setInvitationIdToAccept(String paramString)
  {
    hn.f(paramString);
    Tn = paramString;
    return this;
  }
  
  public final Builder setMessageReceivedListener(RealTimeMessageReceivedListener paramRealTimeMessageReceivedListener)
  {
    Tj = paramRealTimeMessageReceivedListener;
    return this;
  }
  
  public final Builder setRoomStatusUpdateListener(RoomStatusUpdateListener paramRoomStatusUpdateListener)
  {
    Ti = paramRoomStatusUpdateListener;
    return this;
  }
  
  public final Builder setSocketCommunicationEnabled(boolean paramBoolean)
  {
    Tm = paramBoolean;
    return this;
  }
  
  public final Builder setVariant(int paramInt)
  {
    if ((paramInt == -1) || (paramInt > 0)) {}
    for (boolean bool = true;; bool = false)
    {
      hn.b(bool, "Variant must be a positive integer or Room.ROOM_VARIANT_ANY");
      SV = paramInt;
      return this;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.multiplayer.realtime.RoomConfig.Builder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */