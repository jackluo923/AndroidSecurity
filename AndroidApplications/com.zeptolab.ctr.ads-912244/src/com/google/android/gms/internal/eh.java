package com.google.android.gms.internal;

import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GooglePlayServicesClient;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;
import com.google.android.gms.common.data.DataHolder;
import com.zeptolab.ctr.ads.R;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import com.zeptolab.zbuild.ZBuildConfig;
import java.util.ArrayList;

public abstract class eh implements GooglePlayServicesClient, com.google.android.gms.common.api.Api.a, com.google.android.gms.internal.ei.b {
    public static final String[] BB;
    boolean BA;
    private IInterface Bv;
    private final ArrayList Bw;
    private f Bx;
    private volatile int By;
    private final String[] Bz;
    private final Context mContext;
    final Handler mHandler;
    private final Looper zs;
    private final ei zx;

    protected abstract class b {
        private boolean BD;
        private Object mListener;

        public b(Object obj) {
            this.mListener = obj;
            this.BD = false;
        }

        protected abstract void a(Object obj);

        protected abstract void cP();

        public void ec() {
            synchronized (this) {
                Object obj = this.mListener;
                if (this.BD) {
                    Log.w("GmsClient", "Callback proxy " + this + " being reused. This is not safe.");
                }
            }
            if (obj != null) {
                try {
                    a(obj);
                } catch (RuntimeException e) {
                    RuntimeException runtimeException = e;
                    cP();
                    throw runtimeException;
                }
            } else {
                cP();
            }
            synchronized (this) {
                this.BD = true;
            }
            unregister();
        }

        public void ed() {
            synchronized (this) {
                this.mListener = null;
            }
        }

        public void unregister() {
            ed();
            synchronized (eh.this.Bw) {
                eh.this.Bw.remove(this);
            }
        }
    }

    public abstract class d extends b {
        private final DataHolder zU;

        public d(Object obj, DataHolder dataHolder) {
            super(obj);
            this.zU = dataHolder;
        }

        protected final void a(Object obj) {
            a(obj, this.zU);
        }

        protected abstract void a(Object obj, DataHolder dataHolder);

        protected void cP() {
            if (this.zU != null) {
                this.zU.close();
            }
        }

        public /* bridge */ /* synthetic */ void ec() {
            super.ec();
        }

        public /* bridge */ /* synthetic */ void ed() {
            super.ed();
        }

        public /* bridge */ /* synthetic */ void unregister() {
            super.unregister();
        }
    }

    final class a extends Handler {
        public a(Looper looper) {
            super(looper);
        }

        public void handleMessage(Message message) {
            b bVar;
            if (message.what == 1 && !eh.this.isConnecting()) {
                bVar = (b) message.obj;
                bVar.cP();
                bVar.unregister();
            } else if (message.what == 3) {
                eh.this.zx.a(new ConnectionResult(((Integer) message.obj).intValue(), null));
            } else if (message.what == 4) {
                eh.this.By = 1;
                eh.this.Bv = null;
                eh.this.zx.P(((Integer) message.obj).intValue());
            } else if (message.what == 2 && !eh.this.isConnected()) {
                bVar = (b) message.obj;
                bVar.cP();
                bVar.unregister();
            } else if (message.what == 2 || message.what == 1) {
                ((b) message.obj).ec();
            } else {
                Log.wtf("GmsClient", "Don't know how to handle this message.");
            }
        }
    }

    public static final class c implements ConnectionCallbacks {
        private final GooglePlayServicesClient.ConnectionCallbacks BE;

        public c(GooglePlayServicesClient.ConnectionCallbacks connectionCallbacks) {
            this.BE = connectionCallbacks;
        }

        public boolean equals(Object obj) {
            return obj instanceof com.google.android.gms.internal.eh.c ? this.BE.equals(((com.google.android.gms.internal.eh.c) obj).BE) : this.BE.equals(obj);
        }

        public void onConnected(Bundle bundle) {
            this.BE.onConnected(bundle);
        }

        public void onConnectionSuspended(int i) {
            this.BE.onDisconnected();
        }
    }

    public static final class e extends com.google.android.gms.internal.em.a {
        private eh BF;

        public e(eh ehVar) {
            this.BF = ehVar;
        }

        public void b(int i, IBinder iBinder, Bundle bundle) {
            er.b((Object)"onPostInitComplete can be called only once per call to getServiceFromBroker", this.BF);
            this.BF.a(i, iBinder, bundle);
            this.BF = null;
        }
    }

    final class f implements ServiceConnection {
        f() {
        }

        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            eh.this.x(iBinder);
        }

        public void onServiceDisconnected(ComponentName componentName) {
            eh.this.mHandler.sendMessage(eh.this.mHandler.obtainMessage(GoogleScorer.CLIENT_APPSTATE, Integer.valueOf(1)));
        }
    }

    public static final class g implements OnConnectionFailedListener {
        private final GooglePlayServicesClient.OnConnectionFailedListener BG;

        public g(GooglePlayServicesClient.OnConnectionFailedListener onConnectionFailedListener) {
            this.BG = onConnectionFailedListener;
        }

        public boolean equals(Object obj) {
            return obj instanceof com.google.android.gms.internal.eh.g ? this.BG.equals(((com.google.android.gms.internal.eh.g) obj).BG) : this.BG.equals(obj);
        }

        public void onConnectionFailed(ConnectionResult connectionResult) {
            this.BG.onConnectionFailed(connectionResult);
        }
    }

    protected final class h extends b {
        public final Bundle BH;
        public final IBinder BI;
        public final int statusCode;

        public h(int i, IBinder iBinder, Bundle bundle) {
            super(Boolean.valueOf(true));
            this.statusCode = i;
            this.BI = iBinder;
            this.BH = bundle;
        }

        protected /* synthetic */ void a(Object obj) {
            b((Boolean) obj);
        }

        protected void b(Boolean bool) {
            if (bool == null) {
                eh.this.By = 1;
            } else {
                switch (this.statusCode) {
                    case IabHelper.BILLING_RESPONSE_RESULT_OK:
                        try {
                            if (eh.this.aG().equals(this.BI.getInterfaceDescriptor())) {
                                eh.this.Bv = eh.this.p(this.BI);
                                if (eh.this.Bv != null) {
                                    eh.this.By = IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE;
                                    eh.this.zx.bo();
                                    return;
                                }
                            }
                        } catch (RemoteException e) {
                        }
                        ej.y(eh.this.mContext).b(eh.this.aF(), eh.this.Bx);
                        eh.this.Bx = null;
                        eh.this.By = 1;
                        eh.this.Bv = null;
                        eh.this.zx.a(new ConnectionResult(8, null));
                    case R.styleable.MapAttrs_uiZoomControls:
                        eh.this.By = 1;
                        throw new IllegalStateException("A fatal developer error has occurred. Check the logs for further information.");
                    default:
                        PendingIntent pendingIntent;
                        pendingIntent = this.BH != null ? (PendingIntent) this.BH.getParcelable("pendingIntent") : null;
                        if (eh.this.Bx != null) {
                            ej.y(eh.this.mContext).b(eh.this.aF(), eh.this.Bx);
                            eh.this.Bx = null;
                        }
                        eh.this.By = 1;
                        eh.this.Bv = null;
                        eh.this.zx.a(new ConnectionResult(this.statusCode, pendingIntent));
                }
            }
        }

        protected void cP() {
        }
    }

    static {
        BB = new String[]{"service_esmobile", "service_googleme"};
    }

    protected eh(Context context, Object obj, ConnectionCallbacks connectionCallbacks, OnConnectionFailedListener onConnectionFailedListener, String... strArr) {
        this.Bw = new ArrayList();
        this.By = 1;
        this.BA = false;
        this.mContext = (Context) er.f(context);
        this.zs = (Looper) er.b(obj, (Object)"Looper must not be null");
        this.zx = new ei(context, obj, this);
        this.mHandler = new a(obj);
        b(strArr);
        this.Bz = strArr;
        registerConnectionCallbacks((ConnectionCallbacks) er.f(connectionCallbacks));
        registerConnectionFailedListener((OnConnectionFailedListener) er.f(onConnectionFailedListener));
    }

    protected eh(Context context, GooglePlayServicesClient.ConnectionCallbacks connectionCallbacks, GooglePlayServicesClient.OnConnectionFailedListener onConnectionFailedListener, String... strArr) {
        this(context, context.getMainLooper(), new c(connectionCallbacks), new g(onConnectionFailedListener), strArr);
    }

    public void O(int i) {
        this.mHandler.sendMessage(this.mHandler.obtainMessage(GoogleScorer.CLIENT_APPSTATE, Integer.valueOf(i)));
    }

    protected void a(int i, IBinder iBinder, Bundle bundle) {
        this.mHandler.sendMessage(this.mHandler.obtainMessage(1, new h(i, iBinder, bundle)));
    }

    public final void a(b bVar) {
        synchronized (this.Bw) {
            this.Bw.add(bVar);
        }
        this.mHandler.sendMessage(this.mHandler.obtainMessage(GoogleScorer.CLIENT_PLUS, bVar));
    }

    protected abstract void a(en enVar, e eVar);

    protected abstract String aF();

    protected abstract String aG();

    protected void b(String... strArr) {
    }

    protected final void bm() {
        if (!isConnected()) {
            throw new IllegalStateException("Not connected. Call connect() and wait for onConnected() to be called.");
        }
    }

    public Bundle cY() {
        return null;
    }

    public void connect() {
        this.BA = true;
        this.By = 2;
        int isGooglePlayServicesAvailable = GooglePlayServicesUtil.isGooglePlayServicesAvailable(this.mContext);
        if (isGooglePlayServicesAvailable != 0) {
            this.By = 1;
            this.mHandler.sendMessage(this.mHandler.obtainMessage(IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, Integer.valueOf(isGooglePlayServicesAvailable)));
        } else {
            if (this.Bx != null) {
                Log.e("GmsClient", "Calling connect() while still connected, missing disconnect().");
                this.Bv = null;
                ej.y(this.mContext).b(aF(), this.Bx);
            }
            this.Bx = new f();
            if (!ej.y(this.mContext).a(aF(), this.Bx)) {
                Log.e("GmsClient", "unable to connect to service: " + aF());
                this.mHandler.sendMessage(this.mHandler.obtainMessage(IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, Integer.valueOf(ZBuildConfig.$minsdk)));
            }
        }
    }

    public boolean dC() {
        return this.BA;
    }

    public void disconnect() {
        this.BA = false;
        synchronized (this.Bw) {
            int size = this.Bw.size();
            int i = 0;
            while (i < size) {
                ((b) this.Bw.get(i)).ed();
                i++;
            }
            this.Bw.clear();
        }
        this.By = 1;
        this.Bv = null;
        if (this.Bx != null) {
            ej.y(this.mContext).b(aF(), this.Bx);
            this.Bx = null;
        }
    }

    public final String[] ea() {
        return this.Bz;
    }

    protected final IInterface eb() {
        bm();
        return this.Bv;
    }

    public final Context getContext() {
        return this.mContext;
    }

    public final Looper getLooper() {
        return this.zs;
    }

    public boolean isConnected() {
        return this.By == 3;
    }

    public boolean isConnecting() {
        return this.By == 2;
    }

    public boolean isConnectionCallbacksRegistered(GooglePlayServicesClient.ConnectionCallbacks connectionCallbacks) {
        return this.zx.isConnectionCallbacksRegistered(new c(connectionCallbacks));
    }

    public boolean isConnectionFailedListenerRegistered(GooglePlayServicesClient.OnConnectionFailedListener onConnectionFailedListener) {
        return this.zx.isConnectionFailedListenerRegistered(onConnectionFailedListener);
    }

    protected abstract IInterface p(IBinder iBinder);

    public void registerConnectionCallbacks(GooglePlayServicesClient.ConnectionCallbacks connectionCallbacks) {
        this.zx.registerConnectionCallbacks(new c(connectionCallbacks));
    }

    public void registerConnectionCallbacks(ConnectionCallbacks connectionCallbacks) {
        this.zx.registerConnectionCallbacks(connectionCallbacks);
    }

    public void registerConnectionFailedListener(GooglePlayServicesClient.OnConnectionFailedListener onConnectionFailedListener) {
        this.zx.registerConnectionFailedListener(onConnectionFailedListener);
    }

    public void registerConnectionFailedListener(OnConnectionFailedListener onConnectionFailedListener) {
        this.zx.registerConnectionFailedListener(onConnectionFailedListener);
    }

    public void unregisterConnectionCallbacks(GooglePlayServicesClient.ConnectionCallbacks connectionCallbacks) {
        this.zx.unregisterConnectionCallbacks(new c(connectionCallbacks));
    }

    public void unregisterConnectionFailedListener(GooglePlayServicesClient.OnConnectionFailedListener onConnectionFailedListener) {
        this.zx.unregisterConnectionFailedListener(onConnectionFailedListener);
    }

    protected final void x(IBinder iBinder) {
        try {
            a(com.google.android.gms.internal.en.a.z(iBinder), new e(this));
        } catch (RemoteException e) {
            Log.w("GmsClient", "service died");
        }
    }
}