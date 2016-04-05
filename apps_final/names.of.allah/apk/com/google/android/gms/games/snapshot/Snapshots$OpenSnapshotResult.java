package com.google.android.gms.games.snapshot;

import com.google.android.gms.common.api.Result;
import com.google.android.gms.drive.Contents;

public abstract interface Snapshots$OpenSnapshotResult
  extends Result
{
  public abstract String getConflictId();
  
  public abstract Snapshot getConflictingSnapshot();
  
  public abstract Contents getResolutionContents();
  
  public abstract Snapshot getSnapshot();
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.snapshot.Snapshots.OpenSnapshotResult
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */