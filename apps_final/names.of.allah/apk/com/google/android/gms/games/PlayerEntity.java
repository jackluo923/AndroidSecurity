package com.google.android.gms.games;

import android.database.CharArrayBuffer;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.games.internal.GamesDowngradeableSafeParcel;
import com.google.android.gms.games.internal.player.MostRecentGameInfo;
import com.google.android.gms.games.internal.player.MostRecentGameInfoEntity;
import com.google.android.gms.internal.gy;
import com.google.android.gms.internal.hl;
import com.google.android.gms.internal.hl.a;
import com.google.android.gms.internal.il;

public final class PlayerEntity
  extends GamesDowngradeableSafeParcel
  implements Player
{
  public static final Parcelable.Creator<PlayerEntity> CREATOR = new PlayerEntity.PlayerEntityCreatorCompat();
  private final String HV;
  private final String Lk;
  private final String MA;
  private final String MP;
  private final long MQ;
  private final int MR;
  private final long MS;
  private final MostRecentGameInfoEntity MT;
  private final PlayerLevelInfo MU;
  private final boolean MV;
  private final Uri Mo;
  private final Uri Mp;
  private final String Mz;
  private final int xJ;
  
  PlayerEntity(int paramInt1, String paramString1, String paramString2, Uri paramUri1, Uri paramUri2, long paramLong1, int paramInt2, long paramLong2, String paramString3, String paramString4, String paramString5, MostRecentGameInfoEntity paramMostRecentGameInfoEntity, PlayerLevelInfo paramPlayerLevelInfo, boolean paramBoolean)
  {
    xJ = paramInt1;
    MP = paramString1;
    Lk = paramString2;
    Mo = paramUri1;
    Mz = paramString3;
    Mp = paramUri2;
    MA = paramString4;
    MQ = paramLong1;
    MR = paramInt2;
    MS = paramLong2;
    HV = paramString5;
    MV = paramBoolean;
    MT = paramMostRecentGameInfoEntity;
    MU = paramPlayerLevelInfo;
  }
  
  public PlayerEntity(Player paramPlayer)
  {
    xJ = 10;
    MP = paramPlayer.getPlayerId();
    Lk = paramPlayer.getDisplayName();
    Mo = paramPlayer.getIconImageUri();
    Mz = paramPlayer.getIconImageUrl();
    Mp = paramPlayer.getHiResImageUri();
    MA = paramPlayer.getHiResImageUrl();
    MQ = paramPlayer.getRetrievedTimestamp();
    MR = paramPlayer.gN();
    MS = paramPlayer.getLastPlayedWithTimestamp();
    HV = paramPlayer.getTitle();
    MV = paramPlayer.gO();
    Object localObject = paramPlayer.gP();
    if (localObject == null)
    {
      localObject = null;
      MT = ((MostRecentGameInfoEntity)localObject);
      MU = paramPlayer.getLevelInfo();
      gy.c(MP);
      gy.c(Lk);
      if (MQ <= 0L) {
        break label190;
      }
    }
    label190:
    for (boolean bool = true;; bool = false)
    {
      gy.A(bool);
      return;
      localObject = new MostRecentGameInfoEntity((MostRecentGameInfo)localObject);
      break;
    }
  }
  
  static int a(Player paramPlayer)
  {
    return hl.hashCode(new Object[] { paramPlayer.getPlayerId(), paramPlayer.getDisplayName(), paramPlayer.getIconImageUri(), paramPlayer.getHiResImageUri(), Long.valueOf(paramPlayer.getRetrievedTimestamp()), paramPlayer.getTitle(), paramPlayer.getLevelInfo() });
  }
  
  static boolean a(Player paramPlayer, Object paramObject)
  {
    if (!(paramObject instanceof Player)) {}
    do
    {
      return false;
      if (paramPlayer == paramObject) {
        return true;
      }
      paramObject = (Player)paramObject;
    } while ((!hl.equal(((Player)paramObject).getPlayerId(), paramPlayer.getPlayerId())) || (!hl.equal(((Player)paramObject).getDisplayName(), paramPlayer.getDisplayName())) || (!hl.equal(((Player)paramObject).getIconImageUri(), paramPlayer.getIconImageUri())) || (!hl.equal(((Player)paramObject).getHiResImageUri(), paramPlayer.getHiResImageUri())) || (!hl.equal(Long.valueOf(((Player)paramObject).getRetrievedTimestamp()), Long.valueOf(paramPlayer.getRetrievedTimestamp()))) || (!hl.equal(((Player)paramObject).getTitle(), paramPlayer.getTitle())) || (!hl.equal(((Player)paramObject).getLevelInfo(), paramPlayer.getLevelInfo())));
    return true;
  }
  
  static String b(Player paramPlayer)
  {
    return hl.e(paramPlayer).a("PlayerId", paramPlayer.getPlayerId()).a("DisplayName", paramPlayer.getDisplayName()).a("IconImageUri", paramPlayer.getIconImageUri()).a("IconImageUrl", paramPlayer.getIconImageUrl()).a("HiResImageUri", paramPlayer.getHiResImageUri()).a("HiResImageUrl", paramPlayer.getHiResImageUrl()).a("RetrievedTimestamp", Long.valueOf(paramPlayer.getRetrievedTimestamp())).a("Title", paramPlayer.getTitle()).a("LevelInfo", paramPlayer.getLevelInfo()).toString();
  }
  
  public final int describeContents()
  {
    return 0;
  }
  
  public final boolean equals(Object paramObject)
  {
    return a(this, paramObject);
  }
  
  public final Player freeze()
  {
    return this;
  }
  
  public final int gN()
  {
    return MR;
  }
  
  public final boolean gO()
  {
    return MV;
  }
  
  public final MostRecentGameInfo gP()
  {
    return MT;
  }
  
  public final String getDisplayName()
  {
    return Lk;
  }
  
  public final void getDisplayName(CharArrayBuffer paramCharArrayBuffer)
  {
    il.b(Lk, paramCharArrayBuffer);
  }
  
  public final Uri getHiResImageUri()
  {
    return Mp;
  }
  
  public final String getHiResImageUrl()
  {
    return MA;
  }
  
  public final Uri getIconImageUri()
  {
    return Mo;
  }
  
  public final String getIconImageUrl()
  {
    return Mz;
  }
  
  public final long getLastPlayedWithTimestamp()
  {
    return MS;
  }
  
  public final PlayerLevelInfo getLevelInfo()
  {
    return MU;
  }
  
  public final String getPlayerId()
  {
    return MP;
  }
  
  public final long getRetrievedTimestamp()
  {
    return MQ;
  }
  
  public final String getTitle()
  {
    return HV;
  }
  
  public final void getTitle(CharArrayBuffer paramCharArrayBuffer)
  {
    il.b(HV, paramCharArrayBuffer);
  }
  
  public final int getVersionCode()
  {
    return xJ;
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
    return a(this);
  }
  
  public final boolean isDataValid()
  {
    return true;
  }
  
  public final String toString()
  {
    return b(this);
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    Object localObject2 = null;
    if (!fm())
    {
      PlayerEntityCreator.a(this, paramParcel, paramInt);
      return;
    }
    paramParcel.writeString(MP);
    paramParcel.writeString(Lk);
    if (Mo == null)
    {
      localObject1 = null;
      paramParcel.writeString((String)localObject1);
      if (Mp != null) {
        break label82;
      }
    }
    label82:
    for (Object localObject1 = localObject2;; localObject1 = Mp.toString())
    {
      paramParcel.writeString((String)localObject1);
      paramParcel.writeLong(MQ);
      return;
      localObject1 = Mo.toString();
      break;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.PlayerEntity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */