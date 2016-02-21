package com.google.android.gms.internal;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.games.Games;
import com.google.android.gms.games.Notifications;
import com.zeptolab.ctr.scorer.GoogleScorer;

public final class gl implements Notifications {
    public void clear(GoogleApiClient googleApiClient, int i) {
        Games.c(googleApiClient).aU(i);
    }

    public void clearAll(GoogleApiClient googleApiClient) {
        clear(googleApiClient, GoogleScorer.CLIENT_ALL);
    }
}