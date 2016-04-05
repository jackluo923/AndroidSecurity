package com.google.android.gms.games.internal;

import com.google.android.gms.common.api.a.d;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.games.snapshot.Snapshots.LoadSnapshotsResult;
import com.google.android.gms.internal.hn;

final class GamesClientImpl$SnapshotsLoadedBinderCallbacks
  extends AbstractGamesCallbacks
{
  private final a.d<Snapshots.LoadSnapshotsResult> OI;
  
  public GamesClientImpl$SnapshotsLoadedBinderCallbacks(a.d<Snapshots.LoadSnapshotsResult> paramd)
  {
    Object localObject;
    OI = ((a.d)hn.b(localObject, "Holder must not be null"));
  }
  
  public final void I(DataHolder paramDataHolder)
  {
    OI.a(new GamesClientImpl.LoadSnapshotsResultImpl(paramDataHolder));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.internal.GamesClientImpl.SnapshotsLoadedBinderCallbacks
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */