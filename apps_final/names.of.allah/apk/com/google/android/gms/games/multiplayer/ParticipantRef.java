package com.google.android.gms.games.multiplayer;

import android.database.CharArrayBuffer;
import android.net.Uri;
import android.os.Parcel;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.d;
import com.google.android.gms.games.Player;
import com.google.android.gms.games.PlayerRef;

public final class ParticipantRef
  extends d
  implements Participant
{
  private final PlayerRef Tb;
  
  public ParticipantRef(DataHolder paramDataHolder, int paramInt)
  {
    super(paramDataHolder, paramInt);
    Tb = new PlayerRef(paramDataHolder, paramInt);
  }
  
  public final int describeContents()
  {
    return 0;
  }
  
  public final boolean equals(Object paramObject)
  {
    return ParticipantEntity.a(this, paramObject);
  }
  
  public final Participant freeze()
  {
    return new ParticipantEntity(this);
  }
  
  public final String gR()
  {
    return getString("client_address");
  }
  
  public final int getCapabilities()
  {
    return getInteger("capabilities");
  }
  
  public final String getDisplayName()
  {
    if (ax("external_player_id")) {
      return getString("default_display_name");
    }
    return Tb.getDisplayName();
  }
  
  public final void getDisplayName(CharArrayBuffer paramCharArrayBuffer)
  {
    if (ax("external_player_id"))
    {
      a("default_display_name", paramCharArrayBuffer);
      return;
    }
    Tb.getDisplayName(paramCharArrayBuffer);
  }
  
  public final Uri getHiResImageUri()
  {
    if (ax("external_player_id")) {
      return aw("default_display_hi_res_image_uri");
    }
    return Tb.getHiResImageUri();
  }
  
  public final String getHiResImageUrl()
  {
    if (ax("external_player_id")) {
      return getString("default_display_hi_res_image_url");
    }
    return Tb.getHiResImageUrl();
  }
  
  public final Uri getIconImageUri()
  {
    if (ax("external_player_id")) {
      return aw("default_display_image_uri");
    }
    return Tb.getIconImageUri();
  }
  
  public final String getIconImageUrl()
  {
    if (ax("external_player_id")) {
      return getString("default_display_image_url");
    }
    return Tb.getIconImageUrl();
  }
  
  public final String getParticipantId()
  {
    return getString("external_participant_id");
  }
  
  public final Player getPlayer()
  {
    if (ax("external_player_id")) {
      return null;
    }
    return Tb;
  }
  
  public final ParticipantResult getResult()
  {
    if (ax("result_type")) {
      return null;
    }
    int i = getInteger("result_type");
    int j = getInteger("placing");
    return new ParticipantResult(getParticipantId(), i, j);
  }
  
  public final int getStatus()
  {
    return getInteger("player_status");
  }
  
  public final int hashCode()
  {
    return ParticipantEntity.a(this);
  }
  
  public final boolean isConnectedToRoom()
  {
    return getInteger("connected") > 0;
  }
  
  public final String toString()
  {
    return ParticipantEntity.b(this);
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    ((ParticipantEntity)freeze()).writeToParcel(paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.multiplayer.ParticipantRef
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */