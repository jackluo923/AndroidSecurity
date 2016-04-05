package com.google.android.gms.games.internal.game;

import android.os.Parcel;
import com.google.android.gms.games.Game;
import com.google.android.gms.games.GameEntity;
import com.google.android.gms.games.internal.GamesDowngradeableSafeParcel;
import com.google.android.gms.games.snapshot.SnapshotMetadata;
import com.google.android.gms.games.snapshot.SnapshotMetadataEntity;
import com.google.android.gms.internal.hl;
import com.google.android.gms.internal.hl.a;
import java.util.ArrayList;

public final class ExtendedGameEntity
  extends GamesDowngradeableSafeParcel
  implements ExtendedGame
{
  public static final ExtendedGameEntityCreator CREATOR = new ExtendedGameEntity.ExtendedGameEntityCreatorCompat();
  private final SnapshotMetadataEntity RA;
  private final GameEntity Rq;
  private final int Rr;
  private final boolean Rs;
  private final int Rt;
  private final long Ru;
  private final long Rv;
  private final String Rw;
  private final long Rx;
  private final String Ry;
  private final ArrayList<GameBadgeEntity> Rz;
  private final int xJ;
  
  ExtendedGameEntity(int paramInt1, GameEntity paramGameEntity, int paramInt2, boolean paramBoolean, int paramInt3, long paramLong1, long paramLong2, String paramString1, long paramLong3, String paramString2, ArrayList<GameBadgeEntity> paramArrayList, SnapshotMetadataEntity paramSnapshotMetadataEntity)
  {
    xJ = paramInt1;
    Rq = paramGameEntity;
    Rr = paramInt2;
    Rs = paramBoolean;
    Rt = paramInt3;
    Ru = paramLong1;
    Rv = paramLong2;
    Rw = paramString1;
    Rx = paramLong3;
    Ry = paramString2;
    Rz = paramArrayList;
    RA = paramSnapshotMetadataEntity;
  }
  
  public ExtendedGameEntity(ExtendedGame paramExtendedGame)
  {
    xJ = 2;
    Object localObject1 = paramExtendedGame.getGame();
    if (localObject1 == null)
    {
      localObject1 = null;
      Rq = ((GameEntity)localObject1);
      Rr = paramExtendedGame.hM();
      Rs = paramExtendedGame.hN();
      Rt = paramExtendedGame.hO();
      Ru = paramExtendedGame.hP();
      Rv = paramExtendedGame.hQ();
      Rw = paramExtendedGame.hR();
      Rx = paramExtendedGame.hS();
      Ry = paramExtendedGame.hT();
      localObject1 = paramExtendedGame.hU();
      if (localObject1 != null) {
        break label209;
      }
    }
    label209:
    for (localObject1 = localObject2;; localObject1 = new SnapshotMetadataEntity((SnapshotMetadata)localObject1))
    {
      RA = ((SnapshotMetadataEntity)localObject1);
      paramExtendedGame = paramExtendedGame.hL();
      int j = paramExtendedGame.size();
      Rz = new ArrayList(j);
      int i = 0;
      while (i < j)
      {
        Rz.add((GameBadgeEntity)((GameBadge)paramExtendedGame.get(i)).freeze());
        i += 1;
      }
      localObject1 = new GameEntity((Game)localObject1);
      break;
    }
  }
  
  static int a(ExtendedGame paramExtendedGame)
  {
    return hl.hashCode(new Object[] { paramExtendedGame.getGame(), Integer.valueOf(paramExtendedGame.hM()), Boolean.valueOf(paramExtendedGame.hN()), Integer.valueOf(paramExtendedGame.hO()), Long.valueOf(paramExtendedGame.hP()), Long.valueOf(paramExtendedGame.hQ()), paramExtendedGame.hR(), Long.valueOf(paramExtendedGame.hS()), paramExtendedGame.hT() });
  }
  
  static boolean a(ExtendedGame paramExtendedGame, Object paramObject)
  {
    if (!(paramObject instanceof ExtendedGame)) {}
    do
    {
      return false;
      if (paramExtendedGame == paramObject) {
        return true;
      }
      paramObject = (ExtendedGame)paramObject;
    } while ((!hl.equal(((ExtendedGame)paramObject).getGame(), paramExtendedGame.getGame())) || (!hl.equal(Integer.valueOf(((ExtendedGame)paramObject).hM()), Integer.valueOf(paramExtendedGame.hM()))) || (!hl.equal(Boolean.valueOf(((ExtendedGame)paramObject).hN()), Boolean.valueOf(paramExtendedGame.hN()))) || (!hl.equal(Integer.valueOf(((ExtendedGame)paramObject).hO()), Integer.valueOf(paramExtendedGame.hO()))) || (!hl.equal(Long.valueOf(((ExtendedGame)paramObject).hP()), Long.valueOf(paramExtendedGame.hP()))) || (!hl.equal(Long.valueOf(((ExtendedGame)paramObject).hQ()), Long.valueOf(paramExtendedGame.hQ()))) || (!hl.equal(((ExtendedGame)paramObject).hR(), paramExtendedGame.hR())) || (!hl.equal(Long.valueOf(((ExtendedGame)paramObject).hS()), Long.valueOf(paramExtendedGame.hS()))) || (!hl.equal(((ExtendedGame)paramObject).hT(), paramExtendedGame.hT())));
    return true;
  }
  
  static String b(ExtendedGame paramExtendedGame)
  {
    return hl.e(paramExtendedGame).a("Game", paramExtendedGame.getGame()).a("Availability", Integer.valueOf(paramExtendedGame.hM())).a("Owned", Boolean.valueOf(paramExtendedGame.hN())).a("AchievementUnlockedCount", Integer.valueOf(paramExtendedGame.hO())).a("LastPlayedServerTimestamp", Long.valueOf(paramExtendedGame.hP())).a("PriceMicros", Long.valueOf(paramExtendedGame.hQ())).a("FormattedPrice", paramExtendedGame.hR()).a("FullPriceMicros", Long.valueOf(paramExtendedGame.hS())).a("FormattedFullPrice", paramExtendedGame.hT()).a("Snapshot", paramExtendedGame.hU()).toString();
  }
  
  public final int describeContents()
  {
    return 0;
  }
  
  public final boolean equals(Object paramObject)
  {
    return a(this, paramObject);
  }
  
  public final int getVersionCode()
  {
    return xJ;
  }
  
  public final ArrayList<GameBadge> hL()
  {
    return new ArrayList(Rz);
  }
  
  public final int hM()
  {
    return Rr;
  }
  
  public final boolean hN()
  {
    return Rs;
  }
  
  public final int hO()
  {
    return Rt;
  }
  
  public final long hP()
  {
    return Ru;
  }
  
  public final long hQ()
  {
    return Rv;
  }
  
  public final String hR()
  {
    return Rw;
  }
  
  public final long hS()
  {
    return Rx;
  }
  
  public final String hT()
  {
    return Ry;
  }
  
  public final SnapshotMetadata hU()
  {
    return RA;
  }
  
  public final GameEntity hV()
  {
    return Rq;
  }
  
  public final ExtendedGame hW()
  {
    return this;
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
    int j = 0;
    if (!fm())
    {
      ExtendedGameEntityCreator.a(this, paramParcel, paramInt);
      return;
    }
    Rq.writeToParcel(paramParcel, paramInt);
    paramParcel.writeInt(Rr);
    if (Rs) {}
    for (int i = 1;; i = 0)
    {
      paramParcel.writeInt(i);
      paramParcel.writeInt(Rt);
      paramParcel.writeLong(Ru);
      paramParcel.writeLong(Rv);
      paramParcel.writeString(Rw);
      paramParcel.writeLong(Rx);
      paramParcel.writeString(Ry);
      int k = Rz.size();
      paramParcel.writeInt(k);
      i = j;
      while (i < k)
      {
        ((GameBadgeEntity)Rz.get(i)).writeToParcel(paramParcel, paramInt);
        i += 1;
      }
      break;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.internal.game.ExtendedGameEntity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */