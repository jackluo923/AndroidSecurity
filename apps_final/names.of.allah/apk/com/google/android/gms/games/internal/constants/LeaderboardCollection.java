package com.google.android.gms.games.internal.constants;

public final class LeaderboardCollection
{
  public static String cm(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      throw new IllegalArgumentException("Unknown leaderboard collection: " + paramInt);
    case 0: 
      return "PUBLIC";
    }
    return "SOCIAL";
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.internal.constants.LeaderboardCollection
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */