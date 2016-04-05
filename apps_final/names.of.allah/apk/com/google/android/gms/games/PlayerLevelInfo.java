package com.google.android.gms.games;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.hl;
import com.google.android.gms.internal.hn;

public final class PlayerLevelInfo
  implements SafeParcelable
{
  public static final PlayerLevelInfoCreator CREATOR = new PlayerLevelInfoCreator();
  private final long MZ;
  private final long Na;
  private final PlayerLevel Nb;
  private final PlayerLevel Nc;
  private final int xJ;
  
  PlayerLevelInfo(int paramInt, long paramLong1, long paramLong2, PlayerLevel paramPlayerLevel1, PlayerLevel paramPlayerLevel2)
  {
    if (paramLong1 != -1L) {}
    for (boolean bool = true;; bool = false)
    {
      hn.A(bool);
      hn.f(paramPlayerLevel1);
      hn.f(paramPlayerLevel2);
      xJ = paramInt;
      MZ = paramLong1;
      Na = paramLong2;
      Nb = paramPlayerLevel1;
      Nc = paramPlayerLevel2;
      return;
    }
  }
  
  public PlayerLevelInfo(long paramLong1, long paramLong2, PlayerLevel paramPlayerLevel1, PlayerLevel paramPlayerLevel2)
  {
    this(1, paramLong1, paramLong2, paramPlayerLevel1, paramPlayerLevel2);
  }
  
  public final int describeContents()
  {
    return 0;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof PlayerLevelInfo)) {}
    do
    {
      return false;
      if (paramObject == this) {
        return true;
      }
      paramObject = (PlayerLevelInfo)paramObject;
    } while ((!hl.equal(Long.valueOf(MZ), Long.valueOf(MZ))) || (!hl.equal(Long.valueOf(Na), Long.valueOf(Na))) || (!hl.equal(Nb, Nb)) || (!hl.equal(Nc, Nc)));
    return true;
  }
  
  public final PlayerLevel getCurrentLevel()
  {
    return Nb;
  }
  
  public final long getCurrentXpTotal()
  {
    return MZ;
  }
  
  public final long getLastLevelUpTimestamp()
  {
    return Na;
  }
  
  public final PlayerLevel getNextLevel()
  {
    return Nc;
  }
  
  public final int getVersionCode()
  {
    return xJ;
  }
  
  public final int hashCode()
  {
    return hl.hashCode(new Object[] { Long.valueOf(MZ), Long.valueOf(Na), Nb, Nc });
  }
  
  public final boolean isMaxLevel()
  {
    return Nb.equals(Nc);
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    PlayerLevelInfoCreator.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.PlayerLevelInfo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */