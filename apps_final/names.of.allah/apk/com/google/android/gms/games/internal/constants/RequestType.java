package com.google.android.gms.games.internal.constants;

import com.google.android.gms.games.internal.GamesLog;

public final class RequestType
{
  public static String cm(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      GamesLog.k("RequestType", "Unknown request type: " + paramInt);
      return "UNKNOWN_TYPE";
    case 1: 
      return "GIFT";
    }
    return "WISH";
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.internal.constants.RequestType
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */