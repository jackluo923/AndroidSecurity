package com.google.android.gms.games.internal.api;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.games.Games.BaseGamesApiMethodImpl;
import com.google.android.gms.games.snapshot.Snapshots.LoadSnapshotsResult;

abstract class SnapshotsImpl$LoadImpl
  extends Games.BaseGamesApiMethodImpl<Snapshots.LoadSnapshotsResult>
{
  public Snapshots.LoadSnapshotsResult ab(Status paramStatus)
  {
    return new SnapshotsImpl.LoadImpl.1(this, paramStatus);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.internal.api.SnapshotsImpl.LoadImpl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */