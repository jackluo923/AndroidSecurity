package com.google.android.gms.internal;

import android.content.Context;
import android.os.SystemClock;
import android.text.TextUtils;
import com.inmobi.androidsdk.impl.ConfigException;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import com.zeptolab.utils.HTMLEncoder;
import org.json.JSONException;

public final class bz extends ct implements com.google.android.gms.internal.ca.a, com.google.android.gms.internal.de.a {
    private final bf kH;
    private final Context mContext;
    private final Object mg;
    private ay mh;
    private final com.google.android.gms.internal.by.a nM;
    private final Object nN;
    private final com.google.android.gms.internal.cd.a nO;
    private final l nP;
    private ct nQ;
    private cf nR;
    private boolean nS;
    private aw nT;
    private bc nU;
    private final dd ng;

    class AnonymousClass_2 implements Runnable {
        final /* synthetic */ cn nW;

        AnonymousClass_2(cn cnVar) {
            this.nW = cnVar;
        }

        public void run() {
            synchronized (bz.this.mg) {
                bz.this.nM.a(this.nW);
            }
        }
    }

    private static final class a extends Exception {
        private final int nX;

        public a(String str, int i) {
            super(str);
            this.nX = i;
        }

        public int getErrorCode() {
            return this.nX;
        }
    }

    public bz(Context context, com.google.android.gms.internal.cd.a aVar, l lVar, dd ddVar, bf bfVar, com.google.android.gms.internal.by.a aVar2) {
        this.nN = new Object();
        this.mg = new Object();
        this.nS = false;
        this.kH = bfVar;
        this.nM = aVar2;
        this.ng = ddVar;
        this.mContext = context;
        this.nO = aVar;
        this.nP = lVar;
    }

    private ab a(cd cdVar) {
        if (this.nR.on == null) {
            throw new a("The ad response must specify one of the supported ad sizes.", 0);
        }
        String[] split = this.nR.on.split("x");
        if (split.length != 2) {
            throw new a("Could not parse the ad size from the ad response: " + this.nR.on, 0);
        }
        try {
            int parseInt = Integer.parseInt(split[0]);
            int parseInt2 = Integer.parseInt(split[1]);
            ab[] abVarArr = cdVar.kQ.lp;
            int length = abVarArr.length;
            int i = 0;
            while (i < length) {
                ab abVar = abVarArr[i];
                float f = this.mContext.getResources().getDisplayMetrics().density;
                int i2 = abVar.width == -1 ? (int) (((float) abVar.widthPixels) / f) : abVar.width;
                int i3 = abVar.height == -2 ? (int) (((float) abVar.heightPixels) / f) : abVar.height;
                if (parseInt == i2 && parseInt2 == i3) {
                    return new ab(abVar, cdVar.kQ.lp);
                }
                i++;
            }
            throw new a("The ad size from the ad response was not one of the requested sizes: " + this.nR.on, 0);
        } catch (NumberFormatException e) {
            throw new a("Could not parse the ad size from the ad response: " + this.nR.on, 0);
        }
    }

    private void a(cd cdVar, long j) {
        synchronized (this.nN) {
            this.nT = new aw(this.mContext, cdVar, this.kH, this.mh);
        }
        this.nU = this.nT.a(j, 60000);
        switch (this.nU.mL) {
            case IabHelper.BILLING_RESPONSE_RESULT_OK:
                break;
            case GoogleScorer.CLIENT_GAMES:
                throw new a("No fill from any mediation ad networks.", 3);
            default:
                throw new a("Unexpected mediation result: " + this.nU.mL, 0);
        }
    }

    private void aC() {
        if (this.nR.errorCode != -3) {
            if (TextUtils.isEmpty(this.nR.oi)) {
                throw new a("No fill from ad server.", 3);
            } else if (this.nR.ok) {
                try {
                    this.mh = new ay(this.nR.oi);
                } catch (JSONException e) {
                    throw new a("Could not parse mediation config: " + this.nR.oi, 0);
                }
            }
        }
    }

    private void b(long j) {
        cz.pT.post(new Runnable() {
            public void run() {
                synchronized (bz.this.mg) {
                    if (bz.this.nR.errorCode != -2) {
                    } else {
                        bz.this.ng.bb().a(bz.this);
                        if (bz.this.nR.errorCode == -3) {
                            da.v("Loading URL in WebView: " + bz.this.nR.nw);
                            bz.this.ng.loadUrl(bz.this.nR.nw);
                        } else {
                            da.v("Loading HTML in WebView.");
                            bz.this.ng.loadDataWithBaseURL(cv.p(bz.this.nR.nw), bz.this.nR.oi, WebRequest.CONTENT_TYPE_HTML, HTMLEncoder.ENCODE_NAME_DEFAULT, null);
                        }
                    }
                }
            }
        });
        d(j);
    }

    private void c(long r4) {
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.bz.c(long):void");
        /* JADX: method processing error */
/*
        Error: jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:42)
	at jadx.core.utils.ErrorsCounter.methodError(ErrorsCounter.java:62)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:29)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:16)
	at jadx.core.ProcessClass.process(ProcessClass.java:22)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:209)
	at jadx.api.JavaClass.decompile(JavaClass.java:59)
	at jadx.api.JadxDecompiler$1.run(JadxDecompiler.java:133)
	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1145)
	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:615)
	at java.lang.Thread.run(Thread.java:745)
*/
        /*
        r3 = this;
    L_0x0000:
        r0 = r3.e(r4);
        if (r0 != 0) goto L_0x000f;
    L_0x0006:
        r0 = new com.google.android.gms.internal.bz$a;
        r1 = "Timed out waiting for ad response.";
        r2 = 2;
        r0.<init>(r1, r2);
        throw r0;
    L_0x000f:
        r0 = r3.nR;
        if (r0 == 0) goto L_0x0000;
    L_0x0013:
        r1 = r3.nN;
        monitor-enter(r1);
        r0 = 0;
        r3.nQ = r0;	 Catch:{ all -> 0x0049 }
        monitor-exit(r1);	 Catch:{ all -> 0x0049 }
        r0 = r3.nR;
        r0 = r0.errorCode;
        r1 = -2;
        if (r0 == r1) goto L_0x004c;
    L_0x0021:
        r0 = r3.nR;
        r0 = r0.errorCode;
        r1 = -3;
        if (r0 == r1) goto L_0x004c;
    L_0x0028:
        r0 = new com.google.android.gms.internal.bz$a;
        r1 = new java.lang.StringBuilder;
        r1.<init>();
        r2 = "There was a problem getting an ad response. ErrorCode: ";
        r1 = r1.append(r2);
        r2 = r3.nR;
        r2 = r2.errorCode;
        r1 = r1.append(r2);
        r1 = r1.toString();
        r2 = r3.nR;
        r2 = r2.errorCode;
        r0.<init>(r1, r2);
        throw r0;
    L_0x0049:
        r0 = move-exception;
        monitor-exit(r1);	 Catch:{ all -> 0x0049 }
        throw r0;
    L_0x004c:
        return;
        */
    }

    private void d(long r4) {
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.bz.d(long):void");
        /* JADX: method processing error */
/*
        Error: jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:42)
	at jadx.core.utils.ErrorsCounter.methodError(ErrorsCounter.java:62)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:29)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:16)
	at jadx.core.ProcessClass.process(ProcessClass.java:22)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:209)
	at jadx.api.JavaClass.decompile(JavaClass.java:59)
	at jadx.api.JadxDecompiler$1.run(JadxDecompiler.java:133)
	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1145)
	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:615)
	at java.lang.Thread.run(Thread.java:745)
*/
        /*
        r3 = this;
    L_0x0000:
        r0 = r3.e(r4);
        if (r0 != 0) goto L_0x000f;
    L_0x0006:
        r0 = new com.google.android.gms.internal.bz$a;
        r1 = "Timed out waiting for WebView to finish loading.";
        r2 = 2;
        r0.<init>(r1, r2);
        throw r0;
    L_0x000f:
        r0 = r3.nS;
        if (r0 == 0) goto L_0x0000;
    L_0x0013:
        return;
        */
    }

    private boolean e(long j) {
        long elapsedRealtime = 60000 - SystemClock.elapsedRealtime() - j;
        if (elapsedRealtime <= 0) {
            return false;
        }
        try {
            this.mg.wait(elapsedRealtime);
            return true;
        } catch (InterruptedException e) {
            throw new a("Ad request cancelled.", -1);
        }
    }

    public void a(cf cfVar) {
        synchronized (this.mg) {
            da.s("Received ad response.");
            this.nR = cfVar;
            this.mg.notify();
        }
    }

    public void a(dd ddVar) {
        synchronized (this.mg) {
            da.s("WebView finished loading.");
            this.nS = true;
            this.mg.notify();
        }
    }

    public void aB() {
        a aVar;
        synchronized (this.mg) {
            long j;
            ab abVar;
            da.s("AdLoaderBackgroundTask started.");
            cd cdVar = new cd(this.nO, this.nP.y().a(this.mContext));
            ab abVar2 = null;
            int i = ConfigException.MISSING_ACTIVITY_DECLARATION;
            long j2 = -1;
            try {
                long elapsedRealtime = SystemClock.elapsedRealtime();
                ct a = ca.a(this.mContext, cdVar, this);
                synchronized (this.nN) {
                    this.nQ = a;
                    if (this.nQ == null) {
                        throw new a("Could not start the ad request service.", 0);
                    }
                }
                c(elapsedRealtime);
                j2 = SystemClock.elapsedRealtime();
                aC();
                if (cdVar.kQ.lp != null) {
                    abVar2 = a(cdVar);
                }
                if (this.nR.ok) {
                    a(cdVar, elapsedRealtime);
                } else {
                    b(elapsedRealtime);
                }
                j = j2;
                abVar = abVar2;
            } catch (a e) {
                aVar = e;
                i = aVar.getErrorCode();
                if (i == 3 || i == -1) {
                    da.u(aVar.getMessage());
                } else {
                    da.w(aVar.getMessage());
                }
                this.nR = new cf(i);
                cz.pT.post(new Runnable() {
                    public void run() {
                        bz.this.onStop();
                    }
                });
                j = j2;
                abVar = abVar2;
            }
            cz.pT.post(new AnonymousClass_2(new cn(cdVar.oc, this.ng, this.nR.mt, i, this.nR.mu, this.nR.om, this.nR.orientation, this.nR.mx, cdVar.of, this.nR.ok, this.nU != null ? this.nU.mM : null, this.nU != null ? this.nU.mN : null, this.nU != null ? this.nU.mO : null, this.mh, this.nU != null ? this.nU.mP : null, this.nR.ol, abVar, this.nR.oj, j, this.nR.oo)));
        }
    }

    public void onStop() {
        synchronized (this.nN) {
            if (this.nQ != null) {
                this.nQ.cancel();
            }
            this.ng.stopLoading();
            cv.a(this.ng);
            if (this.nT != null) {
                this.nT.cancel();
            }
        }
    }
}