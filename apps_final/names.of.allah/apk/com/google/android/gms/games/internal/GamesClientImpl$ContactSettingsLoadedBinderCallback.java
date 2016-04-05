package com.google.android.gms.games.internal;

import com.google.android.gms.common.api.a.d;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.games.Notifications.ContactSettingLoadResult;
import com.google.android.gms.internal.hn;

final class GamesClientImpl$ContactSettingsLoadedBinderCallback
  extends AbstractGamesCallbacks
{
  private final a.d<Notifications.ContactSettingLoadResult> yO;
  
  GamesClientImpl$ContactSettingsLoadedBinderCallback(a.d<Notifications.ContactSettingLoadResult> paramd)
  {
    Object localObject;
    yO = ((a.d)hn.b(localObject, "Holder must not be null"));
  }
  
  public final void D(DataHolder paramDataHolder)
  {
    yO.a(new GamesClientImpl.ContactSettingLoadResultImpl(paramDataHolder));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.internal.GamesClientImpl.ContactSettingsLoadedBinderCallback
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */