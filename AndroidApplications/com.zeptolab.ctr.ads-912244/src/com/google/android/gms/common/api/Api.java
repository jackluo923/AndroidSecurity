package com.google.android.gms.common.api;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.common.api.GoogleApiClient.ApiOptions;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;
import com.google.android.gms.internal.ee;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public final class Api {
    private final b za;
    private final ArrayList zb;

    public static interface b {
        com.google.android.gms.common.api.Api.a b_(Context context, Looper looper, ee eeVar, ApiOptions apiOptions, ConnectionCallbacks connectionCallbacks, OnConnectionFailedListener onConnectionFailedListener);

        int getPriority();
    }

    public static interface a {
        void connect();

        void disconnect();

        Looper getLooper();

        boolean isConnected();
    }

    public Api(b bVar, Scope... scopeArr) {
        this.za = bVar;
        this.zb = new ArrayList(Arrays.asList(scopeArr));
    }

    public b dp() {
        return this.za;
    }

    public List dq() {
        return this.zb;
    }
}