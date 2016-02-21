package com.google.android.gms.location;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.location.Location;
import android.os.Looper;
import com.google.android.gms.common.GooglePlayServicesClient;
import com.google.android.gms.common.GooglePlayServicesClient.ConnectionCallbacks;
import com.google.android.gms.common.GooglePlayServicesClient.OnConnectionFailedListener;
import com.google.android.gms.internal.er;
import com.google.android.gms.internal.hi;
import com.google.android.gms.internal.hj;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class LocationClient implements GooglePlayServicesClient {
    public static final String KEY_LOCATION_CHANGED = "com.google.android.location.LOCATION";
    public static final String KEY_MOCK_LOCATION = "mockLocation";
    private final hi KO;

    public static interface OnAddGeofencesResultListener {
        void onAddGeofencesResult(int i, String[] strArr);
    }

    public static interface OnRemoveGeofencesResultListener {
        void onRemoveGeofencesByPendingIntentResult(int i, PendingIntent pendingIntent);

        void onRemoveGeofencesByRequestIdsResult(int i, String[] strArr);
    }

    public LocationClient(Context context, ConnectionCallbacks connectionCallbacks, OnConnectionFailedListener onConnectionFailedListener) {
        this.KO = new hi(context, connectionCallbacks, onConnectionFailedListener, "location");
    }

    public static int getErrorCode(Intent intent) {
        return intent.getIntExtra("gms_error_code", -1);
    }

    public static int getGeofenceTransition(Intent intent) {
        int intExtra = intent.getIntExtra("com.google.android.location.intent.extra.transition", -1);
        if (intExtra == -1) {
            return -1;
        }
        return (intExtra == 1 || intExtra == 2 || intExtra == 4) ? intExtra : -1;
    }

    public static List getTriggeringGeofences(Intent intent) {
        ArrayList arrayList = (ArrayList) intent.getSerializableExtra("com.google.android.location.intent.extra.geofence_list");
        if (arrayList == null) {
            return null;
        }
        ArrayList arrayList2 = new ArrayList(arrayList.size());
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            arrayList2.add(hj.h((byte[]) it.next()));
        }
        return arrayList2;
    }

    public static boolean hasError(Intent intent) {
        return intent.hasExtra("gms_error_code");
    }

    public void addGeofences(List list, PendingIntent pendingIntent, OnAddGeofencesResultListener onAddGeofencesResultListener) {
        List list2 = null;
        if (list != null) {
            List arrayList = new ArrayList();
            Iterator it = list.iterator();
            while (it.hasNext()) {
                Geofence geofence = (Geofence) it.next();
                er.b(geofence instanceof hj, (Object)"Geofence must be created using Geofence.Builder.");
                arrayList.add((hj) geofence);
            }
            list2 = arrayList;
        }
        this.KO.addGeofences(list2, pendingIntent, onAddGeofencesResultListener);
    }

    public void connect() {
        this.KO.connect();
    }

    public void disconnect() {
        this.KO.disconnect();
    }

    public Location getLastLocation() {
        return this.KO.getLastLocation();
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

    public void removeGeofences(PendingIntent pendingIntent, OnRemoveGeofencesResultListener onRemoveGeofencesResultListener) {
        this.KO.removeGeofences(pendingIntent, onRemoveGeofencesResultListener);
    }

    public void removeGeofences(List list, OnRemoveGeofencesResultListener onRemoveGeofencesResultListener) {
        this.KO.removeGeofences(list, onRemoveGeofencesResultListener);
    }

    public void removeLocationUpdates(PendingIntent pendingIntent) {
        this.KO.removeLocationUpdates(pendingIntent);
    }

    public void removeLocationUpdates(LocationListener locationListener) {
        this.KO.removeLocationUpdates(locationListener);
    }

    public void requestLocationUpdates(LocationRequest locationRequest, PendingIntent pendingIntent) {
        this.KO.requestLocationUpdates(locationRequest, pendingIntent);
    }

    public void requestLocationUpdates(LocationRequest locationRequest, LocationListener locationListener) {
        this.KO.requestLocationUpdates(locationRequest, locationListener);
    }

    public void requestLocationUpdates(LocationRequest locationRequest, LocationListener locationListener, Looper looper) {
        this.KO.requestLocationUpdates(locationRequest, locationListener, looper);
    }

    public void setMockLocation(Location location) {
        this.KO.setMockLocation(location);
    }

    public void setMockMode(boolean z) {
        this.KO.setMockMode(z);
    }

    public void unregisterConnectionCallbacks(ConnectionCallbacks connectionCallbacks) {
        this.KO.unregisterConnectionCallbacks(connectionCallbacks);
    }

    public void unregisterConnectionFailedListener(OnConnectionFailedListener onConnectionFailedListener) {
        this.KO.unregisterConnectionFailedListener(onConnectionFailedListener);
    }
}