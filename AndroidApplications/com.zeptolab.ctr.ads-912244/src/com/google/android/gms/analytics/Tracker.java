package com.google.android.gms.analytics;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import com.facebook.ads.internal.AdWebViewUtils;
import com.google.android.gms.internal.er;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.vungle.publisher.VungleService;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.Timer;
import java.util.TimerTask;

public class Tracker {
    private final TrackerHandler up;
    private final Map uq;
    private ad ur;
    private final h us;
    private final ae ut;
    private final g uu;
    private boolean uv;
    private a uw;
    private aj ux;

    private class a implements a {
        private i rJ;
        private boolean uA;
        private boolean uB;
        private int uC;
        private long uD;
        private boolean uE;
        private long uF;
        private Timer uy;
        private TimerTask uz;

        class AnonymousClass_1 implements i {
            final /* synthetic */ Tracker uH;

            AnonymousClass_1(Tracker tracker) {
                this.uH = tracker;
            }

            public long currentTimeMillis() {
                return System.currentTimeMillis();
            }
        }

        private class a extends TimerTask {
            private a() {
            }

            public void run() {
                a.this.uA = false;
            }
        }

        public a() {
            this.uA = false;
            this.uB = false;
            this.uC = 0;
            this.uD = -1;
            this.uE = false;
            this.rJ = new AnonymousClass_1(Tracker.this);
        }

        private void cx() {
            GoogleAnalytics cf = GoogleAnalytics.cf();
            if (cf == null) {
                aa.t("GoogleAnalytics isn't initialized for the Tracker!");
            } else if (this.uD >= 0 || this.uB) {
                cf.a(Tracker.this.uw);
            } else {
                cf.b(Tracker.this.uw);
            }
        }

        private synchronized void cy() {
            if (this.uy != null) {
                this.uy.cancel();
                this.uy = null;
            }
        }

        public long cu() {
            return this.uD;
        }

        public boolean cv() {
            return this.uB;
        }

        public boolean cw() {
            boolean z = this.uE;
            this.uE = false;
            return z;
        }

        boolean cz() {
            return this.uD == 0 || (this.uD > 0 && this.rJ.currentTimeMillis() > this.uF + this.uD);
        }

        public void enableAutoActivityTracking(boolean z) {
            this.uB = z;
            cx();
        }

        public void f(Activity activity) {
            u.bR().a(com.google.android.gms.analytics.u.a.tt);
            cy();
            if (!this.uA && this.uC == 0 && cz()) {
                this.uE = true;
            }
            this.uA = true;
            this.uC++;
            if (this.uB) {
                Map hashMap = new HashMap();
                hashMap.put("&t", "appview");
                u.bR().r(true);
                Tracker.this.set("&cd", Tracker.this.ux != null ? Tracker.this.ux.h(activity) : activity.getClass().getCanonicalName());
                Tracker.this.send(hashMap);
                u.bR().r(false);
            }
        }

        public void g(Activity activity) {
            u.bR().a(com.google.android.gms.analytics.u.a.tu);
            this.uC--;
            this.uC = Math.max(0, this.uC);
            this.uF = this.rJ.currentTimeMillis();
            if (this.uC == 0) {
                cy();
                this.uz = new a(null);
                this.uy = new Timer("waitForActivityStart");
                this.uy.schedule(this.uz, AdWebViewUtils.DEFAULT_IMPRESSION_DELAY_MS);
            }
        }

        public void setSessionTimeout(long j) {
            this.uD = j;
            cx();
        }
    }

    Tracker(String str, TrackerHandler trackerHandler) {
        this(str, trackerHandler, h.bu(), ae.cs(), g.bt(), new z("tracking"));
    }

    Tracker(String str, TrackerHandler trackerHandler, h hVar, ae aeVar, g gVar, ad adVar) {
        this.uq = new HashMap();
        this.up = trackerHandler;
        if (str != null) {
            this.uq.put("&tid", str);
        }
        this.uq.put("useSecure", "1");
        this.us = hVar;
        this.ut = aeVar;
        this.uu = gVar;
        this.ur = adVar;
        this.uw = new a();
    }

    void a(Context context, aj ajVar) {
        aa.v("Loading Tracker config values.");
        this.ux = ajVar;
        if (this.ux.cB()) {
            String cC = this.ux.cC();
            set("&tid", cC);
            aa.v("[Tracker] trackingId loaded: " + cC);
        }
        if (this.ux.cD()) {
            cC = Double.toString(this.ux.cE());
            set("&sf", cC);
            aa.v("[Tracker] sample frequency loaded: " + cC);
        }
        if (this.ux.cF()) {
            setSessionTimeout((long) this.ux.getSessionTimeout());
            aa.v("[Tracker] session timeout loaded: " + cu());
        }
        if (this.ux.cG()) {
            enableAutoActivityTracking(this.ux.cH());
            aa.v("[Tracker] auto activity tracking loaded: " + cv());
        }
        if (this.ux.cI()) {
            if (this.ux.cJ()) {
                set("&aip", "1");
                aa.v("[Tracker] anonymize ip loaded: true");
            }
            aa.v("[Tracker] anonymize ip loaded: false");
        }
        this.uv = this.ux.cK();
        if (this.ux.cK()) {
            Thread.setDefaultUncaughtExceptionHandler(new ExceptionReporter(this, Thread.getDefaultUncaughtExceptionHandler(), context));
            aa.v("[Tracker] report uncaught exceptions loaded: " + this.uv);
        }
    }

    long cu() {
        return this.uw.cu();
    }

    boolean cv() {
        return this.uw.cv();
    }

    public void enableAdvertisingIdCollection(boolean z) {
        if (z) {
            if (this.uq.containsKey("&ate")) {
                this.uq.remove("&ate");
            }
            if (this.uq.containsKey("&adid")) {
                this.uq.remove("&adid");
            }
        } else {
            this.uq.put("&ate", null);
            this.uq.put("&adid", null);
        }
    }

    public void enableAutoActivityTracking(boolean z) {
        this.uw.enableAutoActivityTracking(z);
    }

    public String get(String str) {
        u.bR().a(com.google.android.gms.analytics.u.a.su);
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        if (this.uq.containsKey(str)) {
            return (String) this.uq.get(str);
        }
        if (str.equals("&ul")) {
            return ak.a(Locale.getDefault());
        }
        if (this.us != null && this.us.x(str)) {
            return this.us.getValue(str);
        }
        if (this.ut != null && this.ut.x(str)) {
            return this.ut.getValue(str);
        }
        return (this.uu == null || !this.uu.x(str)) ? null : this.uu.getValue(str);
    }

    public void send(Map map) {
        u.bR().a(com.google.android.gms.analytics.u.a.sw);
        Map hashMap = new HashMap();
        hashMap.putAll(this.uq);
        if (map != null) {
            hashMap.putAll(map);
        }
        if (TextUtils.isEmpty((CharSequence) hashMap.get("&tid"))) {
            aa.w(String.format("Missing tracking id (%s) parameter.", new Object[]{"&tid"}));
        }
        String str = (String) hashMap.get("&t");
        if (TextUtils.isEmpty(str)) {
            aa.w(String.format("Missing hit type (%s) parameter.", new Object[]{"&t"}));
            str = AdTrackerConstants.BLANK;
        }
        if (this.uw.cw()) {
            hashMap.put("&sc", "start");
        }
        if (str.equals(VungleService.HTTP_TRANSACTION_EXTRA_KEY) || str.equals("item") || this.ur.cl()) {
            this.up.n(hashMap);
        } else {
            aa.w("Too many hits sent too quickly, rate limiting invoked.");
        }
    }

    public void set(Object obj, String str) {
        er.b(obj, (Object)"Key should be non-null");
        u.bR().a(com.google.android.gms.analytics.u.a.sv);
        this.uq.put(obj, str);
    }

    public void setAnonymizeIp(boolean z) {
        set("&aip", ak.s(z));
    }

    public void setAppId(String str) {
        set("&aid", str);
    }

    public void setAppInstallerId(String str) {
        set("&aiid", str);
    }

    public void setAppName(String str) {
        set("&an", str);
    }

    public void setAppVersion(String str) {
        set("&av", str);
    }

    public void setClientId(String str) {
        set("&cid", str);
    }

    public void setEncoding(String str) {
        set("&de", str);
    }

    public void setHostname(String str) {
        set("&dh", str);
    }

    public void setLanguage(String str) {
        set("&ul", str);
    }

    public void setLocation(String str) {
        set("&dl", str);
    }

    public void setPage(String str) {
        set("&dp", str);
    }

    public void setReferrer(String str) {
        set("&dr", str);
    }

    public void setSampleRate(double d) {
        set("&sf", Double.toHexString(d));
    }

    public void setScreenColors(String str) {
        set("&sd", str);
    }

    public void setScreenName(String str) {
        set("&cd", str);
    }

    public void setScreenResolution(int i, int i2) {
        if (i >= 0 || i2 >= 0) {
            set("&sr", i + "x" + i2);
        } else {
            aa.w("Invalid width or height. The values should be non-negative.");
        }
    }

    public void setSessionTimeout(long j) {
        this.uw.setSessionTimeout(1000 * j);
    }

    public void setTitle(String str) {
        set("&dt", str);
    }

    public void setUseSecure(boolean z) {
        set("useSecure", ak.s(z));
    }

    public void setViewportSize(String str) {
        set("&vp", str);
    }
}