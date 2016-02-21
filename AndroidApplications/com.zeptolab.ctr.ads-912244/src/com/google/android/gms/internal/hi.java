package com.google.android.gms.internal;

import android.app.PendingIntent;
import android.content.Context;
import android.location.Location;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.GooglePlayServicesClient.ConnectionCallbacks;
import com.google.android.gms.common.GooglePlayServicesClient.OnConnectionFailedListener;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.google.android.gms.internal.eh.e;
import com.google.android.gms.location.LocationClient.OnAddGeofencesResultListener;
import com.google.android.gms.location.LocationClient.OnRemoveGeofencesResultListener;
import com.google.android.gms.location.LocationListener;
import com.google.android.gms.location.LocationRequest;
import com.google.android.gms.location.LocationStatusCodes;
import com.zeptolab.ctr.scorer.GoogleScorer;
import java.util.Locale;

public class hi extends eh {
    private final hl Lk;
    private final hh Lq;
    private final ib Lr;
    private final String Ls;
    private final String vi;

    private final class a extends b {
        private final String[] Lt;
        private final int yJ;

        public a(OnAddGeofencesResultListener onAddGeofencesResultListener, int i, String[] strArr) {
            super(onAddGeofencesResultListener);
            this.yJ = LocationStatusCodes.bl(i);
            this.Lt = strArr;
        }

        protected void a_(OnAddGeofencesResultListener onAddGeofencesResultListener) {
            if (onAddGeofencesResultListener != null) {
                onAddGeofencesResultListener.onAddGeofencesResult(this.yJ, this.Lt);
            }
        }

        protected void cP() {
        }
    }

    private static final class b extends com.google.android.gms.internal.hf.a {
        private OnAddGeofencesResultListener Lv;
        private OnRemoveGeofencesResultListener Lw;
        private hi Lx;

        public b(OnAddGeofencesResultListener onAddGeofencesResultListener, hi hiVar) {
            this.Lv = onAddGeofencesResultListener;
            this.Lw = null;
            this.Lx = hiVar;
        }

        public b(OnRemoveGeofencesResultListener onRemoveGeofencesResultListener, hi hiVar) {
            this.Lw = onRemoveGeofencesResultListener;
            this.Lv = null;
            this.Lx = hiVar;
        }

        public void onAddGeofencesResult(int i, String[] strArr) {
            if (this.Lx == null) {
                Log.wtf("LocationClientImpl", "onAddGeofenceResult called multiple times");
            } else {
                hi hiVar = this.Lx;
                hi hiVar2 = this.Lx;
                hiVar2.getClass();
                hiVar.a(new a(this.Lv, i, strArr));
                this.Lx = null;
                this.Lv = null;
                this.Lw = null;
            }
        }

        public void onRemoveGeofencesByPendingIntentResult(int i, PendingIntent pendingIntent) {
            if (this.Lx == null) {
                Log.wtf("LocationClientImpl", "onRemoveGeofencesByPendingIntentResult called multiple times");
            } else {
                hi hiVar = this.Lx;
                hi hiVar2 = this.Lx;
                hiVar2.getClass();
                hiVar.a(new d(hiVar2, 1, this.Lw, i, pendingIntent));
                this.Lx = null;
                this.Lv = null;
                this.Lw = null;
            }
        }

        public void onRemoveGeofencesByRequestIdsResult(int i, String[] strArr) {
            if (this.Lx == null) {
                Log.wtf("LocationClientImpl", "onRemoveGeofencesByRequestIdsResult called multiple times");
            } else {
                hi hiVar = this.Lx;
                hi hiVar2 = this.Lx;
                hiVar2.getClass();
                hiVar.a(new d((hi)2, (int)this.Lw, (OnRemoveGeofencesResultListener)i, (int)strArr));
                this.Lx = null;
                this.Lv = null;
                this.Lw = null;
            }
        }
    }

    private final class c implements hl {
        private c() {
        }

        public void bm() {
            hi.this.bm();
        }

        public /* synthetic */ IInterface eb() {
            return gm();
        }

        public hg gm() {
            return (hg) hi.this.eb();
        }
    }

    private final class d extends b {
        private final String[] Lt;
        private final int Ly;
        private final PendingIntent mPendingIntent;
        private final int yJ;

        public d(hi hiVar, int i, OnRemoveGeofencesResultListener onRemoveGeofencesResultListener, int i2, PendingIntent pendingIntent) {
            boolean z = true;
            hi.this = hiVar;
            super(onRemoveGeofencesResultListener);
            if (i != 1) {
                z = false;
            }
            ed.v(z);
            this.Ly = i;
            this.yJ = LocationStatusCodes.bl(i2);
            this.mPendingIntent = pendingIntent;
            this.Lt = null;
        }

        public d(int i, OnRemoveGeofencesResultListener onRemoveGeofencesResultListener, int i2, String[] strArr) {
            super(onRemoveGeofencesResultListener);
            ed.v(i == 2);
            this.Ly = i;
            this.yJ = LocationStatusCodes.bl(i2);
            this.Lt = strArr;
            this.mPendingIntent = null;
        }

        protected void a(OnRemoveGeofencesResultListener onRemoveGeofencesResultListener) {
            if (onRemoveGeofencesResultListener != null) {
                switch (this.Ly) {
                    case GoogleScorer.CLIENT_GAMES:
                        onRemoveGeofencesResultListener.onRemoveGeofencesByPendingIntentResult(this.yJ, this.mPendingIntent);
                    case GoogleScorer.CLIENT_PLUS:
                        onRemoveGeofencesResultListener.onRemoveGeofencesByRequestIdsResult(this.yJ, this.Lt);
                    default:
                        Log.wtf("LocationClientImpl", "Unsupported action: " + this.Ly);
                }
            }
        }

        protected void cP() {
        }
    }

    public hi(Context context, ConnectionCallbacks connectionCallbacks, OnConnectionFailedListener onConnectionFailedListener, String str) {
        super(context, connectionCallbacks, onConnectionFailedListener, new String[0]);
        this.Lk = new c(null);
        this.Lq = new hh(context, this.Lk);
        this.Ls = str;
        this.vi = null;
        this.Lr = new ib(getContext(), Locale.getDefault(), this.Lk);
    }

    protected hg Q(IBinder iBinder) {
        return com.google.android.gms.internal.hg.a.P(iBinder);
    }

    protected void a(en enVar, e eVar) {
        Bundle bundle = new Bundle();
        bundle.putString("client_name", this.Ls);
        enVar.e(eVar, GooglePlayServicesUtil.GOOGLE_PLAY_SERVICES_VERSION_CODE, getContext().getPackageName(), bundle);
    }

    protected String aF() {
        return "com.google.android.location.internal.GoogleLocationManagerService.START";
    }

    protected String aG() {
        return "com.google.android.gms.location.internal.IGoogleLocationManagerService";
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void addGeofences(java.util.List r4, android.app.PendingIntent r5, com.google.android.gms.location.LocationClient.OnAddGeofencesResultListener r6) {
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.hi.addGeofences(java.util.List, android.app.PendingIntent, com.google.android.gms.location.LocationClient$OnAddGeofencesResultListener):void");
        /*
        r3 = this;
        r3.bm();
        if (r4 == 0) goto L_0x0031;
    L_0x0005:
        r0 = r4.size();
        if (r0 <= 0) goto L_0x0031;
    L_0x000b:
        r0 = 1;
    L_0x000c:
        r1 = "At least one geofence must be specified.";
        com.google.android.gms.internal.er.b(r0, r1);
        r0 = "PendingIntent must be specified.";
        com.google.android.gms.internal.er.b(r5, r0);
        r0 = "OnAddGeofencesResultListener not provided.";
        com.google.android.gms.internal.er.b(r6, r0);
        if (r6 != 0) goto L_0x0033;
    L_0x001d:
        r0 = 0;
        r1 = r0;
    L_0x001f:
        r0 = r3.eb();	 Catch:{ RemoteException -> 0x003a }
        r0 = (com.google.android.gms.internal.hg) r0;	 Catch:{ RemoteException -> 0x003a }
        r2 = r3.getContext();	 Catch:{ RemoteException -> 0x003a }
        r2 = r2.getPackageName();	 Catch:{ RemoteException -> 0x003a }
        r0.a(r4, r5, r1, r2);	 Catch:{ RemoteException -> 0x003a }
        return;
    L_0x0031:
        r0 = 0;
        goto L_0x000c;
    L_0x0033:
        r0 = new com.google.android.gms.internal.hi$b;	 Catch:{ RemoteException -> 0x003a }
        r0.<init>(r6, r3);	 Catch:{ RemoteException -> 0x003a }
        r1 = r0;
        goto L_0x001f;
    L_0x003a:
        r0 = move-exception;
        r1 = new java.lang.IllegalStateException;
        r1.<init>(r0);
        throw r1;
        */
    }

    public void disconnect() {
        synchronized (this.Lq) {
            if (isConnected()) {
                this.Lq.removeAllListeners();
                this.Lq.gl();
            }
            super.disconnect();
        }
    }

    public Location getLastLocation() {
        return this.Lq.getLastLocation();
    }

    protected /* synthetic */ IInterface p(IBinder iBinder) {
        return Q(iBinder);
    }

    public void removeActivityUpdates(PendingIntent pendingIntent) {
        bm();
        er.f(pendingIntent);
        try {
            ((hg) eb()).removeActivityUpdates(pendingIntent);
        } catch (RemoteException e) {
            throw new IllegalStateException(e);
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void removeGeofences(android.app.PendingIntent r4, com.google.android.gms.location.LocationClient.OnRemoveGeofencesResultListener r5) {
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.hi.removeGeofences(android.app.PendingIntent, com.google.android.gms.location.LocationClient$OnRemoveGeofencesResultListener):void");
        /*
        r3 = this;
        r3.bm();
        r0 = "PendingIntent must be specified.";
        com.google.android.gms.internal.er.b(r4, r0);
        r0 = "OnRemoveGeofencesResultListener not provided.";
        com.google.android.gms.internal.er.b(r5, r0);
        if (r5 != 0) goto L_0x0023;
    L_0x000f:
        r0 = 0;
        r1 = r0;
    L_0x0011:
        r0 = r3.eb();	 Catch:{ RemoteException -> 0x002a }
        r0 = (com.google.android.gms.internal.hg) r0;	 Catch:{ RemoteException -> 0x002a }
        r2 = r3.getContext();	 Catch:{ RemoteException -> 0x002a }
        r2 = r2.getPackageName();	 Catch:{ RemoteException -> 0x002a }
        r0.a(r4, r1, r2);	 Catch:{ RemoteException -> 0x002a }
        return;
    L_0x0023:
        r0 = new com.google.android.gms.internal.hi$b;	 Catch:{ RemoteException -> 0x002a }
        r0.<init>(r5, r3);	 Catch:{ RemoteException -> 0x002a }
        r1 = r0;
        goto L_0x0011;
    L_0x002a:
        r0 = move-exception;
        r1 = new java.lang.IllegalStateException;
        r1.<init>(r0);
        throw r1;
        */
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void removeGeofences(java.util.List r5, com.google.android.gms.location.LocationClient.OnRemoveGeofencesResultListener r6) {
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.hi.removeGeofences(java.util.List, com.google.android.gms.location.LocationClient$OnRemoveGeofencesResultListener):void");
        /*
        r4 = this;
        r1 = 0;
        r4.bm();
        if (r5 == 0) goto L_0x0035;
    L_0x0006:
        r0 = r5.size();
        if (r0 <= 0) goto L_0x0035;
    L_0x000c:
        r0 = 1;
    L_0x000d:
        r2 = "geofenceRequestIds can't be null nor empty.";
        com.google.android.gms.internal.er.b(r0, r2);
        r0 = "OnRemoveGeofencesResultListener not provided.";
        com.google.android.gms.internal.er.b(r6, r0);
        r0 = new java.lang.String[r1];
        r0 = r5.toArray(r0);
        r0 = (java.lang.String[]) r0;
        if (r6 != 0) goto L_0x0037;
    L_0x0021:
        r1 = 0;
        r2 = r1;
    L_0x0023:
        r1 = r4.eb();	 Catch:{ RemoteException -> 0x003e }
        r1 = (com.google.android.gms.internal.hg) r1;	 Catch:{ RemoteException -> 0x003e }
        r3 = r4.getContext();	 Catch:{ RemoteException -> 0x003e }
        r3 = r3.getPackageName();	 Catch:{ RemoteException -> 0x003e }
        r1.a(r0, r2, r3);	 Catch:{ RemoteException -> 0x003e }
        return;
    L_0x0035:
        r0 = r1;
        goto L_0x000d;
    L_0x0037:
        r1 = new com.google.android.gms.internal.hi$b;	 Catch:{ RemoteException -> 0x003e }
        r1.<init>(r6, r4);	 Catch:{ RemoteException -> 0x003e }
        r2 = r1;
        goto L_0x0023;
    L_0x003e:
        r0 = move-exception;
        r1 = new java.lang.IllegalStateException;
        r1.<init>(r0);
        throw r1;
        */
    }

    public void removeLocationUpdates(PendingIntent pendingIntent) {
        this.Lq.removeLocationUpdates(pendingIntent);
    }

    public void removeLocationUpdates(LocationListener locationListener) {
        this.Lq.removeLocationUpdates(locationListener);
    }

    public void requestActivityUpdates(long j, PendingIntent pendingIntent) {
        boolean z = true;
        bm();
        er.f(pendingIntent);
        if (j < 0) {
            z = false;
        }
        er.b(z, (Object)"detectionIntervalMillis must be >= 0");
        try {
            ((hg) eb()).a(j, true, pendingIntent);
        } catch (RemoteException e) {
            throw new IllegalStateException(e);
        }
    }

    public void requestLocationUpdates(LocationRequest locationRequest, PendingIntent pendingIntent) {
        this.Lq.requestLocationUpdates(locationRequest, pendingIntent);
    }

    public void requestLocationUpdates(LocationRequest locationRequest, LocationListener locationListener) {
        requestLocationUpdates(locationRequest, locationListener, null);
    }

    public void requestLocationUpdates(LocationRequest locationRequest, LocationListener locationListener, Looper looper) {
        synchronized (this.Lq) {
            this.Lq.requestLocationUpdates(locationRequest, locationListener, looper);
        }
    }

    public void setMockLocation(Location location) {
        this.Lq.setMockLocation(location);
    }

    public void setMockMode(boolean z) {
        this.Lq.setMockMode(z);
    }
}