package com.google.android.gms.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GooglePlayServicesClient.OnConnectionFailedListener;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import java.util.ArrayList;

public final class ei {
    private final b BJ;
    private ArrayList BK;
    final ArrayList BL;
    private boolean BM;
    private ArrayList BN;
    private boolean BO;
    private final Handler mHandler;

    public static interface b {
        Bundle cY();

        boolean dC();

        boolean isConnected();
    }

    final class a extends Handler {
        public a(Looper looper) {
            super(looper);
        }

        public void handleMessage(Message message) {
            if (message.what == 1) {
                synchronized (ei.this.BK) {
                    if (ei.this.BJ.dC() && ei.this.BJ.isConnected() && ei.this.BK.contains(message.obj)) {
                        ((ConnectionCallbacks) message.obj).onConnected(ei.this.BJ.cY());
                    }
                }
            } else {
                Log.wtf("GmsClientEvents", "Don't know how to handle this message.");
            }
        }
    }

    public ei(Context context, Looper looper, b bVar) {
        this.BL = new ArrayList();
        this.BM = false;
        this.BO = false;
        this.BK = new ArrayList();
        this.BN = new ArrayList();
        this.BJ = bVar;
        this.mHandler = new a(looper);
    }

    public void P(int i) {
        this.mHandler.removeMessages(1);
        synchronized (this.BK) {
            this.BM = true;
            ArrayList arrayList = this.BK;
            int size = arrayList.size();
            int i2 = 0;
            while (i2 < size && this.BJ.dC()) {
                if (this.BK.contains(arrayList.get(i2))) {
                    ((ConnectionCallbacks) arrayList.get(i2)).onConnectionSuspended(i);
                }
                i2++;
            }
            this.BM = false;
        }
    }

    public void a(ConnectionResult connectionResult) {
        this.mHandler.removeMessages(1);
        synchronized (this.BN) {
            this.BO = true;
            ArrayList arrayList = this.BN;
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                if (this.BJ.dC()) {
                    if (this.BN.contains(arrayList.get(i))) {
                        ((OnConnectionFailedListener) arrayList.get(i)).onConnectionFailed(connectionResult);
                    }
                    i++;
                } else {
                    return;
                }
            }
            this.BO = false;
        }
    }

    public void b(Bundle bundle) {
        boolean z = true;
        synchronized (this.BK) {
            er.v(!this.BM);
            this.mHandler.removeMessages(1);
            this.BM = true;
            if (this.BL.size() != 0) {
                z = false;
            }
            er.v(z);
            ArrayList arrayList = this.BK;
            int size = arrayList.size();
            int i = 0;
            while (i < size && this.BJ.dC() && this.BJ.isConnected()) {
                this.BL.size();
                if (!this.BL.contains(arrayList.get(i))) {
                    ((ConnectionCallbacks) arrayList.get(i)).onConnected(bundle);
                }
                i++;
            }
            this.BL.clear();
            this.BM = false;
        }
    }

    protected void bo() {
        synchronized (this.BK) {
            b(this.BJ.cY());
        }
    }

    public boolean isConnectionCallbacksRegistered(ConnectionCallbacks connectionCallbacks) {
        boolean contains;
        er.f(connectionCallbacks);
        synchronized (this.BK) {
            contains = this.BK.contains(connectionCallbacks);
        }
        return contains;
    }

    public boolean isConnectionFailedListenerRegistered(OnConnectionFailedListener onConnectionFailedListener) {
        boolean contains;
        er.f(onConnectionFailedListener);
        synchronized (this.BN) {
            contains = this.BN.contains(onConnectionFailedListener);
        }
        return contains;
    }

    public void registerConnectionCallbacks(ConnectionCallbacks connectionCallbacks) {
        er.f(connectionCallbacks);
        synchronized (this.BK) {
            if (this.BK.contains(connectionCallbacks)) {
                Log.w("GmsClientEvents", "registerConnectionCallbacks(): listener " + connectionCallbacks + " is already registered");
            } else {
                if (this.BM) {
                    this.BK = new ArrayList(this.BK);
                }
                this.BK.add(connectionCallbacks);
            }
        }
        if (this.BJ.isConnected()) {
            this.mHandler.sendMessage(this.mHandler.obtainMessage(1, connectionCallbacks));
        }
    }

    public void registerConnectionFailedListener(OnConnectionFailedListener onConnectionFailedListener) {
        er.f(onConnectionFailedListener);
        synchronized (this.BN) {
            if (this.BN.contains(onConnectionFailedListener)) {
                Log.w("GmsClientEvents", "registerConnectionFailedListener(): listener " + onConnectionFailedListener + " is already registered");
            } else {
                if (this.BO) {
                    this.BN = new ArrayList(this.BN);
                }
                this.BN.add(onConnectionFailedListener);
            }
        }
    }

    public void unregisterConnectionCallbacks(ConnectionCallbacks connectionCallbacks) {
        er.f(connectionCallbacks);
        synchronized (this.BK) {
            if (this.BK != null) {
                if (this.BM) {
                    this.BK = new ArrayList(this.BK);
                }
                if (!this.BK.remove(connectionCallbacks)) {
                    Log.w("GmsClientEvents", "unregisterConnectionCallbacks(): listener " + connectionCallbacks + " not found");
                } else if (this.BM && !this.BL.contains(connectionCallbacks)) {
                    this.BL.add(connectionCallbacks);
                }
            }
        }
    }

    public void unregisterConnectionFailedListener(OnConnectionFailedListener onConnectionFailedListener) {
        er.f(onConnectionFailedListener);
        synchronized (this.BN) {
            if (this.BN != null) {
                if (this.BO) {
                    this.BN = new ArrayList(this.BN);
                }
                if (!this.BN.remove(onConnectionFailedListener)) {
                    Log.w("GmsClientEvents", "unregisterConnectionFailedListener(): listener " + onConnectionFailedListener + " not found");
                }
            }
        }
    }
}