package com.google.android.gms.games.multiplayer.turnbased;

import android.os.Bundle;
import java.util.ArrayList;

public final class TurnBasedMatchConfig
{
  private final int SV;
  private final String[] Tk;
  private final Bundle Tl;
  private final int Tw;
  
  private TurnBasedMatchConfig(TurnBasedMatchConfig.Builder paramBuilder)
  {
    SV = SV;
    Tw = Tw;
    Tl = Tl;
    int i = To.size();
    Tk = ((String[])To.toArray(new String[i]));
  }
  
  public static TurnBasedMatchConfig.Builder builder()
  {
    return new TurnBasedMatchConfig.Builder(null);
  }
  
  public static Bundle createAutoMatchCriteria(int paramInt1, int paramInt2, long paramLong)
  {
    Bundle localBundle = new Bundle();
    localBundle.putInt("min_automatch_players", paramInt1);
    localBundle.putInt("max_automatch_players", paramInt2);
    localBundle.putLong("exclusive_bit_mask", paramLong);
    return localBundle;
  }
  
  public final Bundle getAutoMatchCriteria()
  {
    return Tl;
  }
  
  public final String[] getInvitedPlayerIds()
  {
    return Tk;
  }
  
  public final int getVariant()
  {
    return SV;
  }
  
  public final int iC()
  {
    return Tw;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.multiplayer.turnbased.TurnBasedMatchConfig
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */