package com.google.android.gms.games.internal.api;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.games.snapshot.SnapshotMetadataBuffer;
import com.google.android.gms.games.snapshot.Snapshots.LoadSnapshotsResult;

class SnapshotsImpl$LoadImpl$1
  implements Snapshots.LoadSnapshotsResult
{
  SnapshotsImpl$LoadImpl$1(SnapshotsImpl.LoadImpl paramLoadImpl, Status paramStatus) {}
  
  public SnapshotMetadataBuffer getSnapshots()
  {
    return new SnapshotMetadataBuffer(DataHolder.af(14));
  }
  
  public Status getStatus()
  {
    return yG;
  }
  
  public void release() {}
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.internal.api.SnapshotsImpl.LoadImpl.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */