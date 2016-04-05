package com.google.android.gms.games.internal.constants;

import com.google.android.gms.games.internal.GamesLog;

public final class TurnBasedMatchTurnStatus
{
  public static String cm(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      GamesLog.k("MatchTurnStatus", "Unknown match turn status: " + paramInt);
      return "TURN_STATUS_UNKNOWN";
    case 0: 
      return "TURN_STATUS_INVITED";
    case 1: 
      return "TURN_STATUS_MY_TURN";
    case 2: 
      return "TURN_STATUS_THEIR_TURN";
    }
    return "TURN_STATUS_COMPLETE";
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.internal.constants.TurnBasedMatchTurnStatus
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */