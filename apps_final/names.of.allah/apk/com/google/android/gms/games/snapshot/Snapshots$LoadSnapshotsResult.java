package com.google.android.gms.games.snapshot;

import com.google.android.gms.common.api.Releasable;
import com.google.android.gms.common.api.Result;

public abstract interface Snapshots$LoadSnapshotsResult
  extends Releasable, Result
{
  public abstract SnapshotMetadataBuffer getSnapshots();
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.snapshot.Snapshots.LoadSnapshotsResult
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */