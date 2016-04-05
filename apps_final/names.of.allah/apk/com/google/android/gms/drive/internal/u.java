package com.google.android.gms.drive.internal;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.drive.Contents;
import com.google.android.gms.drive.DriveApi.MetadataBufferResult;
import com.google.android.gms.drive.DriveFolder;
import com.google.android.gms.drive.DriveFolder.DriveFileResult;
import com.google.android.gms.drive.DriveFolder.DriveFolderResult;
import com.google.android.gms.drive.DriveId;
import com.google.android.gms.drive.MetadataChangeSet;
import com.google.android.gms.drive.query.Filters;
import com.google.android.gms.drive.query.Query;
import com.google.android.gms.drive.query.Query.Builder;
import com.google.android.gms.drive.query.SearchableField;

public class u
  extends v
  implements DriveFolder
{
  public u(DriveId paramDriveId)
  {
    super(paramDriveId);
  }
  
  private PendingResult<DriveFolder.DriveFileResult> a(GoogleApiClient paramGoogleApiClient, MetadataChangeSet paramMetadataChangeSet, Contents paramContents, int paramInt, boolean paramBoolean, String paramString)
  {
    return paramGoogleApiClient.b(new u.1(this, paramContents, paramMetadataChangeSet, paramInt, paramBoolean, paramString));
  }
  
  private PendingResult<DriveFolder.DriveFileResult> a(GoogleApiClient paramGoogleApiClient, MetadataChangeSet paramMetadataChangeSet, Contents paramContents, boolean paramBoolean, String paramString)
  {
    if (paramMetadataChangeSet == null) {
      throw new IllegalArgumentException("MetadataChangeSet must be provided.");
    }
    if (paramContents == null) {
      throw new IllegalArgumentException("Contents must be provided.");
    }
    if ("application/vnd.google-apps.folder".equals(paramMetadataChangeSet.getMimeType())) {
      throw new IllegalArgumentException("May not create folders (mimetype: application/vnd.google-apps.folder) using this method. Use DriveFolder.createFolder() instead.");
    }
    return a(paramGoogleApiClient, paramMetadataChangeSet, paramContents, 0, paramBoolean, paramString);
  }
  
  public PendingResult<DriveFolder.DriveFileResult> createFile(GoogleApiClient paramGoogleApiClient, MetadataChangeSet paramMetadataChangeSet, Contents paramContents)
  {
    return a(paramGoogleApiClient, paramMetadataChangeSet, paramContents, false, null);
  }
  
  public PendingResult<DriveFolder.DriveFolderResult> createFolder(GoogleApiClient paramGoogleApiClient, MetadataChangeSet paramMetadataChangeSet)
  {
    if (paramMetadataChangeSet == null) {
      throw new IllegalArgumentException("MetadataChangeSet must be provided.");
    }
    if ((paramMetadataChangeSet.getMimeType() != null) && (!paramMetadataChangeSet.getMimeType().equals("application/vnd.google-apps.folder"))) {
      throw new IllegalArgumentException("The mimetype must be of type application/vnd.google-apps.folder");
    }
    return paramGoogleApiClient.b(new u.2(this, paramMetadataChangeSet));
  }
  
  public PendingResult<DriveApi.MetadataBufferResult> listChildren(GoogleApiClient paramGoogleApiClient)
  {
    return queryChildren(paramGoogleApiClient, null);
  }
  
  public PendingResult<DriveApi.MetadataBufferResult> queryChildren(GoogleApiClient paramGoogleApiClient, Query paramQuery)
  {
    Query.Builder localBuilder = new Query.Builder().addFilter(Filters.in(SearchableField.PARENTS, getDriveId()));
    if (paramQuery != null)
    {
      if (paramQuery.getFilter() != null) {
        localBuilder.addFilter(paramQuery.getFilter());
      }
      localBuilder.setPageToken(paramQuery.getPageToken());
      localBuilder.setSortOrder(paramQuery.getSortOrder());
    }
    return new p().query(paramGoogleApiClient, localBuilder.build());
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.drive.internal.u
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */