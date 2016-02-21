package com.google.android.gms.drive;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.drive.query.Query;

public interface DriveFolder extends DriveResource {
    public static final String MIME_TYPE = "application/vnd.google-apps.folder";

    public static interface DriveFileResult extends Result {
        DriveFile getDriveFile();
    }

    public static interface DriveFolderResult extends Result {
        DriveFolder getDriveFolder();
    }

    PendingResult createFile(GoogleApiClient googleApiClient, MetadataChangeSet metadataChangeSet, Contents contents);

    PendingResult createFolder(GoogleApiClient googleApiClient, MetadataChangeSet metadataChangeSet);

    PendingResult listChildren(GoogleApiClient googleApiClient);

    PendingResult queryChildren(GoogleApiClient googleApiClient, Query query);
}