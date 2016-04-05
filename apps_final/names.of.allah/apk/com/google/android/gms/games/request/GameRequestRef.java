package com.google.android.gms.games.request;

import android.os.Parcel;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.d;
import com.google.android.gms.games.Game;
import com.google.android.gms.games.GameRef;
import com.google.android.gms.games.Player;
import com.google.android.gms.games.PlayerRef;
import java.util.ArrayList;
import java.util.List;

public final class GameRequestRef
  extends d
  implements GameRequest
{
  private final int RD;
  
  public GameRequestRef(DataHolder paramDataHolder, int paramInt1, int paramInt2)
  {
    super(paramDataHolder, paramInt1);
    RD = paramInt2;
  }
  
  public final int describeContents()
  {
    return 0;
  }
  
  public final boolean equals(Object paramObject)
  {
    return GameRequestEntity.a(this, paramObject);
  }
  
  public final GameRequest freeze()
  {
    return new GameRequestEntity(this);
  }
  
  public final long getCreationTimestamp()
  {
    return getLong("creation_timestamp");
  }
  
  public final byte[] getData()
  {
    return getByteArray("data");
  }
  
  public final long getExpirationTimestamp()
  {
    return getLong("expiration_timestamp");
  }
  
  public final Game getGame()
  {
    return new GameRef(DD, Ez);
  }
  
  public final int getRecipientStatus(String paramString)
  {
    int i = Ez;
    while (i < Ez + RD)
    {
      int j = DD.ae(i);
      if (DD.c("recipient_external_player_id", i, j).equals(paramString)) {
        return DD.b("recipient_status", i, j);
      }
      i += 1;
    }
    return -1;
  }
  
  public final List<Player> getRecipients()
  {
    ArrayList localArrayList = new ArrayList(RD);
    int i = 0;
    while (i < RD)
    {
      localArrayList.add(new PlayerRef(DD, Ez + i, "recipient_"));
      i += 1;
    }
    return localArrayList;
  }
  
  public final String getRequestId()
  {
    return getString("external_request_id");
  }
  
  public final Player getSender()
  {
    return new PlayerRef(DD, eQ(), "sender_");
  }
  
  public final int getStatus()
  {
    return getInteger("status");
  }
  
  public final int getType()
  {
    return getInteger("type");
  }
  
  public final int hashCode()
  {
    return GameRequestEntity.a(this);
  }
  
  public final boolean isConsumed(String paramString)
  {
    return getRecipientStatus(paramString) == 1;
  }
  
  public final String toString()
  {
    return GameRequestEntity.c(this);
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    ((GameRequestEntity)freeze()).writeToParcel(paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.request.GameRequestRef
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */