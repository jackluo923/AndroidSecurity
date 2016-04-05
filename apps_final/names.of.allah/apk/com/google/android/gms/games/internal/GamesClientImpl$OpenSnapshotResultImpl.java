package com.google.android.gms.games.internal;

import com.google.android.gms.common.api.b;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.drive.Contents;
import com.google.android.gms.games.snapshot.Snapshot;
import com.google.android.gms.games.snapshot.SnapshotEntity;
import com.google.android.gms.games.snapshot.SnapshotMetadataBuffer;
import com.google.android.gms.games.snapshot.SnapshotMetadataEntity;
import com.google.android.gms.games.snapshot.Snapshots.OpenSnapshotResult;
import com.google.android.gms.internal.gy;

final class GamesClientImpl$OpenSnapshotResultImpl
  extends b
  implements Snapshots.OpenSnapshotResult
{
  private final Snapshot Oj;
  private final String Ok;
  private final Snapshot Ol;
  private final Contents Om;
  
  GamesClientImpl$OpenSnapshotResultImpl(DataHolder paramDataHolder, Contents paramContents)
  {
    this(paramDataHolder, null, paramContents, null, null);
  }
  
  GamesClientImpl$OpenSnapshotResultImpl(DataHolder paramDataHolder, String paramString, Contents paramContents1, Contents paramContents2, Contents paramContents3)
  {
    super(paramDataHolder);
    SnapshotMetadataBuffer localSnapshotMetadataBuffer = new SnapshotMetadataBuffer(paramDataHolder);
    for (;;)
    {
      try
      {
        if (localSnapshotMetadataBuffer.getCount() == 0)
        {
          Oj = null;
          Ol = null;
          localSnapshotMetadataBuffer.close();
          Ok = paramString;
          Om = paramContents3;
          return;
        }
        if (localSnapshotMetadataBuffer.getCount() != 1) {
          break label124;
        }
        if (paramDataHolder.getStatusCode() != 4004)
        {
          gy.A(bool);
          Oj = new SnapshotEntity(new SnapshotMetadataEntity(localSnapshotMetadataBuffer.get(0)), paramContents1);
          Ol = null;
          continue;
        }
        bool = false;
      }
      finally
      {
        localSnapshotMetadataBuffer.close();
      }
      continue;
      label124:
      Oj = new SnapshotEntity(new SnapshotMetadataEntity(localSnapshotMetadataBuffer.get(0)), paramContents1);
      Ol = new SnapshotEntity(new SnapshotMetadataEntity(localSnapshotMetadataBuffer.get(1)), paramContents2);
    }
  }
  
  public final String getConflictId()
  {
    return Ok;
  }
  
  public final Snapshot getConflictingSnapshot()
  {
    return Ol;
  }
  
  public final Contents getResolutionContents()
  {
    return Om;
  }
  
  public final Snapshot getSnapshot()
  {
    return Oj;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.internal.GamesClientImpl.OpenSnapshotResultImpl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */