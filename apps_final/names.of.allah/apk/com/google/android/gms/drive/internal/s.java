package com.google.android.gms.drive.internal;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.drive.Contents;
import com.google.android.gms.drive.Drive;
import com.google.android.gms.drive.DriveApi;
import com.google.android.gms.drive.DriveApi.ContentsResult;
import com.google.android.gms.drive.DriveFile;
import com.google.android.gms.drive.DriveFile.DownloadProgressListener;
import com.google.android.gms.drive.DriveId;
import com.google.android.gms.drive.MetadataChangeSet;

public class s
  extends v
  implements DriveFile
{
  public s(DriveId paramDriveId)
  {
    super(paramDriveId);
  }
  
  public PendingResult<Status> commitAndCloseContents(GoogleApiClient paramGoogleApiClient, Contents paramContents)
  {
    if (paramContents == null) {
      throw new IllegalArgumentException("Contents must be provided.");
    }
    return paramGoogleApiClient.b(new s.2(this, paramContents));
  }
  
  public PendingResult<Status> commitAndCloseContents(GoogleApiClient paramGoogleApiClient, Contents paramContents, MetadataChangeSet paramMetadataChangeSet)
  {
    if (paramContents == null) {
      throw new IllegalArgumentException("Contents must be provided.");
    }
    return paramGoogleApiClient.b(new s.3(this, paramContents, paramMetadataChangeSet));
  }
  
  public PendingResult<Status> discardContents(GoogleApiClient paramGoogleApiClient, Contents paramContents)
  {
    return Drive.DriveApi.discardContents(paramGoogleApiClient, paramContents);
  }
  
  public PendingResult<DriveApi.ContentsResult> openContents(GoogleApiClient paramGoogleApiClient, int paramInt, DriveFile.DownloadProgressListener paramDownloadProgressListener)
  {
    if ((paramInt != 268435456) && (paramInt != 536870912) && (paramInt != 805306368)) {
      throw new IllegalArgumentException("Invalid mode provided.");
    }
    return paramGoogleApiClient.a(new s.1(this, paramInt, paramDownloadProgressListener));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.drive.internal.s
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */