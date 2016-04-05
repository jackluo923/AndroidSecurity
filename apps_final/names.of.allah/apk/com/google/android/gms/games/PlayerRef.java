package com.google.android.gms.games;

import android.database.CharArrayBuffer;
import android.net.Uri;
import android.os.Parcel;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.d;
import com.google.android.gms.games.internal.player.MostRecentGameInfo;
import com.google.android.gms.games.internal.player.MostRecentGameInfoRef;
import com.google.android.gms.games.internal.player.PlayerColumnNames;

public final class PlayerRef
  extends d
  implements Player
{
  private final PlayerLevelInfo MU;
  private final PlayerColumnNames Nd;
  private final MostRecentGameInfoRef Ne;
  
  public PlayerRef(DataHolder paramDataHolder, int paramInt)
  {
    this(paramDataHolder, paramInt, null);
  }
  
  public PlayerRef(DataHolder paramDataHolder, int paramInt, String paramString)
  {
    super(paramDataHolder, paramInt);
    Nd = new PlayerColumnNames(paramString);
    Ne = new MostRecentGameInfoRef(paramDataHolder, paramInt, Nd);
    int i;
    if (gQ())
    {
      paramInt = getInteger(Nd.RV);
      i = getInteger(Nd.RY);
      paramString = new PlayerLevel(paramInt, getLong(Nd.RW), getLong(Nd.RX));
      if (paramInt == i) {
        break label178;
      }
    }
    label178:
    for (paramDataHolder = new PlayerLevel(i, getLong(Nd.RX), getLong(Nd.RZ));; paramDataHolder = paramString)
    {
      MU = new PlayerLevelInfo(getLong(Nd.RU), getLong(Nd.Sa), paramString, paramDataHolder);
      return;
      MU = null;
      return;
    }
  }
  
  private boolean gQ()
  {
    if (ax(Nd.RU)) {}
    while (getLong(Nd.RU) == -1L) {
      return false;
    }
    return true;
  }
  
  public final int describeContents()
  {
    return 0;
  }
  
  public final boolean equals(Object paramObject)
  {
    return PlayerEntity.a(this, paramObject);
  }
  
  public final Player freeze()
  {
    return new PlayerEntity(this);
  }
  
  public final int gN()
  {
    return getInteger(Nd.RS);
  }
  
  public final boolean gO()
  {
    return getBoolean(Nd.Sc);
  }
  
  public final MostRecentGameInfo gP()
  {
    if (ax(Nd.Sd)) {
      return null;
    }
    return Ne;
  }
  
  public final String getDisplayName()
  {
    return getString(Nd.RM);
  }
  
  public final void getDisplayName(CharArrayBuffer paramCharArrayBuffer)
  {
    a(Nd.RM, paramCharArrayBuffer);
  }
  
  public final Uri getHiResImageUri()
  {
    return aw(Nd.RP);
  }
  
  public final String getHiResImageUrl()
  {
    return getString(Nd.RQ);
  }
  
  public final Uri getIconImageUri()
  {
    return aw(Nd.RN);
  }
  
  public final String getIconImageUrl()
  {
    return getString(Nd.RO);
  }
  
  public final long getLastPlayedWithTimestamp()
  {
    if ((!av(Nd.RT)) || (ax(Nd.RT))) {
      return -1L;
    }
    return getLong(Nd.RT);
  }
  
  public final PlayerLevelInfo getLevelInfo()
  {
    return MU;
  }
  
  public final String getPlayerId()
  {
    return getString(Nd.RL);
  }
  
  public final long getRetrievedTimestamp()
  {
    return getLong(Nd.RR);
  }
  
  public final String getTitle()
  {
    return getString(Nd.Sb);
  }
  
  public final void getTitle(CharArrayBuffer paramCharArrayBuffer)
  {
    a(Nd.Sb, paramCharArrayBuffer);
  }
  
  public final boolean hasHiResImage()
  {
    return getHiResImageUri() != null;
  }
  
  public final boolean hasIconImage()
  {
    return getIconImageUri() != null;
  }
  
  public final int hashCode()
  {
    return PlayerEntity.a(this);
  }
  
  public final String toString()
  {
    return PlayerEntity.b(this);
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    ((PlayerEntity)freeze()).writeToParcel(paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.PlayerRef
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */