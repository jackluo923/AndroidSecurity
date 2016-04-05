package com.google.android.gms.games.internal;

import com.google.android.gms.common.api.a.d;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.drive.Contents;
import com.google.android.gms.games.snapshot.Snapshots.OpenSnapshotResult;
import com.google.android.gms.internal.hn;

final class GamesClientImpl$SnapshotOpenedBinderCallbacks
  extends AbstractGamesCallbacks
{
  private final a.d<Snapshots.OpenSnapshotResult> OH;
  
  public GamesClientImpl$SnapshotOpenedBinderCallbacks(a.d<Snapshots.OpenSnapshotResult> paramd)
  {
    Object localObject;
    OH = ((a.d)hn.b(localObject, "Holder must not be null"));
  }
  
  public final void a(DataHolder paramDataHolder, Contents paramContents)
  {
    OH.a(new GamesClientImpl.OpenSnapshotResultImpl(paramDataHolder, paramContents));
  }
  
  public final void a(DataHolder paramDataHolder, String paramString, Contents paramContents1, Contents paramContents2, Contents paramContents3)
  {
    OH.a(new GamesClientImpl.OpenSnapshotResultImpl(paramDataHolder, paramString, paramContents1, paramContents2, paramContents3));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.internal.GamesClientImpl.SnapshotOpenedBinderCallbacks
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */