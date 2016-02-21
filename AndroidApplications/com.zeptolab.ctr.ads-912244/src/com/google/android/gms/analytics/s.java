package com.google.android.gms.analytics;

import android.content.Context;
import android.content.Intent;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Queue;
import java.util.Timer;
import java.util.TimerTask;
import java.util.concurrent.ConcurrentLinkedQueue;

class s implements ag, com.google.android.gms.analytics.c.b, com.google.android.gms.analytics.c.c {
    private final Context mContext;
    private final GoogleAnalytics rA;
    private final Queue rB;
    private volatile int rC;
    private volatile Timer rD;
    private volatile Timer rE;
    private volatile Timer rF;
    private boolean rG;
    private boolean rH;
    private boolean rI;
    private i rJ;
    private long rK;
    private d rj;
    private final f rk;
    private boolean rm;
    private volatile long rw;
    private volatile a rx;
    private volatile b ry;
    private d rz;

    static /* synthetic */ class AnonymousClass_3 {
        static final /* synthetic */ int[] rM;

        static {
            rM = new int[a.values().length];
            try {
                rM[a.rP.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                rM[a.rO.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                rM[a.rN.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                rM[a.rR.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                rM[a.rS.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            rM[a.rT.ordinal()] = 6;
        }
    }

    private enum a {
        CONNECTING,
        CONNECTED_SERVICE,
        CONNECTED_LOCAL,
        BLOCKED,
        PENDING_CONNECTION,
        PENDING_DISCONNECT,
        DISCONNECTED;

        static {
            rN = new a("CONNECTING", 0);
            rO = new a("CONNECTED_SERVICE", 1);
            rP = new a("CONNECTED_LOCAL", 2);
            rQ = new a("BLOCKED", 3);
            rR = new a("PENDING_CONNECTION", 4);
            rS = new a("PENDING_DISCONNECT", 5);
            rT = new a("DISCONNECTED", 6);
            rU = new a[]{rN, rO, rP, rQ, rR, rS, rT};
        }
    }

    private class b extends TimerTask {
        private b() {
        }

        public void run() {
            if (s.this.rx == a.rO && s.this.rB.isEmpty() && s.this.rw + s.this.rK < s.this.rJ.currentTimeMillis()) {
                aa.v("Disconnecting due to inactivity");
                s.this.aD();
            } else {
                s.this.rF.schedule(new b(), s.this.rK);
            }
        }
    }

    private class c extends TimerTask {
        private c() {
        }

        public void run() {
            if (s.this.rx == a.rN) {
                s.this.bL();
            }
        }
    }

    private static class d {
        private final Map rV;
        private final long rW;
        private final String rX;
        private final List rY;

        public d(Map map, long j, String str, List list) {
            this.rV = map;
            this.rW = j;
            this.rX = str;
            this.rY = list;
        }

        public Map bO() {
            return this.rV;
        }

        public long bP() {
            return this.rW;
        }

        public List bQ() {
            return this.rY;
        }

        public String getPath() {
            return this.rX;
        }

        public String toString() {
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("PATH: ");
            stringBuilder.append(this.rX);
            if (this.rV != null) {
                stringBuilder.append("  PARAMS: ");
                Iterator it = this.rV.entrySet().iterator();
                while (it.hasNext()) {
                    Entry entry = (Entry) it.next();
                    stringBuilder.append((String) entry.getKey());
                    stringBuilder.append("=");
                    stringBuilder.append((String) entry.getValue());
                    stringBuilder.append(",  ");
                }
            }
            return stringBuilder.toString();
        }
    }

    private class e extends TimerTask {
        private e() {
        }

        public void run() {
            s.this.bM();
        }
    }

    s(Context context, f fVar) {
        this(context, fVar, null, GoogleAnalytics.getInstance(context));
    }

    s(Context context, f fVar, d dVar, GoogleAnalytics googleAnalytics) {
        this.rB = new ConcurrentLinkedQueue();
        this.rK = 300000;
        this.rz = dVar;
        this.mContext = context;
        this.rk = fVar;
        this.rA = googleAnalytics;
        this.rJ = new i() {
            public long currentTimeMillis() {
                return System.currentTimeMillis();
            }
        };
        this.rC = 0;
        this.rx = a.rT;
    }

    private Timer a(Timer timer) {
        if (timer != null) {
            timer.cancel();
        }
        return null;
    }

    private synchronized void aD() {
        if (this.ry != null && this.rx == a.rO) {
            this.rx = a.rS;
            this.ry.disconnect();
        }
    }

    private void bH() {
        this.rD = a(this.rD);
        this.rE = a(this.rE);
        this.rF = a(this.rF);
    }

    private synchronized void bJ() {
        if (Thread.currentThread().equals(this.rk.getThread())) {
            if (this.rG) {
                bk();
            }
            d dVar;
            switch (AnonymousClass_3.rM[this.rx.ordinal()]) {
                case GoogleScorer.CLIENT_GAMES:
                    while (!this.rB.isEmpty()) {
                        dVar = (d) this.rB.poll();
                        aa.v("Sending hit to store  " + dVar);
                        this.rj.a(dVar.bO(), dVar.bP(), dVar.getPath(), dVar.bQ());
                    }
                    if (this.rm) {
                        bK();
                    }
                    break;
                case GoogleScorer.CLIENT_PLUS:
                    while (!this.rB.isEmpty()) {
                        dVar = (d) this.rB.peek();
                        aa.v("Sending hit to service   " + dVar);
                        if (this.rA.isDryRunEnabled()) {
                            aa.v("Dry run enabled. Hit not actually sent to service.");
                        } else {
                            this.ry.a(dVar.bO(), dVar.bP(), dVar.getPath(), dVar.bQ());
                        }
                        this.rB.poll();
                    }
                    this.rw = this.rJ.currentTimeMillis();
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_ERROR:
                    aa.v("Need to reconnect");
                    if (!this.rB.isEmpty()) {
                        bM();
                    }
                    break;
                default:
                    break;
            }
        } else {
            this.rk.bs().add(new Runnable() {
                public void run() {
                    s.this.bJ();
                }
            });
        }
    }

    private void bK() {
        this.rj.bp();
        this.rm = false;
    }

    private synchronized void bL() {
        if (this.rx != a.rP) {
            bH();
            aa.v("falling back to local store");
            if (this.rz != null) {
                this.rj = this.rz;
            } else {
                r bB = r.bB();
                bB.a(this.mContext, this.rk);
                this.rj = bB.bE();
            }
            this.rx = a.rP;
            bJ();
        }
    }

    private synchronized void bM() {
        if (this.rI || this.ry == null || this.rx == a.rP) {
            aa.w("client not initialized.");
            bL();
        } else {
            try {
                this.rC++;
                a(this.rE);
                this.rx = a.rN;
                this.rE = new Timer("Failed Connect");
                this.rE.schedule(new c(null), 3000);
                aa.v("connecting to Analytics service");
                this.ry.connect();
            } catch (SecurityException e) {
                aa.w("security exception on connectToService");
                bL();
            }
        }
    }

    private void bN() {
        this.rD = a(this.rD);
        this.rD = new Timer("Service Reconnect");
        this.rD.schedule(new e(null), 5000);
    }

    public synchronized void a(int i, Intent intent) {
        this.rx = a.rR;
        if (this.rC < 2) {
            aa.w("Service unavailable (code=" + i + "), will retry.");
            bN();
        } else {
            aa.w("Service unavailable (code=" + i + "), using local store.");
            bL();
        }
    }

    public void b(Map map, long j, String str, List list) {
        aa.v("putHit called");
        this.rB.add(new d(map, j, str, list));
        bJ();
    }

    public void bI() {
        if (this.ry == null) {
            this.ry = new c(this.mContext, this, this);
            bM();
        }
    }

    public void bk() {
        aa.v("clearHits called");
        this.rB.clear();
        switch (AnonymousClass_3.rM[this.rx.ordinal()]) {
            case GoogleScorer.CLIENT_GAMES:
                this.rj.i(0);
                this.rG = false;
            case GoogleScorer.CLIENT_PLUS:
                this.ry.bk();
                this.rG = false;
            default:
                this.rG = true;
        }
    }

    public void bp() {
        switch (AnonymousClass_3.rM[this.rx.ordinal()]) {
            case GoogleScorer.CLIENT_GAMES:
                bK();
            case GoogleScorer.CLIENT_PLUS:
                break;
            default:
                this.rm = true;
        }
    }

    public synchronized void br() {
        if (!this.rI) {
            aa.v("setForceLocalDispatch called.");
            this.rI = true;
            switch (AnonymousClass_3.rM[this.rx.ordinal()]) {
                case GoogleScorer.CLIENT_GAMES:
                case GoogleScorer.CLIENT_APPSTATE:
                case IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR:
                case IabHelper.BILLING_RESPONSE_RESULT_ERROR:
                    break;
                case GoogleScorer.CLIENT_PLUS:
                    aD();
                    break;
                case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                    this.rH = true;
                    break;
                default:
                    break;
            }
        }
    }

    public synchronized void onConnected() {
        this.rE = a(this.rE);
        this.rC = 0;
        aa.v("Connected to service");
        this.rx = a.rO;
        if (this.rH) {
            aD();
            this.rH = false;
        } else {
            bJ();
            this.rF = a(this.rF);
            this.rF = new Timer("disconnect check");
            this.rF.schedule(new b(null), this.rK);
        }
    }

    public synchronized void onDisconnected() {
        if (this.rx == a.rS) {
            aa.v("Disconnected from service");
            bH();
            this.rx = a.rT;
        } else {
            aa.v("Unexpected disconnect.");
            this.rx = a.rR;
            if (this.rC < 2) {
                bN();
            } else {
                bL();
            }
        }
    }
}