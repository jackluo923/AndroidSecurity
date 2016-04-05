package com.google.android.gms.games.internal;

import com.google.android.gms.common.api.a.d;
import com.google.android.gms.games.snapshot.Snapshots.DeleteSnapshotResult;
import com.google.android.gms.internal.hn;

final class GamesClientImpl$SnapshotDeletedBinderCallbacks
  extends AbstractGamesCallbacks
{
  private final a.d<Snapshots.DeleteSnapshotResult> yO;
  
  public GamesClientImpl$SnapshotDeletedBinderCallbacks(a.d<Snapshots.DeleteSnapshotResult> paramd)
  {
    Object localObject;
    yO = ((a.d)hn.b(localObject, "Holder must not be null"));
  }
  
  public final void g(int paramInt, String paramString)
  {
    yO.a(new GamesClientImpl.DeleteSnapshotResultImpl(paramInt, paramString));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.internal.GamesClientImpl.SnapshotDeletedBinderCallbacks
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */