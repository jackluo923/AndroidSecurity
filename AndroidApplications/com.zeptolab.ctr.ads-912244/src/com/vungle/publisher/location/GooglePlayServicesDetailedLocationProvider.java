package com.vungle.publisher.location;

import android.content.Context;
import android.location.Location;
import android.os.Bundle;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GooglePlayServicesClient.ConnectionCallbacks;
import com.google.android.gms.common.GooglePlayServicesClient.OnConnectionFailedListener;
import com.google.android.gms.location.LocationClient;
import com.vungle.log.Logger;
import com.vungle.publisher.bg;
import javax.inject.Inject;
import javax.inject.Singleton;

@Singleton
public class GooglePlayServicesDetailedLocationProvider implements bg {
    @Inject
    Context a;

    final class AnonymousClass_1 implements ConnectionCallbacks {
        final /* synthetic */ Object a;

        AnonymousClass_1(Object obj) {
            this.a = obj;
        }

        public final void onConnected(Bundle bundle) {
            try {
                Logger.d(Logger.LOCATION_TAG, "Google Play Services location client connected");
                synchronized (this.a) {
                    this.a.notifyAll();
                }
            } catch (Throwable th) {
                synchronized (this.a) {
                }
                this.a.notifyAll();
            }
        }

        public final void onDisconnected() {
            Logger.d(Logger.LOCATION_TAG, "Google Play Services location client disconnected");
        }
    }

    GooglePlayServicesDetailedLocationProvider() {
    }

    public final Location a() {
        LocationClient locationClient;
        Throwable th;
        Location location = null;
        try {
            Object obj = new Object();
            locationClient = new LocationClient(this.a, new AnonymousClass_1(obj), new OnConnectionFailedListener() {
                public final void onConnectionFailed(ConnectionResult connectionResult) {
                    Logger.w(Logger.LOCATION_TAG, new StringBuilder("Google Play Services location client failed to connect ").append(connectionResult).toString());
                }
            });
            try {
                synchronized (obj) {
                    locationClient.connect();
                    while (!locationClient.isConnected()) {
                        try {
                            Logger.d(Logger.LOCATION_TAG, "waiting for Google Play Services location client to connect");
                            obj.wait();
                        } catch (InterruptedException e) {
                            Logger.d(Logger.LOCATION_TAG, "interrupted while waiting for Google Play Services location client to connect");
                        }
                    }
                    Logger.d(Logger.LOCATION_TAG, "obtaining location from Google Play Services");
                    try {
                        location = locationClient.getLastLocation();
                        if (location == null) {
                            Logger.d(Logger.LOCATION_TAG, "no location returned from Google Play Services");
                        } else {
                            Logger.v(Logger.LOCATION_TAG, new StringBuilder("provider: ").append(location.getProvider()).toString());
                            Logger.v(Logger.LOCATION_TAG, new StringBuilder("latitude: ").append(location.getLatitude()).append("\u00ac\u221e").toString());
                            Logger.v(Logger.LOCATION_TAG, new StringBuilder("longitude: ").append(location.getLongitude()).append("\u00ac\u221e").toString());
                            Logger.v(Logger.LOCATION_TAG, new StringBuilder("accuracy: ").append(location.getAccuracy()).append(" m").toString());
                            Logger.v(Logger.LOCATION_TAG, new StringBuilder("speed: ").append(location.getSpeed()).append(" m/s").toString());
                            Logger.v(Logger.LOCATION_TAG, new StringBuilder("time: ").append(location.getTime()).append(" ms").toString());
                        }
                    } catch (SecurityException e2) {
                        Logger.d(Logger.LOCATION_TAG, "no location permissions for Google Play Services location client");
                    }
                }
                try {
                    Logger.d(Logger.LOCATION_TAG, "disconnecting Google Play Services location client");
                    locationClient.disconnect();
                } catch (Exception e3) {
                    Logger.w(Logger.LOCATION_TAG, "error disconnecting Google Play Services location client");
                }
                return location;
            } catch (Throwable th2) {
                th = th2;
                if (locationClient != null) {
                    try {
                        Logger.d(Logger.LOCATION_TAG, "disconnecting Google Play Services location client");
                        locationClient.disconnect();
                    } catch (Exception e4) {
                        Logger.w(Logger.LOCATION_TAG, "error disconnecting Google Play Services location client");
                    }
                }
                throw th;
            }
        } catch (Throwable th3) {
            Location location2 = location;
            th = th3;
            if (locationClient != null) {
                Logger.d(Logger.LOCATION_TAG, "disconnecting Google Play Services location client");
                locationClient.disconnect();
            }
            throw th;
        }
    }
}