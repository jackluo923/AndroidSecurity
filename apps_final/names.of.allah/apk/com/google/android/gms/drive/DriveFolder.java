package com.google.android.gms.drive;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.drive.query.Query;

public abstract interface DriveFolder
  extends DriveResource
{
  public static final String MIME_TYPE = "application/vnd.google-apps.folder";
  
  public abstract PendingResult<DriveFolder.DriveFileResult> createFile(GoogleApiClient paramGoogleApiClient, MetadataChangeSet paramMetadataChangeSet, Contents paramContents);
  
  public abstract PendingResult<DriveFolder.DriveFolderResult> createFolder(GoogleApiClient paramGoogleApiClient, MetadataChangeSet paramMetadataChangeSet);
  
  public abstract PendingResult<DriveApi.MetadataBufferResult> listChildren(GoogleApiClient paramGoogleApiClient);
  
  public abstract PendingResult<DriveApi.MetadataBufferResult> queryChildren(GoogleApiClient paramGoogleApiClient, Query paramQuery);
}

/* Location:
 * Qualified Name:     com.google.android.gms.drive.DriveFolder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */