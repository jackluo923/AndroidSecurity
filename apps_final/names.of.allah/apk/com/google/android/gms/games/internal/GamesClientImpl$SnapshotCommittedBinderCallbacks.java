package com.google.android.gms.games.internal;

import com.google.android.gms.common.api.a.d;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.games.snapshot.Snapshots.CommitSnapshotResult;
import com.google.android.gms.internal.hn;

final class GamesClientImpl$SnapshotCommittedBinderCallbacks
  extends AbstractGamesCallbacks
{
  private final a.d<Snapshots.CommitSnapshotResult> OG;
  
  public GamesClientImpl$SnapshotCommittedBinderCallbacks(a.d<Snapshots.CommitSnapshotResult> paramd)
  {
    Object localObject;
    OG = ((a.d)hn.b(localObject, "Holder must not be null"));
  }
  
  public final void J(DataHolder paramDataHolder)
  {
    OG.a(new GamesClientImpl.CommitSnapshotResultImpl(paramDataHolder));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.internal.GamesClientImpl.SnapshotCommittedBinderCallbacks
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */