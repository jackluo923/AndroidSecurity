package com.google.android.gms.games.internal.api;

import android.content.Intent;
import android.os.Bundle;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.drive.Contents;
import com.google.android.gms.games.Games;
import com.google.android.gms.games.internal.GamesClientImpl;
import com.google.android.gms.games.snapshot.Snapshot;
import com.google.android.gms.games.snapshot.SnapshotMetadata;
import com.google.android.gms.games.snapshot.SnapshotMetadataChange;
import com.google.android.gms.games.snapshot.SnapshotMetadataChange.Builder;
import com.google.android.gms.games.snapshot.Snapshots;
import com.google.android.gms.games.snapshot.Snapshots.CommitSnapshotResult;
import com.google.android.gms.games.snapshot.Snapshots.DeleteSnapshotResult;
import com.google.android.gms.games.snapshot.Snapshots.LoadSnapshotsResult;
import com.google.android.gms.games.snapshot.Snapshots.OpenSnapshotResult;

public final class SnapshotsImpl
  implements Snapshots
{
  public final PendingResult<Snapshots.CommitSnapshotResult> commitAndClose(GoogleApiClient paramGoogleApiClient, Snapshot paramSnapshot, SnapshotMetadataChange paramSnapshotMetadataChange)
  {
    return paramGoogleApiClient.b(new SnapshotsImpl.3(this, paramSnapshot, paramSnapshotMetadataChange));
  }
  
  public final PendingResult<Snapshots.DeleteSnapshotResult> delete(GoogleApiClient paramGoogleApiClient, SnapshotMetadata paramSnapshotMetadata)
  {
    return paramGoogleApiClient.b(new SnapshotsImpl.4(this, paramSnapshotMetadata));
  }
  
  public final void discardAndClose(GoogleApiClient paramGoogleApiClient, Snapshot paramSnapshot)
  {
    Games.c(paramGoogleApiClient).a(paramSnapshot);
  }
  
  public final int getMaxCoverImageSize(GoogleApiClient paramGoogleApiClient)
  {
    return Games.c(paramGoogleApiClient).hp();
  }
  
  public final int getMaxDataSize(GoogleApiClient paramGoogleApiClient)
  {
    return Games.c(paramGoogleApiClient).ho();
  }
  
  public final Intent getSelectSnapshotIntent(GoogleApiClient paramGoogleApiClient, String paramString, boolean paramBoolean1, boolean paramBoolean2, int paramInt)
  {
    return Games.c(paramGoogleApiClient).a(paramString, paramBoolean1, paramBoolean2, paramInt);
  }
  
  public final SnapshotMetadata getSnapshotFromBundle(Bundle paramBundle)
  {
    if ((paramBundle == null) || (!paramBundle.containsKey("com.google.android.gms.games.SNAPSHOT_METADATA"))) {
      return null;
    }
    return (SnapshotMetadata)paramBundle.getParcelable("com.google.android.gms.games.SNAPSHOT_METADATA");
  }
  
  public final PendingResult<Snapshots.LoadSnapshotsResult> load(GoogleApiClient paramGoogleApiClient, boolean paramBoolean)
  {
    return paramGoogleApiClient.a(new SnapshotsImpl.1(this, paramBoolean));
  }
  
  public final PendingResult<Snapshots.OpenSnapshotResult> open(GoogleApiClient paramGoogleApiClient, SnapshotMetadata paramSnapshotMetadata)
  {
    return open(paramGoogleApiClient, paramSnapshotMetadata.getUniqueName(), false);
  }
  
  public final PendingResult<Snapshots.OpenSnapshotResult> open(GoogleApiClient paramGoogleApiClient, String paramString, boolean paramBoolean)
  {
    return paramGoogleApiClient.b(new SnapshotsImpl.2(this, paramString, paramBoolean));
  }
  
  public final PendingResult<Snapshots.OpenSnapshotResult> resolveConflict(GoogleApiClient paramGoogleApiClient, String paramString, Snapshot paramSnapshot)
  {
    SnapshotMetadata localSnapshotMetadata = paramSnapshot.getMetadata();
    SnapshotMetadataChange localSnapshotMetadataChange = new SnapshotMetadataChange.Builder().fromMetadata(localSnapshotMetadata).build();
    return resolveConflict(paramGoogleApiClient, paramString, localSnapshotMetadata.getSnapshotId(), localSnapshotMetadataChange, paramSnapshot.getContents());
  }
  
  public final PendingResult<Snapshots.OpenSnapshotResult> resolveConflict(GoogleApiClient paramGoogleApiClient, String paramString1, String paramString2, SnapshotMetadataChange paramSnapshotMetadataChange, Contents paramContents)
  {
    return paramGoogleApiClient.b(new SnapshotsImpl.5(this, paramString1, paramString2, paramSnapshotMetadataChange, paramContents));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.games.internal.api.SnapshotsImpl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */