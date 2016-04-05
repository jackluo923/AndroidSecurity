package com.google.android.gms.games;

import com.google.android.gms.common.api.Api.ApiOptions.Optional;

public final class Games$GamesOptions
  implements Api.ApiOptions.Optional
{
  final boolean MJ;
  final boolean MK;
  final int ML;
  final boolean MM;
  final int MN;
  final String MO;
  
  private Games$GamesOptions()
  {
    MJ = false;
    MK = true;
    ML = 17;
    MM = false;
    MN = 4368;
    MO = null;
  }
  
  private Games$GamesOptions(Games.GamesOptions.Builder paramBuilder)
  {
    MJ = MJ;
    MK = MK;
    ML = ML;
    MM = MM;
    MN = MN;
    MO = MO;
  }
  
  public static Games.GamesOptions.Builder builder()
  {
    return new Games.GamesOptions.Builder(null);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.Games.GamesOptions
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */