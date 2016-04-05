package com.google.android.gms.games.internal;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.games.Notifications.GameMuteStatusChangeResult;

final class GamesClientImpl$GameMuteStatusChangeResultImpl
  implements Notifications.GameMuteStatusChangeResult
{
  private final String NI;
  private final boolean NJ;
  private final Status yw;
  
  public GamesClientImpl$GameMuteStatusChangeResultImpl(int paramInt, String paramString, boolean paramBoolean)
  {
    yw = new Status(paramInt);
    NI = paramString;
    NJ = paramBoolean;
  }
  
  public final Status getStatus()
  {
    return yw;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.internal.GamesClientImpl.GameMuteStatusChangeResultImpl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */