package com.google.android.gms.games.leaderboard;

import android.database.CharArrayBuffer;
import android.net.Uri;
import com.google.android.gms.common.data.Freezable;
import com.google.android.gms.games.Game;
import java.util.ArrayList;

public abstract interface Leaderboard
  extends Freezable<Leaderboard>
{
  public static final int SCORE_ORDER_LARGER_IS_BETTER = 1;
  public static final int SCORE_ORDER_SMALLER_IS_BETTER = 0;
  
  public abstract String getDisplayName();
  
  public abstract void getDisplayName(CharArrayBuffer paramCharArrayBuffer);
  
  public abstract Game getGame();
  
  public abstract Uri getIconImageUri();
  
  @Deprecated
  public abstract String getIconImageUrl();
  
  public abstract String getLeaderboardId();
  
  public abstract int getScoreOrder();
  
  public abstract ArrayList<LeaderboardVariant> getVariants();
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.leaderboard.Leaderboard
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */