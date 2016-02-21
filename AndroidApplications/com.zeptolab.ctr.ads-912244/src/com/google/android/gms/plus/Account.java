package com.google.android.gms.plus;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;

public interface Account {
    void clearDefaultAccount(GoogleApiClient googleApiClient);

    String getAccountName(GoogleApiClient googleApiClient);

    PendingResult revokeAccessAndDisconnect(GoogleApiClient googleApiClient);
}