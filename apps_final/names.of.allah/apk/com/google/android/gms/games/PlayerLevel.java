package com.google.android.gms.games;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.hl;
import com.google.android.gms.internal.hl.a;
import com.google.android.gms.internal.hn;

public final class PlayerLevel
  implements SafeParcelable
{
  public static final PlayerLevelCreator CREATOR = new PlayerLevelCreator();
  private final int MW;
  private final long MX;
  private final long MY;
  private final int xJ;
  
  PlayerLevel(int paramInt1, int paramInt2, long paramLong1, long paramLong2)
  {
    if (paramLong1 >= 0L)
    {
      bool1 = true;
      hn.a(bool1, "Min XP must be positive!");
      if (paramLong2 <= paramLong1) {
        break label69;
      }
    }
    label69:
    for (boolean bool1 = bool2;; bool1 = false)
    {
      hn.a(bool1, "Max XP must be more than min XP!");
      xJ = paramInt1;
      MW = paramInt2;
      MX = paramLong1;
      MY = paramLong2;
      return;
      bool1 = false;
      break;
    }
  }
  
  public PlayerLevel(int paramInt, long paramLong1, long paramLong2)
  {
    this(1, paramInt, paramLong1, paramLong2);
  }
  
  public final int describeContents()
  {
    return 0;
  }
  
  public final boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof PlayerLevel)) {}
    do
    {
      return false;
      if (this == paramObject) {
        return true;
      }
      paramObject = (PlayerLevel)paramObject;
    } while ((!hl.equal(Integer.valueOf(((PlayerLevel)paramObject).getLevelNumber()), Integer.valueOf(getLevelNumber()))) || (!hl.equal(Long.valueOf(((PlayerLevel)paramObject).getMinXp()), Long.valueOf(getMinXp()))) || (!hl.equal(Long.valueOf(((PlayerLevel)paramObject).getMaxXp()), Long.valueOf(getMaxXp()))));
    return true;
  }
  
  public final int getLevelNumber()
  {
    return MW;
  }
  
  public final long getMaxXp()
  {
    return MY;
  }
  
  public final long getMinXp()
  {
    return MX;
  }
  
  public final int getVersionCode()
  {
    return xJ;
  }
  
  public final int hashCode()
  {
    return hl.hashCode(new Object[] { Integer.valueOf(MW), Long.valueOf(MX), Long.valueOf(MY) });
  }
  
  public final String toString()
  {
    return hl.e(this).a("LevelNumber", Integer.valueOf(getLevelNumber())).a("MinXp", Long.valueOf(getMinXp())).a("MaxXp", Long.valueOf(getMaxXp())).toString();
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    PlayerLevelCreator.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.PlayerLevel
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */