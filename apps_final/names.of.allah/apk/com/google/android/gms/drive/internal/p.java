package com.google.android.gms.drive.internal;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.drive.Contents;
import com.google.android.gms.drive.CreateFileActivityBuilder;
import com.google.android.gms.drive.Drive;
import com.google.android.gms.drive.DriveApi;
import com.google.android.gms.drive.DriveApi.ContentsResult;
import com.google.android.gms.drive.DriveApi.DriveIdResult;
import com.google.android.gms.drive.DriveApi.MetadataBufferResult;
import com.google.android.gms.drive.DriveFile;
import com.google.android.gms.drive.DriveFolder;
import com.google.android.gms.drive.DriveId;
import com.google.android.gms.drive.OpenFileActivityBuilder;
import com.google.android.gms.drive.query.Query;

public class p
  implements DriveApi
{
  public PendingResult<Status> discardContents(GoogleApiClient paramGoogleApiClient, Contents paramContents)
  {
    return paramGoogleApiClient.b(new p.3(this, paramContents));
  }
  
  public PendingResult<DriveApi.DriveIdResult> fetchDriveId(GoogleApiClient paramGoogleApiClient, String paramString)
  {
    return paramGoogleApiClient.a(new p.4(this, paramString));
  }
  
  public DriveFolder getAppFolder(GoogleApiClient paramGoogleApiClient)
  {
    if (!paramGoogleApiClient.isConnected()) {
      throw new IllegalStateException("Client must be connected");
    }
    paramGoogleApiClient = ((r)paramGoogleApiClient.a(Drive.yE)).gm();
    if (paramGoogleApiClient != null) {
      return new u(paramGoogleApiClient);
    }
    return null;
  }
  
  public DriveFile getFile(GoogleApiClient paramGoogleApiClient, DriveId paramDriveId)
  {
    if (paramDriveId == null) {
      throw new IllegalArgumentException("Id must be provided.");
    }
    if (!paramGoogleApiClient.isConnected()) {
      throw new IllegalStateException("Client must be connected");
    }
    return new s(paramDriveId);
  }
  
  public DriveFolder getFolder(GoogleApiClient paramGoogleApiClient, DriveId paramDriveId)
  {
    if (paramDriveId == null) {
      throw new IllegalArgumentException("Id must be provided.");
    }
    if (!paramGoogleApiClient.isConnected()) {
      throw new IllegalStateException("Client must be connected");
    }
    return new u(paramDriveId);
  }
  
  public DriveFolder getRootFolder(GoogleApiClient paramGoogleApiClient)
  {
    if (!paramGoogleApiClient.isConnected()) {
      throw new IllegalStateException("Client must be connected");
    }
    return new u(((r)paramGoogleApiClient.a(Drive.yE)).gl());
  }
  
  public PendingResult<DriveApi.ContentsResult> newContents(GoogleApiClient paramGoogleApiClient)
  {
    return paramGoogleApiClient.a(new p.2(this));
  }
  
  public CreateFileActivityBuilder newCreateFileActivityBuilder()
  {
    return new CreateFileActivityBuilder();
  }
  
  public OpenFileActivityBuilder newOpenFileActivityBuilder()
  {
    return new OpenFileActivityBuilder();
  }
  
  public PendingResult<DriveApi.MetadataBufferResult> query(GoogleApiClient paramGoogleApiClient, Query paramQuery)
  {
    if (paramQuery == null) {
      throw new IllegalArgumentException("Query must be provided.");
    }
    return paramGoogleApiClient.a(new p.1(this, paramQuery));
  }
  
  public PendingResult<Status> requestSync(GoogleApiClient paramGoogleApiClient)
  {
    return paramGoogleApiClient.b(new p.5(this));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.drive.internal.p
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */