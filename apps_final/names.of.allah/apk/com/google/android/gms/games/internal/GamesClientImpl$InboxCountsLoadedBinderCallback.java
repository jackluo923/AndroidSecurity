package com.google.android.gms.games.internal;

import android.os.Bundle;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.a.d;
import com.google.android.gms.games.Notifications.InboxCountResult;
import com.google.android.gms.internal.hn;

final class GamesClientImpl$InboxCountsLoadedBinderCallback
  extends AbstractGamesCallbacks
{
  private final a.d<Notifications.InboxCountResult> yO;
  
  GamesClientImpl$InboxCountsLoadedBinderCallback(a.d<Notifications.InboxCountResult> paramd)
  {
    Object localObject;
    yO = ((a.d)hn.b(localObject, "Holder must not be null"));
  }
  
  public final void f(int paramInt, Bundle paramBundle)
  {
    paramBundle.setClassLoader(getClass().getClassLoader());
    Status localStatus = new Status(paramInt);
    yO.a(new GamesClientImpl.InboxCountResultImpl(localStatus, paramBundle));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.internal.GamesClientImpl.InboxCountsLoadedBinderCallback
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */