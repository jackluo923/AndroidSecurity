package com.google.android.gms.games.internal;

import com.google.android.gms.common.api.b;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.games.snapshot.SnapshotMetadataBuffer;
import com.google.android.gms.games.snapshot.Snapshots.LoadSnapshotsResult;

final class GamesClientImpl$LoadSnapshotsResultImpl
  extends b
  implements Snapshots.LoadSnapshotsResult
{
  GamesClientImpl$LoadSnapshotsResultImpl(DataHolder paramDataHolder)
  {
    super(paramDataHolder);
  }
  
  public final SnapshotMetadataBuffer getSnapshots()
  {
    return new SnapshotMetadataBuffer(DD);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.internal.GamesClientImpl.LoadSnapshotsResultImpl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */