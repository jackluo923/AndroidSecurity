package com.google.android.gms.drive;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.drive.events.ChangeEvent;
import com.google.android.gms.drive.events.DriveEvent.Listener;

public abstract interface DriveResource
{
  public abstract PendingResult<Status> addChangeListener(GoogleApiClient paramGoogleApiClient, DriveEvent.Listener<ChangeEvent> paramListener);
  
  public abstract DriveId getDriveId();
  
  public abstract PendingResult<DriveResource.MetadataResult> getMetadata(GoogleApiClient paramGoogleApiClient);
  
  public abstract PendingResult<DriveApi.MetadataBufferResult> listParents(GoogleApiClient paramGoogleApiClient);
  
  public abstract PendingResult<Status> removeChangeListener(GoogleApiClient paramGoogleApiClient, DriveEvent.Listener<ChangeEvent> paramListener);
  
  public abstract PendingResult<DriveResource.MetadataResult> updateMetadata(GoogleApiClient paramGoogleApiClient, MetadataChangeSet paramMetadataChangeSet);
}

/* Location:
 * Qualified Name:     com.google.android.gms.drive.DriveResource
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */