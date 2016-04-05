package com.google.android.gms.games.leaderboard;

import android.database.CharArrayBuffer;
import android.net.Uri;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.d;
import com.google.android.gms.games.Game;
import com.google.android.gms.games.GameRef;
import java.util.ArrayList;

public final class LeaderboardRef
  extends d
  implements Leaderboard
{
  private final int RD;
  private final Game Sp;
  
  LeaderboardRef(DataHolder paramDataHolder, int paramInt1, int paramInt2)
  {
    super(paramDataHolder, paramInt1);
    RD = paramInt2;
    Sp = new GameRef(paramDataHolder, paramInt1);
  }
  
  public final boolean equals(Object paramObject)
  {
    return LeaderboardEntity.a(this, paramObject);
  }
  
  public final String getDisplayName()
  {
    return getString("name");
  }
  
  public final void getDisplayName(CharArrayBuffer paramCharArrayBuffer)
  {
    a("name", paramCharArrayBuffer);
  }
  
  public final Game getGame()
  {
    return Sp;
  }
  
  public final Uri getIconImageUri()
  {
    return aw("board_icon_image_uri");
  }
  
  public final String getIconImageUrl()
  {
    return getString("board_icon_image_url");
  }
  
  public final String getLeaderboardId()
  {
    return getString("external_leaderboard_id");
  }
  
  public final int getScoreOrder()
  {
    return getInteger("score_order");
  }
  
  public final ArrayList<LeaderboardVariant> getVariants()
  {
    ArrayList localArrayList = new ArrayList(RD);
    int i = 0;
    while (i < RD)
    {
      localArrayList.add(new LeaderboardVariantRef(DD, Ez + i));
      i += 1;
    }
    return localArrayList;
  }
  
  public final int hashCode()
  {
    return LeaderboardEntity.a(this);
  }
  
  public final Leaderboard iu()
  {
    return new LeaderboardEntity(this);
  }
  
  public final String toString()
  {
    return LeaderboardEntity.b(this);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.leaderboard.LeaderboardRef
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */