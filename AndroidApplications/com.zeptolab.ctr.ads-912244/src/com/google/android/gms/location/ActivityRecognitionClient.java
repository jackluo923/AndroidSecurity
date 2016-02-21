package com.google.android.gms.location;

import android.app.PendingIntent;
import android.content.Context;
import com.google.android.gms.common.GooglePlayServicesClient;
import com.google.android.gms.common.GooglePlayServicesClient.ConnectionCallbacks;
import com.google.android.gms.common.GooglePlayServicesClient.OnConnectionFailedListener;
import com.google.android.gms.internal.hi;

public class ActivityRecognitionClient implements GooglePlayServicesClient {
    private final hi KO;

    public ActivityRecognitionClient(Context context, ConnectionCallbacks connectionCallbacks, OnConnectionFailedListener onConnectionFailedListener) {
        this.KO = new hi(context, connectionCallbacks, onConnectionFailedListener, "activity_recognition");
    }

    public void connect() {
        this.KO.connect();
    }

    public void disconnect() {
        this.KO.disconnect();
    }

    public boolean isConnected() {
        return this.KO.isConnected();
    }

    public boolean isConnecting() {
        return this.KO.isConnecting();
    }

    public boolean isConnectionCallbacksRegistered(ConnectionCallbacks connectionCallbacks) {
        return this.KO.isConnectionCallbacksRegistered(connectionCallbacks);
    }

    public boolean isConnectionFailedListenerRegistered(OnConnectionFailedListener onConnectionFailedListener) {
        return this.KO.isConnectionFailedListenerRegistered(onConnectionFailedListener);
    }

    public void registerConnectionCallbacks(ConnectionCallbacks connectionCallbacks) {
        this.KO.registerConnectionCallbacks(connectionCallbacks);
    }

    public void registerConnectionFailedListener(OnConnectionFailedListener onConnectionFailedListener) {
        this.KO.registerConnectionFailedListener(onConnectionFailedListener);
    }

    public void removeActivityUpdates(PendingIntent pendingIntent) {
        this.KO.removeActivityUpdates(pendingIntent);
    }

    public void requestActivityUpdates(long j, PendingIntent pendingIntent) {
        this.KO.requestActivityUpdates(j, pendingIntent);
    }

    public void unregisterConnectionCallbacks(ConnectionCallbacks connectionCallbacks) {
        this.KO.unregisterConnectionCallbacks(connectionCallbacks);
    }

    public void unregisterConnectionFailedListener(OnConnectionFailedListener onConnectionFailedListener) {
        this.KO.unregisterConnectionFailedListener(onConnectionFailedListener);
    }
}