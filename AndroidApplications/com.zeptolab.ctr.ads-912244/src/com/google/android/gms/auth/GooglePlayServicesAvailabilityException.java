package com.google.android.gms.auth;

import android.content.Intent;

public class GooglePlayServicesAvailabilityException extends UserRecoverableAuthException {
    private final int vs;

    GooglePlayServicesAvailabilityException(int i, String str, Intent intent) {
        super(str, intent);
        this.vs = i;
    }

    public int getConnectionStatusCode() {
        return this.vs;
    }
}