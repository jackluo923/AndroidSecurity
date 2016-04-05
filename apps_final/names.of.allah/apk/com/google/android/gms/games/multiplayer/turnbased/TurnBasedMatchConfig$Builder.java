package com.google.android.gms.games.multiplayer.turnbased;

import android.os.Bundle;
import com.google.android.gms.internal.hn;
import java.util.ArrayList;

public final class TurnBasedMatchConfig$Builder
{
  int SV = -1;
  Bundle Tl = null;
  ArrayList<String> To = new ArrayList();
  int Tw = 2;
  
  public final Builder addInvitedPlayer(String paramString)
  {
    hn.f(paramString);
    To.add(paramString);
    return this;
  }
  
  public final Builder addInvitedPlayers(ArrayList<String> paramArrayList)
  {
    hn.f(paramArrayList);
    To.addAll(paramArrayList);
    return this;
  }
  
  public final TurnBasedMatchConfig build()
  {
    return new TurnBasedMatchConfig(this, null);
  }
  
  public final Builder setAutoMatchCriteria(Bundle paramBundle)
  {
    Tl = paramBundle;
    return this;
  }
  
  public final Builder setVariant(int paramInt)
  {
    if ((paramInt == -1) || (paramInt > 0)) {}
    for (boolean bool = true;; bool = false)
    {
      hn.b(bool, "Variant must be a positive integer or TurnBasedMatch.MATCH_VARIANT_ANY");
      SV = paramInt;
      return this;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.multiplayer.turnbased.TurnBasedMatchConfig.Builder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */