package com.google.android.gms.common.api;

import android.content.Context;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.GoogleApiClient.ApiOptions;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;
import com.google.android.gms.internal.ee;
import com.google.android.gms.internal.ei;
import com.google.android.gms.internal.er;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

final class b implements GoogleApiClient {
    private int zA;
    private int zB;
    private int zC;
    private boolean zD;
    private int zE;
    private long zF;
    final Handler zG;
    private final Bundle zH;
    private final Map zI;
    private boolean zJ;
    final Set zK;
    final ConnectionCallbacks zL;
    private final com.google.android.gms.internal.ei.b zM;
    private final a zm;
    private final Lock zv;
    private final Condition zw;
    private final ei zx;
    final Queue zy;
    private ConnectionResult zz;

    static interface c {
        void a(a aVar);

        void b(com.google.android.gms.common.api.Api.a aVar);

        com.google.android.gms.common.api.Api.b dp();

        int dr();

        void du();
    }

    static interface a {
        void b(c cVar);
    }

    class AnonymousClass_4 implements OnConnectionFailedListener {
        final /* synthetic */ com.google.android.gms.common.api.Api.b zO;

        AnonymousClass_4(com.google.android.gms.common.api.Api.b bVar) {
            this.zO = bVar;
        }

        public void onConnectionFailed(ConnectionResult connectionResult) {
            b.this.zv.lock();
            if (b.this.zz == null || this.zO.getPriority() < b.this.zA) {
                b.this.zz = connectionResult;
                b.this.zA = this.zO.getPriority();
            }
            b.this.dy();
            b.this.zv.unlock();
        }
    }

    class b extends Handler {
        b(Looper looper) {
            super(looper);
        }

        public void handleMessage(Message message) {
            if (message.what == 1) {
                b.this.zv.lock();
                if (!(b.this.isConnected() || b.this.isConnecting())) {
                    b.this.connect();
                }
                b.this.zv.unlock();
            } else {
                Log.wtf("GoogleApiClientImpl", "Don't know how to handle this message.");
            }
        }
    }

    public b(Context context, Looper looper, ee eeVar, Map map, Set set, Set set2) {
        this.zv = new ReentrantLock();
        this.zw = this.zv.newCondition();
        this.zy = new LinkedList();
        this.zB = 4;
        this.zC = 0;
        this.zD = false;
        this.zF = 5000;
        this.zH = new Bundle();
        this.zI = new HashMap();
        this.zK = new HashSet();
        this.zm = new a() {
            public void b(c cVar) {
                b.this.zv.lock();
                b.this.zK.remove(cVar);
                b.this.zv.unlock();
            }
        };
        this.zL = new ConnectionCallbacks() {
            public void onConnected(Bundle bundle) {
                b.this.zv.lock();
                if (b.this.zB == 1) {
                    if (bundle != null) {
                        b.this.zH.putAll(bundle);
                    }
                    b.this.dy();
                }
                b.this.zv.unlock();
            }

            public void onConnectionSuspended(int i) {
                b.this.zv.lock();
                b.this.G(i);
                switch (i) {
                    case GoogleScorer.CLIENT_GAMES:
                        if (b.this.dA()) {
                            b.this.zv.unlock();
                            return;
                        } else {
                            b.this.zC = GoogleScorer.CLIENT_PLUS;
                            b.this.zG.sendMessageDelayed(b.this.zG.obtainMessage(1), b.this.zF);
                        }
                        break;
                    case GoogleScorer.CLIENT_PLUS:
                        b.this.connect();
                        break;
                }
                b.this.zv.unlock();
            }
        };
        this.zM = new com.google.android.gms.internal.ei.b() {
            public Bundle cY() {
                return null;
            }

            public boolean dC() {
                return b.this.zJ;
            }

            public boolean isConnected() {
                return b.this.isConnected();
            }
        };
        this.zx = new ei(context, looper, this.zM);
        this.zG = new b(looper);
        Iterator it = set.iterator();
        while (it.hasNext()) {
            this.zx.registerConnectionCallbacks((ConnectionCallbacks) it.next());
        }
        it = set2.iterator();
        while (it.hasNext()) {
            this.zx.registerConnectionFailedListener((OnConnectionFailedListener) it.next());
        }
        Iterator it2 = map.keySet().iterator();
        while (it2.hasNext()) {
            Api api = (Api) it2.next();
            com.google.android.gms.common.api.Api.b dp = api.dp();
            ApiOptions apiOptions = (ApiOptions) map.get(api);
            this.zI.put(dp, dp.b(context, looper, eeVar, apiOptions, this.zL, new AnonymousClass_4(dp)));
        }
    }

    private void G(int i) {
        this.zv.lock();
        if (this.zB != 3) {
            if (i == -1) {
                if (isConnecting()) {
                    Iterator it = this.zy.iterator();
                    while (it.hasNext()) {
                        if (((c) it.next()).dr() != 1) {
                            it.remove();
                        }
                    }
                } else {
                    this.zy.clear();
                }
                if (this.zz == null && !this.zy.isEmpty()) {
                    this.zD = true;
                    this.zv.unlock();
                    return;
                }
            }
            boolean isConnecting = isConnecting();
            boolean isConnected = isConnected();
            this.zB = 3;
            if (isConnecting) {
                if (i == -1) {
                    this.zz = null;
                }
                this.zw.signalAll();
            }
            Iterator it2 = this.zK.iterator();
            while (it2.hasNext()) {
                ((c) it2.next()).du();
            }
            this.zK.clear();
            this.zJ = false;
            it2 = this.zI.values().iterator();
            while (it2.hasNext()) {
                com.google.android.gms.common.api.Api.a aVar = (com.google.android.gms.common.api.Api.a) it2.next();
                if (aVar.isConnected()) {
                    aVar.disconnect();
                }
            }
            this.zJ = true;
            this.zB = 4;
            if (isConnected) {
                if (i != -1) {
                    this.zx.P(i);
                }
                this.zJ = false;
            }
        }
        this.zv.unlock();
    }

    private void a(c cVar) {
        this.zv.lock();
        er.a(isConnected(), "GoogleApiClient is not connected yet.");
        er.a(cVar.dp() != null, "This task can not be executed or enqueued (it's probably a Batch or malformed)");
        if (cVar instanceof Releasable) {
            this.zK.add(cVar);
            cVar.a(this.zm);
        }
        cVar.b(a(cVar.dp()));
        this.zv.unlock();
    }

    private boolean dA() {
        boolean z;
        this.zv.lock();
        z = this.zC != 0;
        this.zv.unlock();
        return z;
    }

    private void dB() {
        this.zv.lock();
        this.zC = 0;
        this.zG.removeMessages(1);
        this.zv.unlock();
    }

    private void dy() {
        this.zv.lock();
        this.zE--;
        if (this.zE == 0) {
            if (this.zz != null) {
                this.zD = false;
                G(IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE);
                if (dA()) {
                    this.zC--;
                }
                if (dA()) {
                    this.zG.sendMessageDelayed(this.zG.obtainMessage(1), this.zF);
                } else {
                    this.zx.a(this.zz);
                }
                this.zJ = false;
            } else {
                this.zB = 2;
                dB();
                this.zw.signalAll();
                dz();
                if (this.zD) {
                    this.zD = false;
                    G(-1);
                } else {
                    this.zx.b(this.zH.isEmpty() ? null : this.zH);
                }
            }
        }
        this.zv.unlock();
    }

    private void dz() {
        er.a(isConnected(), "GoogleApiClient is not connected yet.");
        this.zv.lock();
        while (!this.zy.isEmpty()) {
            try {
                a((c) this.zy.remove());
            } catch (DeadObjectException e) {
                Log.w("GoogleApiClientImpl", "Service died while flushing queue", e);
            }
        }
        this.zv.unlock();
    }

    public com.google.android.gms.common.api.Api.a a(com.google.android.gms.common.api.Api.b bVar) {
        Object obj = (com.google.android.gms.common.api.Api.a) this.zI.get(bVar);
        er.b(obj, (Object)"Appropriate Api was not requested.");
        return obj;
    }

    public com.google.android.gms.common.api.a.a a(com.google.android.gms.common.api.a.a aVar) {
        this.zv.lock();
        if (isConnected()) {
            b(aVar);
        } else {
            this.zy.add(aVar);
        }
        this.zv.unlock();
        return aVar;
    }

    public com.google.android.gms.common.api.a.a b_(c cVar) {
        er.a(isConnected(), "GoogleApiClient is not connected yet.");
        dz();
        try {
            a(cVar);
        } catch (DeadObjectException e) {
            G(1);
        }
        return cVar;
    }

    public ConnectionResult blockingConnect(long j, TimeUnit timeUnit) {
        ConnectionResult connectionResult;
        er.a(Looper.myLooper() != Looper.getMainLooper(), "blockingConnect must not be called on the UI thread");
        this.zv.lock();
        connect();
        long toNanos = timeUnit.toNanos(j);
        while (isConnecting()) {
            try {
                toNanos = this.zw.awaitNanos(toNanos);
                if (toNanos <= 0) {
                    connectionResult = new ConnectionResult(14, null);
                    this.zv.unlock();
                    return connectionResult;
                }
            } catch (InterruptedException e) {
                Thread.currentThread().interrupt();
                connectionResult = new ConnectionResult(15, null);
                this.zv.unlock();
                return connectionResult;
            }
        }
        if (isConnected()) {
            connectionResult = ConnectionResult.yI;
            this.zv.unlock();
            return connectionResult;
        } else if (this.zz != null) {
            connectionResult = this.zz;
            this.zv.unlock();
            return connectionResult;
        } else {
            connectionResult = new ConnectionResult(13, null);
            this.zv.unlock();
            return connectionResult;
        }
    }

    public void connect() {
        this.zv.lock();
        this.zD = false;
        if (isConnected() || isConnecting()) {
            this.zv.unlock();
        } else {
            this.zJ = true;
            this.zz = null;
            this.zB = 1;
            this.zH.clear();
            this.zE = this.zI.size();
            Iterator it = this.zI.values().iterator();
            while (it.hasNext()) {
                ((com.google.android.gms.common.api.Api.a) it.next()).connect();
            }
            this.zv.unlock();
        }
    }

    public void disconnect() {
        dB();
        G(-1);
    }

    public boolean isConnected() {
        boolean z;
        this.zv.lock();
        z = this.zB == 2;
        this.zv.unlock();
        return z;
    }

    public boolean isConnecting() {
        boolean z = true;
        this.zv.lock();
        if (this.zB != 1) {
            z = false;
        }
        this.zv.unlock();
        return z;
    }

    public boolean isConnectionCallbacksRegistered(ConnectionCallbacks connectionCallbacks) {
        return this.zx.isConnectionCallbacksRegistered(connectionCallbacks);
    }

    public boolean isConnectionFailedListenerRegistered(OnConnectionFailedListener onConnectionFailedListener) {
        return this.zx.isConnectionFailedListenerRegistered(onConnectionFailedListener);
    }

    public void reconnect() {
        disconnect();
        connect();
    }

    public void registerConnectionCallbacks(ConnectionCallbacks connectionCallbacks) {
        this.zx.registerConnectionCallbacks(connectionCallbacks);
    }

    public void registerConnectionFailedListener(OnConnectionFailedListener onConnectionFailedListener) {
        this.zx.registerConnectionFailedListener(onConnectionFailedListener);
    }

    public void unregisterConnectionCallbacks(ConnectionCallbacks connectionCallbacks) {
        this.zx.unregisterConnectionCallbacks(connectionCallbacks);
    }

    public void unregisterConnectionFailedListener(OnConnectionFailedListener onConnectionFailedListener) {
        this.zx.unregisterConnectionFailedListener(onConnectionFailedListener);
    }
}