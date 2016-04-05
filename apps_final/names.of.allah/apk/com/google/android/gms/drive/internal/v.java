package com.google.android.gms.drive.internal;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.drive.Drive;
import com.google.android.gms.drive.DriveApi.MetadataBufferResult;
import com.google.android.gms.drive.DriveId;
import com.google.android.gms.drive.DriveResource;
import com.google.android.gms.drive.DriveResource.MetadataResult;
import com.google.android.gms.drive.MetadataChangeSet;
import com.google.android.gms.drive.events.ChangeEvent;
import com.google.android.gms.drive.events.DriveEvent.Listener;

public class v
  implements DriveResource
{
  protected final DriveId Hw;
  
  protected v(DriveId paramDriveId)
  {
    Hw = paramDriveId;
  }
  
  public PendingResult<Status> addChangeListener(GoogleApiClient paramGoogleApiClient, DriveEvent.Listener<ChangeEvent> paramListener)
  {
    return ((r)paramGoogleApiClient.a(Drive.yE)).a(paramGoogleApiClient, Hw, 1, paramListener);
  }
  
  public DriveId getDriveId()
  {
    return Hw;
  }
  
  public PendingResult<DriveResource.MetadataResult> getMetadata(GoogleApiClient paramGoogleApiClient)
  {
    return paramGoogleApiClient.a(new v.1(this));
  }
  
  public PendingResult<DriveApi.MetadataBufferResult> listParents(GoogleApiClient paramGoogleApiClient)
  {
    return paramGoogleApiClient.a(new v.2(this));
  }
  
  public PendingResult<Status> removeChangeListener(GoogleApiClient paramGoogleApiClient, DriveEvent.Listener<ChangeEvent> paramListener)
  {
    return ((r)paramGoogleApiClient.a(Drive.yE)).b(paramGoogleApiClient, Hw, 1, paramListener);
  }
  
  public PendingResult<DriveResource.MetadataResult> updateMetadata(GoogleApiClient paramGoogleApiClient, MetadataChangeSet paramMetadataChangeSet)
  {
    if (paramMetadataChangeSet == null) {
      throw new IllegalArgumentException("ChangeSet must be provided.");
    }
    return paramGoogleApiClient.b(new v.3(this, paramMetadataChangeSet));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.drive.internal.v
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */