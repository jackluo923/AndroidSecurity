package com.google.android.gms.drive;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;

public interface DriveFile extends DriveResource {
    public static final int MODE_READ_ONLY = 268435456;
    public static final int MODE_READ_WRITE = 805306368;
    public static final int MODE_WRITE_ONLY = 536870912;

    public static interface DownloadProgressListener {
        void onProgress(long j, long j2);
    }

    PendingResult commitAndCloseContents(GoogleApiClient googleApiClient, Contents contents);

    PendingResult commitAndCloseContents(GoogleApiClient googleApiClient, Contents contents, MetadataChangeSet metadataChangeSet);

    PendingResult discardContents(GoogleApiClient googleApiClient, Contents contents);

    PendingResult openContents(GoogleApiClient googleApiClient, int i, DownloadProgressListener downloadProgressListener);
}