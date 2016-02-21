package com.google.android.gms.drive;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.drive.events.DriveEvent.Listener;

public interface DriveResource {

    public static interface MetadataResult extends Result {
        Metadata getMetadata();
    }

    PendingResult addChangeListener(GoogleApiClient googleApiClient, Listener listener);

    DriveId getDriveId();

    PendingResult getMetadata(GoogleApiClient googleApiClient);

    PendingResult listParents(GoogleApiClient googleApiClient);

    PendingResult removeChangeListener(GoogleApiClient googleApiClient, Listener listener);

    PendingResult updateMetadata(GoogleApiClient googleApiClient, MetadataChangeSet metadataChangeSet);
}