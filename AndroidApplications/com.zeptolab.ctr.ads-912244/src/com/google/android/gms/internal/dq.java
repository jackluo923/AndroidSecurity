package com.google.android.gms.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.RemoteException;
import android.text.TextUtils;
import com.google.android.gms.cast.ApplicationMetadata;
import com.google.android.gms.cast.Cast;
import com.google.android.gms.cast.Cast.ApplicationConnectionResult;
import com.google.android.gms.cast.Cast.Listener;
import com.google.android.gms.cast.Cast.MessageReceivedCallback;
import com.google.android.gms.cast.CastDevice;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.a.c;
import com.google.android.gms.internal.eh.e;
import com.zeptolab.ctr.scorer.GoogleScorer;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicLong;

public final class dq extends eh {
    private static final du xE;
    private static final Object xU;
    private static final Object xV;
    private final Handler mHandler;
    private final Listener wz;
    private ApplicationMetadata xF;
    private final CastDevice xG;
    private final dt xH;
    private final Map xI;
    private final long xJ;
    private String xK;
    private boolean xL;
    private boolean xM;
    private final AtomicLong xN;
    private String xO;
    private String xP;
    private Bundle xQ;
    private Map xR;
    private c xS;
    private c xT;
    private double xe;
    private boolean xf;

    private static final class a implements ApplicationConnectionResult {
        private final String pz;
        private final Status vl;
        private final ApplicationMetadata yb;
        private final String yc;
        private final boolean yd;

        public a(Status status) {
            this(status, null, null, null, false);
        }

        public a(Status status, ApplicationMetadata applicationMetadata, String str, String str2, boolean z) {
            this.vl = status;
            this.yb = applicationMetadata;
            this.yc = str;
            this.pz = str2;
            this.yd = z;
        }

        public ApplicationMetadata getApplicationMetadata() {
            return this.yb;
        }

        public String getApplicationStatus() {
            return this.yc;
        }

        public String getSessionId() {
            return this.pz;
        }

        public Status getStatus() {
            return this.vl;
        }

        public boolean getWasLaunched() {
            return this.yd;
        }
    }

    static {
        xE = new du("CastClientImpl");
        xU = new Object();
        xV = new Object();
    }

    public dq(Context context, Looper looper, CastDevice castDevice, long j, Listener listener, ConnectionCallbacks connectionCallbacks, OnConnectionFailedListener onConnectionFailedListener) {
        super(context, looper, connectionCallbacks, onConnectionFailedListener, (String[]) 0);
        this.xG = castDevice;
        this.wz = listener;
        this.xJ = j;
        this.mHandler = new Handler(looper);
        this.xI = new HashMap();
        this.xM = false;
        this.xF = null;
        this.xK = null;
        this.xe = 0.0d;
        this.xf = false;
        this.xN = new AtomicLong(0);
        this.xR = new HashMap();
        this.xH = new com.google.android.gms.internal.dt.a() {

            class AnonymousClass_1 implements Runnable {
                final /* synthetic */ int xX;

                AnonymousClass_1(int i) {
                    this.xX = i;
                }

                public void run() {
                    if (AnonymousClass_1.this.xW.wz != null) {
                        AnonymousClass_1.this.xW.wz.onApplicationDisconnected(this.xX);
                    }
                }
            }

            class AnonymousClass_2 implements Runnable {
                final /* synthetic */ String xZ;
                final /* synthetic */ double xs;
                final /* synthetic */ boolean xt;

                AnonymousClass_2(String str, double d, boolean z) {
                    this.xZ = str;
                    this.xs = d;
                    this.xt = z;
                }

                public void run() {
                    AnonymousClass_1.this.xW.a(this.xZ, this.xs, this.xt);
                }
            }

            class AnonymousClass_3 implements Runnable {
                final /* synthetic */ String wp;
                final /* synthetic */ String ya;

                AnonymousClass_3(String str, String str2) {
                    this.wp = str;
                    this.ya = str2;
                }

                public void run() {
                    synchronized (AnonymousClass_1.this.xW.xI) {
                        MessageReceivedCallback messageReceivedCallback = (MessageReceivedCallback) AnonymousClass_1.this.xW.xI.get(this.wp);
                    }
                    if (messageReceivedCallback != null) {
                        messageReceivedCallback.onMessageReceived(AnonymousClass_1.this.xW.xG, this.wp, this.ya);
                    } else {
                        xE.b("Discarded message for unknown namespace '%s'", new Object[]{this.wp});
                    }
                }
            }

            private boolean D(int i) {
                synchronized (xV) {
                    if (dq.this.xT != null) {
                        dq.this.xT.b(new Status(i));
                        dq.this.xT = null;
                        return true;
                    } else {
                        return false;
                    }
                }
            }

            private void b(long j, int i) {
                synchronized (dq.this.xR) {
                    c cVar = (c) dq.this.xR.remove(Long.valueOf(j));
                }
                if (cVar != null) {
                    cVar.b(new Status(i));
                }
            }

            public void A(int i) {
                synchronized (xU) {
                    if (dq.this.xS != null) {
                        dq.this.xS.b(new a(new Status(i)));
                        dq.this.xS = null;
                    }
                }
            }

            public void B(int i) {
                D(i);
            }

            public void C(int i) {
                D(i);
            }

            public void a(ApplicationMetadata applicationMetadata, String str, String str2, boolean z) {
                dq.this.xF = applicationMetadata;
                dq.this.xO = applicationMetadata.getApplicationId();
                dq.this.xP = str2;
                synchronized (xU) {
                    if (dq.this.xS != null) {
                        dq.this.xS.b(new a(new Status(0), applicationMetadata, str, str2, z));
                        dq.this.xS = null;
                    }
                }
            }

            public void a(String str, long j) {
                b(j, 0);
            }

            public void a(String str, long j, int i) {
                b(j, i);
            }

            public void b(String str, double d, boolean z) {
                dq.this.mHandler.post(new AnonymousClass_2(str, d, z));
            }

            public void b(String str, byte[] bArr) {
                xE.b("IGNORING: Receive (type=binary, ns=%s) <%d bytes>", new Object[]{str, Integer.valueOf(bArr.length)});
            }

            public void d(String str, String str2) {
                xE.b("Receive (type=text, ns=%s) %s", new Object[]{str, str2});
                dq.this.mHandler.post(new AnonymousClass_3(str, str2));
            }

            public void onApplicationDisconnected(int i) {
                dq.this.xO = null;
                dq.this.xP = null;
                if (!D(i) && dq.this.wz != null) {
                    dq.this.mHandler.post(new AnonymousClass_1(i));
                }
            }

            public void z(int i) {
                xE.b("ICastDeviceControllerListener.onDisconnected: %d", new Object[]{Integer.valueOf(i)});
                dq.this.xM = false;
                dq.this.xF = null;
                if (i != 0) {
                    dq.this.O(GoogleScorer.CLIENT_PLUS);
                }
            }
        };
    }

    private void a(String str, double d, boolean z) {
        boolean z2;
        if (dr.a(str, this.xK)) {
            z2 = false;
        } else {
            this.xK = str;
            z2 = true;
        }
        if (this.wz != null) {
            if (i != 0 || this.xL) {
                this.wz.onApplicationStatusChanged();
            }
        }
        if (d != this.xe) {
            this.xe = d;
            z2 = true;
        } else {
            z2 = false;
        }
        if (z != this.xf) {
            this.xf = z;
            z2 = true;
        }
        xE.b("hasChange=%b, mFirstStatusUpdate=%b", new Object[]{Boolean.valueOf(z2), Boolean.valueOf(this.xL)});
        if (this.wz != null) {
            if (z2 || this.xL) {
                this.wz.onVolumeChanged();
            }
        }
        this.xL = false;
    }

    private void d(c cVar) {
        synchronized (xU) {
            if (this.xS != null) {
                this.xS.b(new a(new Status(2002)));
            }
            this.xS = cVar;
        }
    }

    private void db() {
        if (!this.xM) {
            throw new IllegalStateException("not connected to a device");
        }
    }

    private void f(c cVar) {
        synchronized (xV) {
            if (this.xT != null) {
                cVar.b(new Status(2001));
            } else {
                this.xT = cVar;
            }
        }
    }

    public void Q(String str) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("Channel namespace cannot be null or empty");
        }
        synchronized (this.xI) {
            MessageReceivedCallback messageReceivedCallback = (MessageReceivedCallback) this.xI.remove(str);
        }
        if (messageReceivedCallback != null) {
            try {
                ((ds) eb()).T(str);
            } catch (IllegalStateException e) {
                Throwable th = e;
                xE.a(th, "Error unregistering namespace (%s): %s", new Object[]{str, th.getMessage()});
            }
        }
    }

    public void a(double d) {
        if (Double.isInfinite(d) || Double.isNaN(d)) {
            throw new IllegalArgumentException("Volume cannot be " + d);
        }
        ((ds) eb()).a(d, this.xe, this.xf);
    }

    protected void a(int i, IBinder iBinder, Bundle bundle) {
        if (i == 0 || i == 1001) {
            this.xM = true;
            this.xL = true;
        } else {
            this.xM = false;
        }
        if (i == 1001) {
            this.xQ = new Bundle();
            this.xQ.putBoolean(Cast.EXTRA_APP_NO_LONGER_RUNNING, true);
            i = 0;
        }
        super.a(i, iBinder, bundle);
    }

    protected void a(en enVar, e eVar) {
        Bundle bundle = new Bundle();
        xE.b("getServiceFromBroker(): mLastApplicationId=%s, mLastSessionId=%s", new Object[]{this.xO, this.xP});
        this.xG.putInBundle(bundle);
        bundle.putLong("com.google.android.gms.cast.EXTRA_CAST_FLAGS", this.xJ);
        if (this.xO != null) {
            bundle.putString("last_application_id", this.xO);
            if (this.xP != null) {
                bundle.putString("last_session_id", this.xP);
            }
        }
        enVar.a((em)eVar, (int)GooglePlayServicesUtil.GOOGLE_PLAY_SERVICES_VERSION_CODE, getContext().getPackageName(), this.xH.asBinder(), bundle);
    }

    public void a(String str, MessageReceivedCallback messageReceivedCallback) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("Channel namespace cannot be null or empty");
        }
        Q(str);
        if (messageReceivedCallback != null) {
            synchronized (this.xI) {
                this.xI.put(str, messageReceivedCallback);
            }
            ((ds) eb()).S(str);
        }
    }

    public void a(String str, c cVar) {
        f(cVar);
        ((ds) eb()).R(str);
    }

    public void a(String str, String str2, c cVar) {
        if (TextUtils.isEmpty(str2)) {
            throw new IllegalArgumentException("The message payload cannot be null or empty");
        } else if (str == null || str.length() > 128) {
            throw new IllegalArgumentException("Invalid namespace length");
        } else if (str2.length() > 65536) {
            throw new IllegalArgumentException("Message exceeds maximum size");
        } else {
            db();
            long incrementAndGet = this.xN.incrementAndGet();
            ((ds) eb()).a(str, str2, incrementAndGet);
            this.xR.put(Long.valueOf(incrementAndGet), cVar);
        }
    }

    public void a(String str, boolean z, c cVar) {
        d(cVar);
        ((ds) eb()).e(str, z);
    }

    protected String aF() {
        return "com.google.android.gms.cast.service.BIND_CAST_DEVICE_CONTROLLER_SERVICE";
    }

    protected String aG() {
        return "com.google.android.gms.cast.internal.ICastDeviceController";
    }

    public void b(String str, String str2, c cVar) {
        d(cVar);
        ((ds) eb()).e(str, str2);
    }

    public Bundle cY() {
        if (this.xQ == null) {
            return super.cY();
        }
        Bundle bundle = this.xQ;
        this.xQ = null;
        return bundle;
    }

    public void cZ() {
        ((ds) eb()).cZ();
    }

    public double da() {
        db();
        return this.xe;
    }

    public void disconnect() {
        try {
            if (isConnected()) {
                synchronized (this.xI) {
                    this.xI.clear();
                }
                ((ds) eb()).disconnect();
            }
        } catch (RemoteException e) {
            RemoteException remoteException = e;
            xE.b("Error while disconnecting the controller interface: %s", new Object[]{remoteException.getMessage()});
        }
        super.disconnect();
    }

    public void e(c cVar) {
        f(cVar);
        ((ds) eb()).df();
    }

    public ApplicationMetadata getApplicationMetadata() {
        db();
        return this.xF;
    }

    public String getApplicationStatus() {
        db();
        return this.xK;
    }

    public boolean isMute() {
        db();
        return this.xf;
    }

    protected /* synthetic */ IInterface p(IBinder iBinder) {
        return v(iBinder);
    }

    public void t(boolean z) {
        ((ds) eb()).a(z, this.xe, this.xf);
    }

    protected ds v(IBinder iBinder) {
        return com.google.android.gms.internal.ds.a.w(iBinder);
    }
}