package com.google.android.gms.drive;

import android.content.IntentSender;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.drive.query.Query;

public interface DriveApi {

    public static interface ContentsResult extends Result {
        Contents getContents();
    }

    public static interface DriveIdResult extends Result {
        DriveId getDriveId();
    }

    public static interface IntentSenderResult extends Result {
        IntentSender getIntentSender();
    }

    public static interface MetadataBufferResult extends Result {
        MetadataBuffer getMetadataBuffer();
    }

    public static interface OnSyncFinishCallback {
        void onSyncFinish(Status status);
    }

    PendingResult discardContents(GoogleApiClient googleApiClient, Contents contents);

    PendingResult fetchDriveId(GoogleApiClient googleApiClient, String str);

    DriveFolder getAppFolder(GoogleApiClient googleApiClient);

    DriveFile getFile(GoogleApiClient googleApiClient, DriveId driveId);

    DriveFolder getFolder(GoogleApiClient googleApiClient, DriveId driveId);

    DriveFolder getRootFolder(GoogleApiClient googleApiClient);

    PendingResult newContents(GoogleApiClient googleApiClient);

    CreateFileActivityBuilder newCreateFileActivityBuilder();

    OpenFileActivityBuilder newOpenFileActivityBuilder();

    PendingResult query(GoogleApiClient googleApiClient, Query query);

    PendingResult requestSync(GoogleApiClient googleApiClient);
}