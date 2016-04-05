package com.google.android.gms.games.leaderboard;

import android.database.CharArrayBuffer;
import android.net.Uri;
import com.google.android.gms.games.Game;
import com.google.android.gms.games.GameEntity;
import com.google.android.gms.internal.hl;
import com.google.android.gms.internal.hl.a;
import com.google.android.gms.internal.il;
import java.util.ArrayList;

public final class LeaderboardEntity
  implements Leaderboard
{
  private final String Lk;
  private final Uri Mo;
  private final String Mz;
  private final String Sm;
  private final int Sn;
  private final ArrayList<LeaderboardVariantEntity> So;
  private final Game Sp;
  
  public LeaderboardEntity(Leaderboard paramLeaderboard)
  {
    Sm = paramLeaderboard.getLeaderboardId();
    Lk = paramLeaderboard.getDisplayName();
    Mo = paramLeaderboard.getIconImageUri();
    Mz = paramLeaderboard.getIconImageUrl();
    Sn = paramLeaderboard.getScoreOrder();
    Object localObject = paramLeaderboard.getGame();
    if (localObject == null) {}
    for (localObject = null;; localObject = new GameEntity((Game)localObject))
    {
      Sp = ((Game)localObject);
      paramLeaderboard = paramLeaderboard.getVariants();
      int j = paramLeaderboard.size();
      So = new ArrayList(j);
      int i = 0;
      while (i < j)
      {
        So.add((LeaderboardVariantEntity)((LeaderboardVariant)paramLeaderboard.get(i)).freeze());
        i += 1;
      }
    }
  }
  
  static int a(Leaderboard paramLeaderboard)
  {
    return hl.hashCode(new Object[] { paramLeaderboard.getLeaderboardId(), paramLeaderboard.getDisplayName(), paramLeaderboard.getIconImageUri(), Integer.valueOf(paramLeaderboard.getScoreOrder()), paramLeaderboard.getVariants() });
  }
  
  static boolean a(Leaderboard paramLeaderboard, Object paramObject)
  {
    if (!(paramObject instanceof Leaderboard)) {}
    do
    {
      return false;
      if (paramLeaderboard == paramObject) {
        return true;
      }
      paramObject = (Leaderboard)paramObject;
    } while ((!hl.equal(((Leaderboard)paramObject).getLeaderboardId(), paramLeaderboard.getLeaderboardId())) || (!hl.equal(((Leaderboard)paramObject).getDisplayName(), paramLeaderboard.getDisplayName())) || (!hl.equal(((Leaderboard)paramObject).getIconImageUri(), paramLeaderboard.getIconImageUri())) || (!hl.equal(Integer.valueOf(((Leaderboard)paramObject).getScoreOrder()), Integer.valueOf(paramLeaderboard.getScoreOrder()))) || (!hl.equal(((Leaderboard)paramObject).getVariants(), paramLeaderboard.getVariants())));
    return true;
  }
  
  static String b(Leaderboard paramLeaderboard)
  {
    return hl.e(paramLeaderboard).a("LeaderboardId", paramLeaderboard.getLeaderboardId()).a("DisplayName", paramLeaderboard.getDisplayName()).a("IconImageUri", paramLeaderboard.getIconImageUri()).a("IconImageUrl", paramLeaderboard.getIconImageUrl()).a("ScoreOrder", Integer.valueOf(paramLeaderboard.getScoreOrder())).a("Variants", paramLeaderboard.getVariants()).toString();
  }
  
  public final boolean equals(Object paramObject)
  {
    return a(this, paramObject);
  }
  
  public final String getDisplayName()
  {
    return Lk;
  }
  
  public final void getDisplayName(CharArrayBuffer paramCharArrayBuffer)
  {
    il.b(Lk, paramCharArrayBuffer);
  }
  
  public final Game getGame()
  {
    return Sp;
  }
  
  public final Uri getIconImageUri()
  {
    return Mo;
  }
  
  public final String getIconImageUrl()
  {
    return Mz;
  }
  
  public final String getLeaderboardId()
  {
    return Sm;
  }
  
  public final int getScoreOrder()
  {
    return Sn;
  }
  
  public final ArrayList<LeaderboardVariant> getVariants()
  {
    return new ArrayList(So);
  }
  
  public final int hashCode()
  {
    return a(this);
  }
  
  public final boolean isDataValid()
  {
    return true;
  }
  
  public final Leaderboard iu()
  {
    return this;
  }
  
  public final String toString()
  {
    return b(this);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.leaderboard.LeaderboardEntity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */