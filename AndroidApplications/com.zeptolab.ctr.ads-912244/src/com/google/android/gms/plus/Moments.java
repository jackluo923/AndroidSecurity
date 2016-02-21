package com.google.android.gms.plus;

import android.net.Uri;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Releasable;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.plus.model.moments.Moment;
import com.google.android.gms.plus.model.moments.MomentBuffer;

public interface Moments {

    public static interface LoadMomentsResult extends Releasable, Result {
        MomentBuffer getMomentBuffer();

        String getNextPageToken();

        String getUpdated();
    }

    PendingResult load(GoogleApiClient googleApiClient);

    PendingResult load(GoogleApiClient googleApiClient, int i, String str, Uri uri, String str2, String str3);

    PendingResult remove(GoogleApiClient googleApiClient, String str);

    PendingResult write(GoogleApiClient googleApiClient, Moment moment);
}