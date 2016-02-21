package com.google.android.gms.analytics;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.google.android.gms.internal.dj;
import com.zeptolab.ctr.scorer.GoogleScorer;
import java.util.List;
import java.util.Map;

class c implements b {
    private Context mContext;
    private ServiceConnection qM;
    private b qN;
    private c qO;
    private dj qP;

    final class a implements ServiceConnection {
        a() {
        }

        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            aa.v("service connected, binder: " + iBinder);
            try {
                if ("com.google.android.gms.analytics.internal.IAnalyticsService".equals(iBinder.getInterfaceDescriptor())) {
                    aa.v("bound to service");
                    c.this.qP = com.google.android.gms.internal.dj.a.r(iBinder);
                    c.this.bn();
                    return;
                }
            } catch (RemoteException e) {
            }
            c.this.mContext.unbindService(this);
            c.this.qM = null;
            c.this.qO.a(GoogleScorer.CLIENT_PLUS, null);
        }

        public void onServiceDisconnected(ComponentName componentName) {
            aa.v("service disconnected: " + componentName);
            c.this.qM = null;
            c.this.qN.onDisconnected();
        }
    }

    public static interface b {
        void onConnected();

        void onDisconnected();
    }

    public static interface c {
        void a(int i, Intent intent);
    }

    public c(Context context, b bVar, c cVar) {
        this.mContext = context;
        if (bVar == null) {
            throw new IllegalArgumentException("onConnectedListener cannot be null");
        }
        this.qN = bVar;
        if (cVar == null) {
            throw new IllegalArgumentException("onConnectionFailedListener cannot be null");
        }
        this.qO = cVar;
    }

    private dj bl() {
        bm();
        return this.qP;
    }

    private void bn() {
        bo();
    }

    private void bo() {
        this.qN.onConnected();
    }

    public void a(Map map, long j, String str, List list) {
        try {
            bl().a(map, j, str, list);
        } catch (RemoteException e) {
            aa.t("sendHit failed: " + e);
        }
    }

    public void bk() {
        try {
            bl().bk();
        } catch (RemoteException e) {
            aa.t("clear hits failed: " + e);
        }
    }

    protected void bm() {
        if (!isConnected()) {
            throw new IllegalStateException("Not connected. Call connect() and wait for onConnected() to be called.");
        }
    }

    public void connect() {
        Intent intent = new Intent("com.google.android.gms.analytics.service.START");
        intent.setComponent(new ComponentName(GooglePlayServicesUtil.GOOGLE_PLAY_SERVICES_PACKAGE, "com.google.android.gms.analytics.service.AnalyticsService"));
        intent.putExtra("app_package_name", this.mContext.getPackageName());
        if (this.qM != null) {
            aa.t("Calling connect() while still connected, missing disconnect().");
        } else {
            this.qM = new a();
            boolean bindService = this.mContext.bindService(intent, this.qM, 129);
            aa.v("connect: bindService returned " + bindService + " for " + intent);
            if (!bindService) {
                this.qM = null;
                this.qO.a(1, null);
            }
        }
    }

    public void disconnect() {
        this.qP = null;
        if (this.qM != null) {
            try {
                this.mContext.unbindService(this.qM);
            } catch (IllegalStateException e) {
            } catch (IllegalArgumentException e2) {
            }
            this.qM = null;
            this.qN.onDisconnected();
        }
    }

    public boolean isConnected() {
        return this.qP != null;
    }
}