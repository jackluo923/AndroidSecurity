package com.google.android.gms.games.internal;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.games.snapshot.Snapshots.DeleteSnapshotResult;

final class GamesClientImpl$DeleteSnapshotResultImpl
  implements Snapshots.DeleteSnapshotResult
{
  private final String NH;
  private final Status yw;
  
  GamesClientImpl$DeleteSnapshotResultImpl(int paramInt, String paramString)
  {
    yw = new Status(paramInt);
    NH = paramString;
  }
  
  public final String getSnapshotId()
  {
    return NH;
  }
  
  public final Status getStatus()
  {
    return yw;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.internal.GamesClientImpl.DeleteSnapshotResultImpl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */