package com.google.android.gms.panorama;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GooglePlayServicesClient;
import com.google.android.gms.common.GooglePlayServicesClient.ConnectionCallbacks;
import com.google.android.gms.common.GooglePlayServicesClient.OnConnectionFailedListener;
import com.google.android.gms.common.api.a.c;
import com.google.android.gms.internal.ih;
import com.google.android.gms.panorama.Panorama.PanoramaResult;

public class PanoramaClient implements GooglePlayServicesClient {
    private final ih QB;

    class AnonymousClass_1 implements c {
        final /* synthetic */ com.google.android.gms.panorama.PanoramaClient.OnPanoramaInfoLoadedListener QC;

        AnonymousClass_1(com.google.android.gms.panorama.PanoramaClient.OnPanoramaInfoLoadedListener onPanoramaInfoLoadedListener) {
            this.QC = onPanoramaInfoLoadedListener;
        }

        public void a(PanoramaResult panoramaResult) {
            this.QC.onPanoramaInfoLoaded(panoramaResult.getStatus().dG(), panoramaResult.getViewerIntent());
        }

        public /* synthetic */ void b(Object obj) {
            a((PanoramaResult) obj);
        }
    }

    class AnonymousClass_2 implements c {
        final /* synthetic */ com.google.android.gms.panorama.PanoramaClient.OnPanoramaInfoLoadedListener QC;

        AnonymousClass_2(com.google.android.gms.panorama.PanoramaClient.OnPanoramaInfoLoadedListener onPanoramaInfoLoadedListener) {
            this.QC = onPanoramaInfoLoadedListener;
        }

        public void a(PanoramaResult panoramaResult) {
            this.QC.onPanoramaInfoLoaded(panoramaResult.getStatus().dG(), panoramaResult.getViewerIntent());
        }

        public /* synthetic */ void b(Object obj) {
            a((PanoramaResult) obj);
        }
    }

    public static interface OnPanoramaInfoLoadedListener {
        void onPanoramaInfoLoaded(ConnectionResult connectionResult, Intent intent);
    }

    public PanoramaClient(Context context, ConnectionCallbacks connectionCallbacks, OnConnectionFailedListener onConnectionFailedListener) {
        this.QB = new ih(context, connectionCallbacks, onConnectionFailedListener);
    }

    public void connect() {
        this.QB.connect();
    }

    public void disconnect() {
        this.QB.disconnect();
    }

    public boolean isConnected() {
        return this.QB.isConnected();
    }

    public boolean isConnecting() {
        return this.QB.isConnecting();
    }

    public boolean isConnectionCallbacksRegistered(ConnectionCallbacks connectionCallbacks) {
        return this.QB.isConnectionCallbacksRegistered(connectionCallbacks);
    }

    public boolean isConnectionFailedListenerRegistered(OnConnectionFailedListener onConnectionFailedListener) {
        return this.QB.isConnectionFailedListenerRegistered(onConnectionFailedListener);
    }

    public void loadPanoramaInfo(OnPanoramaInfoLoadedListener onPanoramaInfoLoadedListener, Uri uri) {
        this.QB.a(new AnonymousClass_1(onPanoramaInfoLoadedListener), uri, false);
    }

    public void loadPanoramaInfoAndGrantAccess(OnPanoramaInfoLoadedListener onPanoramaInfoLoadedListener, Uri uri) {
        this.QB.a(new AnonymousClass_2(onPanoramaInfoLoadedListener), uri, true);
    }

    public void registerConnectionCallbacks(ConnectionCallbacks connectionCallbacks) {
        this.QB.registerConnectionCallbacks(connectionCallbacks);
    }

    public void registerConnectionFailedListener(OnConnectionFailedListener onConnectionFailedListener) {
        this.QB.registerConnectionFailedListener(onConnectionFailedListener);
    }

    public void unregisterConnectionCallbacks(ConnectionCallbacks connectionCallbacks) {
        this.QB.unregisterConnectionCallbacks(connectionCallbacks);
    }

    public void unregisterConnectionFailedListener(OnConnectionFailedListener onConnectionFailedListener) {
        this.QB.unregisterConnectionFailedListener(onConnectionFailedListener);
    }
}