package com.google.android.gms.games;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Releasable;
import com.google.android.gms.common.api.Result;

public interface GamesMetadata {

    public static interface LoadGamesResult extends Releasable, Result {
        GameBuffer getGames();
    }

    Game getCurrentGame(GoogleApiClient googleApiClient);

    PendingResult loadGame(GoogleApiClient googleApiClient);
}