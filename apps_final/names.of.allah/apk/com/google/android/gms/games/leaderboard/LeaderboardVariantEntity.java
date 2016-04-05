package com.google.android.gms.games.leaderboard;

import com.google.android.gms.games.internal.constants.LeaderboardCollection;
import com.google.android.gms.games.internal.constants.TimeSpan;
import com.google.android.gms.internal.hl;
import com.google.android.gms.internal.hl.a;

public final class LeaderboardVariantEntity
  implements LeaderboardVariant
{
  private final int SE;
  private final int SF;
  private final boolean SG;
  private final long SH;
  private final String SI;
  private final long SJ;
  private final String SK;
  private final String SL;
  private final long SM;
  private final String SN;
  private final String SO;
  private final String SP;
  
  public LeaderboardVariantEntity(LeaderboardVariant paramLeaderboardVariant)
  {
    SE = paramLeaderboardVariant.getTimeSpan();
    SF = paramLeaderboardVariant.getCollection();
    SG = paramLeaderboardVariant.hasPlayerInfo();
    SH = paramLeaderboardVariant.getRawPlayerScore();
    SI = paramLeaderboardVariant.getDisplayPlayerScore();
    SJ = paramLeaderboardVariant.getPlayerRank();
    SK = paramLeaderboardVariant.getDisplayPlayerRank();
    SL = paramLeaderboardVariant.getPlayerScoreTag();
    SM = paramLeaderboardVariant.getNumScores();
    SN = paramLeaderboardVariant.iy();
    SO = paramLeaderboardVariant.iz();
    SP = paramLeaderboardVariant.iA();
  }
  
  static int a(LeaderboardVariant paramLeaderboardVariant)
  {
    return hl.hashCode(new Object[] { Integer.valueOf(paramLeaderboardVariant.getTimeSpan()), Integer.valueOf(paramLeaderboardVariant.getCollection()), Boolean.valueOf(paramLeaderboardVariant.hasPlayerInfo()), Long.valueOf(paramLeaderboardVariant.getRawPlayerScore()), paramLeaderboardVariant.getDisplayPlayerScore(), Long.valueOf(paramLeaderboardVariant.getPlayerRank()), paramLeaderboardVariant.getDisplayPlayerRank(), Long.valueOf(paramLeaderboardVariant.getNumScores()), paramLeaderboardVariant.iy(), paramLeaderboardVariant.iA(), paramLeaderboardVariant.iz() });
  }
  
  static boolean a(LeaderboardVariant paramLeaderboardVariant, Object paramObject)
  {
    if (!(paramObject instanceof LeaderboardVariant)) {}
    do
    {
      return false;
      if (paramLeaderboardVariant == paramObject) {
        return true;
      }
      paramObject = (LeaderboardVariant)paramObject;
    } while ((!hl.equal(Integer.valueOf(((LeaderboardVariant)paramObject).getTimeSpan()), Integer.valueOf(paramLeaderboardVariant.getTimeSpan()))) || (!hl.equal(Integer.valueOf(((LeaderboardVariant)paramObject).getCollection()), Integer.valueOf(paramLeaderboardVariant.getCollection()))) || (!hl.equal(Boolean.valueOf(((LeaderboardVariant)paramObject).hasPlayerInfo()), Boolean.valueOf(paramLeaderboardVariant.hasPlayerInfo()))) || (!hl.equal(Long.valueOf(((LeaderboardVariant)paramObject).getRawPlayerScore()), Long.valueOf(paramLeaderboardVariant.getRawPlayerScore()))) || (!hl.equal(((LeaderboardVariant)paramObject).getDisplayPlayerScore(), paramLeaderboardVariant.getDisplayPlayerScore())) || (!hl.equal(Long.valueOf(((LeaderboardVariant)paramObject).getPlayerRank()), Long.valueOf(paramLeaderboardVariant.getPlayerRank()))) || (!hl.equal(((LeaderboardVariant)paramObject).getDisplayPlayerRank(), paramLeaderboardVariant.getDisplayPlayerRank())) || (!hl.equal(Long.valueOf(((LeaderboardVariant)paramObject).getNumScores()), Long.valueOf(paramLeaderboardVariant.getNumScores()))) || (!hl.equal(((LeaderboardVariant)paramObject).iy(), paramLeaderboardVariant.iy())) || (!hl.equal(((LeaderboardVariant)paramObject).iA(), paramLeaderboardVariant.iA())) || (!hl.equal(((LeaderboardVariant)paramObject).iz(), paramLeaderboardVariant.iz())));
    return true;
  }
  
  static String b(LeaderboardVariant paramLeaderboardVariant)
  {
    hl.a locala = hl.e(paramLeaderboardVariant).a("TimeSpan", TimeSpan.cm(paramLeaderboardVariant.getTimeSpan())).a("Collection", LeaderboardCollection.cm(paramLeaderboardVariant.getCollection()));
    if (paramLeaderboardVariant.hasPlayerInfo())
    {
      localObject = Long.valueOf(paramLeaderboardVariant.getRawPlayerScore());
      locala = locala.a("RawPlayerScore", localObject);
      if (!paramLeaderboardVariant.hasPlayerInfo()) {
        break label191;
      }
      localObject = paramLeaderboardVariant.getDisplayPlayerScore();
      label76:
      locala = locala.a("DisplayPlayerScore", localObject);
      if (!paramLeaderboardVariant.hasPlayerInfo()) {
        break label197;
      }
      localObject = Long.valueOf(paramLeaderboardVariant.getPlayerRank());
      label103:
      locala = locala.a("PlayerRank", localObject);
      if (!paramLeaderboardVariant.hasPlayerInfo()) {
        break label203;
      }
    }
    label191:
    label197:
    label203:
    for (Object localObject = paramLeaderboardVariant.getDisplayPlayerRank();; localObject = "none")
    {
      return locala.a("DisplayPlayerRank", localObject).a("NumScores", Long.valueOf(paramLeaderboardVariant.getNumScores())).a("TopPageNextToken", paramLeaderboardVariant.iy()).a("WindowPageNextToken", paramLeaderboardVariant.iA()).a("WindowPagePrevToken", paramLeaderboardVariant.iz()).toString();
      localObject = "none";
      break;
      localObject = "none";
      break label76;
      localObject = "none";
      break label103;
    }
  }
  
  public final boolean equals(Object paramObject)
  {
    return a(this, paramObject);
  }
  
  public final int getCollection()
  {
    return SF;
  }
  
  public final String getDisplayPlayerRank()
  {
    return SK;
  }
  
  public final String getDisplayPlayerScore()
  {
    return SI;
  }
  
  public final long getNumScores()
  {
    return SM;
  }
  
  public final long getPlayerRank()
  {
    return SJ;
  }
  
  public final String getPlayerScoreTag()
  {
    return SL;
  }
  
  public final long getRawPlayerScore()
  {
    return SH;
  }
  
  public final int getTimeSpan()
  {
    return SE;
  }
  
  public final boolean hasPlayerInfo()
  {
    return SG;
  }
  
  public final int hashCode()
  {
    return a(this);
  }
  
  public final String iA()
  {
    return SP;
  }
  
  public final LeaderboardVariant iB()
  {
    return this;
  }
  
  public final boolean isDataValid()
  {
    return true;
  }
  
  public final String iy()
  {
    return SN;
  }
  
  public final String iz()
  {
    return SO;
  }
  
  public final String toString()
  {
    return b(this);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.leaderboard.LeaderboardVariantEntity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */