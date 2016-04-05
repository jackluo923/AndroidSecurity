package com.google.android.gms.games.internal.api;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.games.Games.BaseGamesApiMethodImpl;
import com.google.android.gms.games.snapshot.Snapshots.DeleteSnapshotResult;

abstract class SnapshotsImpl$DeleteImpl
  extends Games.BaseGamesApiMethodImpl<Snapshots.DeleteSnapshotResult>
{
  public Snapshots.DeleteSnapshotResult aa(Status paramStatus)
  {
    return new SnapshotsImpl.DeleteImpl.1(this, paramStatus);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.internal.api.SnapshotsImpl.DeleteImpl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */