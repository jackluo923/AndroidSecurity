package com.flurry.sdk;

import android.content.Context;
import android.location.Criteria;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Bundle;
import android.os.Looper;
import android.text.TextUtils;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;

public class dw implements com.flurry.sdk.dn.a {
    private static final String c;
    private static dw o;
    boolean a;
    boolean b;
    private final int d;
    private final long e;
    private final long f;
    private LocationManager g;
    private Criteria h;
    private Location i;
    private a j;
    private String k;
    private int l;
    private int m;
    private volatile Location n;

    class a implements LocationListener {
        public void onLocationChanged(Location location) {
            if (location != null) {
                dw.this.i = location;
            }
            if (dw.a(dw.this) >= 3) {
                el.a((int)GoogleScorer.CLIENT_APPSTATE, c, "Max location reports reached, stopping");
                dw.this.i();
            }
        }

        public void onProviderDisabled(String str) {
        }

        public void onProviderEnabled(String str) {
        }

        public void onStatusChanged(String str, int i, Bundle bundle) {
        }
    }

    static {
        c = dw.class.getSimpleName();
    }

    private dw() {
        this.d = 3;
        this.e = 10000;
        this.f = 0;
        this.a = false;
        this.l = 0;
        this.m = 0;
        this.j = new a();
        dn a = dm.a();
        this.h = (Criteria) a.a("LocationCriteria");
        a.a("LocationCriteria", this);
        el.a((int)GoogleScorer.CLIENT_APPSTATE, c, "initSettings, LocationCriteria = " + this.h);
        this.b = ((Boolean) a.a("ReportLocation")).booleanValue();
        a.a("ReportLocation", this);
        el.a((int)GoogleScorer.CLIENT_APPSTATE, c, "initSettings, ReportLocation = " + this.b);
    }

    static /* synthetic */ int a(dw dwVar) {
        int i = dwVar.m + 1;
        dwVar.m = i;
        return i;
    }

    public static synchronized dw a() {
        dw dwVar;
        synchronized (dw.class) {
            if (o == null) {
                o = new dw();
            }
            dwVar = o;
        }
        return dwVar;
    }

    private void a(String str) {
        if (!TextUtils.isEmpty(str)) {
            this.g.requestLocationUpdates(str, 10000, BitmapDescriptorFactory.HUE_RED, this.j, Looper.getMainLooper());
        }
    }

    private Location b(String str) {
        return TextUtils.isEmpty(str) ? null : this.g.getLastKnownLocation(str);
    }

    private void i() {
        this.g.removeUpdates(this.j);
        this.a = false;
        this.m = 0;
        el.a((int)GoogleScorer.CLIENT_APPSTATE, c, "LocationProvider stopped");
    }

    private void j() {
        if (this.b && this.n == null) {
            Context b = dl.a().b();
            if (b.checkCallingOrSelfPermission("android.permission.ACCESS_FINE_LOCATION") == 0 || b.checkCallingOrSelfPermission("android.permission.ACCESS_COARSE_LOCATION") == 0) {
                i();
                String k = k();
                a(k);
                this.i = b(k);
                this.a = true;
                el.a((int)GoogleScorer.CLIENT_APPSTATE, c, "LocationProvider started");
            }
        }
    }

    private String k() {
        String bestProvider;
        Criteria criteria = this.h;
        if (criteria == null) {
            criteria = new Criteria();
        }
        bestProvider = TextUtils.isEmpty(this.k) ? this.g.getBestProvider(criteria, true) : this.k;
        el.a((int)GoogleScorer.CLIENT_APPSTATE, c, "provider = " + bestProvider);
        return bestProvider;
    }

    public void a(float f, float f2) {
        this.n = new Location("Explicit");
        this.n.setLatitude((double) f);
        this.n.setLongitude((double) f2);
    }

    public void a(String str, Object obj) {
        if (str.equals("LocationCriteria")) {
            this.h = (Criteria) obj;
            el.a((int)GoogleScorer.CLIENT_APPSTATE, c, "onSettingUpdate, LocationCriteria = " + this.h);
            if (this.a) {
                j();
            }
        } else if (str.equals("ReportLocation")) {
            this.b = ((Boolean) obj).booleanValue();
            el.a((int)GoogleScorer.CLIENT_APPSTATE, c, "onSettingUpdate, ReportLocation = " + this.b);
            if (!this.b) {
                i();
            } else if (!this.a && this.l > 0) {
                j();
            }
        } else {
            el.a((int)IabHelper.BILLING_RESPONSE_RESULT_ERROR, c, "LocationProvider internal error! Had to be LocationCriteria or ReportLocation key.");
        }
    }

    public synchronized void b() {
        if (this.g == null) {
            this.g = (LocationManager) dl.a().b().getSystemService("location");
        }
    }

    public synchronized void c() {
        el.a((int)GoogleScorer.CLIENT_APPSTATE, c, "Location provider subscribed");
        this.l++;
        if (!this.a && this.m < 3) {
            j();
        }
    }

    public synchronized void d() {
        el.a((int)GoogleScorer.CLIENT_APPSTATE, c, "Location provider unsubscribed");
        if (this.l <= 0) {
            el.a((int)IabHelper.BILLING_RESPONSE_RESULT_ERROR, c, "Error! Unsubscribed too many times!");
        } else {
            this.l--;
            if (this.l == 0) {
                i();
            }
        }
    }

    public void e() {
        this.n = null;
    }

    public Location f() {
        Location location = null;
        if (this.n != null) {
            return this.n;
        }
        if (this.b) {
            location = b(k());
            if (location != null) {
                this.i = location;
            }
            location = this.i;
        }
        el.a((int)GoogleScorer.CLIENT_APPSTATE, c, "getLocation() = " + location);
        return location;
    }

    public void g() {
        this.l = 0;
        i();
    }
}