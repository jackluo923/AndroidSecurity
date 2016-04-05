package com.google.android.gms.games.internal;

import android.os.Bundle;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.games.Notifications.InboxCountResult;

final class GamesClientImpl$InboxCountResultImpl
  implements Notifications.InboxCountResult
{
  private final Bundle NK;
  private final Status yw;
  
  GamesClientImpl$InboxCountResultImpl(Status paramStatus, Bundle paramBundle)
  {
    yw = paramStatus;
    NK = paramBundle;
  }
  
  public final Status getStatus()
  {
    return yw;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.internal.GamesClientImpl.InboxCountResultImpl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */