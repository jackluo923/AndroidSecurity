package com.chartboost.sdk;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Handler;
import android.util.SparseBooleanArray;
import com.chartboost.sdk.Libraries.CBLogging;
import com.chartboost.sdk.Libraries.CBUtility;
import com.chartboost.sdk.Libraries.c;
import com.chartboost.sdk.Libraries.f;
import com.chartboost.sdk.Libraries.f.g;
import com.chartboost.sdk.Libraries.h;
import com.chartboost.sdk.Model.CBError.CBImpressionError;
import com.chartboost.sdk.Model.a.b;
import com.chartboost.sdk.impl.i;
import com.chartboost.sdk.impl.j;
import com.chartboost.sdk.impl.n;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import java.util.Locale;
import org.json.JSONObject;

public final class Chartboost {
    private static volatile Chartboost e;
    protected h a;
    protected i b;
    protected Handler c;
    protected boolean d;
    private Context f;
    private CBImpressionActivity g;
    private a h;
    private com.chartboost.sdk.Model.a i;
    private CBPreferences j;
    private boolean k;
    private SparseBooleanArray l;
    private b m;
    private long n;
    private long o;
    private boolean p;
    private Runnable q;

    class AnonymousClass_3 implements Runnable {
        final /* synthetic */ b a;

        AnonymousClass_3(b bVar) {
            this.a = bVar;
        }

        public void run() {
            this.a.a(true);
        }
    }

    public static interface CBAPIResponseCallback {
        void onFailure(CBImpressionError cBImpressionError);

        void onSuccess(JSONObject jSONObject);
    }

    public static interface CBAgeGateConfirmation {
        void execute(boolean z);
    }

    private class a implements Runnable {
        final /* synthetic */ Chartboost a;
        private int b;
        private int c;
        private int d;

        private a(Chartboost chartboost) {
            int i = -1;
            this.a = chartboost;
            ChartboostDelegate a = a();
            this.b = chartboost.g == null ? -1 : chartboost.g.hashCode();
            this.c = chartboost.a == null ? -1 : chartboost.a.hashCode();
            if (a != null) {
                i = a.hashCode();
            }
            this.d = i;
        }

        private ChartboostDelegate a_() {
            return this.a.j != null ? this.a.j.getDelegate() : null;
        }

        public void run() {
            ChartboostDelegate a = a();
            if (this.a.getContext() != null) {
                this.a.clearImageCache();
            }
            if (this.a.a != null && this.a.a.hashCode() == this.c) {
                this.a.a = null;
            }
            if (this.a.g != null && this.a.g.hashCode() == this.b) {
                this.a.g = null;
            }
            if (a != null && a.hashCode() == this.d) {
                this.a.j.setDelegate(null);
            }
        }
    }

    static {
        e = null;
    }

    private Chartboost() {
        this.f = null;
        this.g = null;
        this.i = null;
        this.a = null;
        this.j = null;
        this.k = false;
        this.l = new SparseBooleanArray();
        this.m = null;
        this.n = 0;
        this.o = 0;
        this.p = false;
        this.d = false;
        this.q = new a(null);
        e = this;
        this.c = new Handler();
        this.b = new i(null, "main");
        this.h = a.a(this);
        this.m = b.a(this);
        this.j = CBPreferences.getInstance();
    }

    private void a(int i, boolean z) {
        this.l.put(i, z);
    }

    private void a(Activity activity, String str, String str2, ChartboostDelegate chartboostDelegate) {
        if (this.j.getIgnoreErrors() || CBUtility.b()) {
            if (!(this.a == null || this.a.b(activity) || !f())) {
                b(this.a);
                a(this.a, false);
            }
            this.c.removeCallbacks(this.q);
            this.a = h.a(activity);
            this.f = activity.getApplicationContext();
            c.a();
            this.j.setAppID(str);
            this.j.setAppSignature(str2);
            this.j.setDelegate(chartboostDelegate);
            this.b.b();
        } else {
            throw new IllegalStateException("It is illegal to call this method from any thread other than the UI thread. Please call it from the onCreate() method of your host activity.");
        }
    }

    private void a(Activity activity, boolean z) {
        if (activity != null) {
            a(activity.hashCode(), z);
        }
    }

    private void a(h hVar, boolean z) {
        if (hVar != null) {
            a(hVar.a(), z);
        }
    }

    private void b(h hVar) {
        if (!this.j.getImpressionsUseActivities()) {
            c(hVar);
        }
        if (!hVar.get() instanceof CBImpressionActivity) {
            a(hVar, false);
        }
        this.n = (long) (((double) System.nanoTime()) / 1000000.0d);
    }

    private void b(h hVar, boolean z) {
    }

    private void c(h hVar) {
        b a = a();
        if (d(hVar) && a != null) {
            com.chartboost.sdk.Model.a a2 = this.h.a();
            if (a2 != null) {
                a.b(a2);
                this.i = a2;
            }
            b(hVar, false);
            if (hVar.get() instanceof CBImpressionActivity) {
                d();
            }
        }
        if (!(hVar.get() instanceof CBImpressionActivity)) {
            a(hVar, false);
        }
    }

    private void cacheInterstitialData(String str, CBAPIResponseCallback cBAPIResponseCallback) {
        d.a(str, cBAPIResponseCallback);
    }

    private void cacheInterstitialDataBatch(String str, int i, CBAPIResponseCallback cBAPIResponseCallback) {
        d.a(str, i, cBAPIResponseCallback);
    }

    private boolean d(Activity activity) {
        if (this.j.getImpressionsUseActivities()) {
            return this.g == activity;
        } else if (this.a != null) {
            return this.a.b(activity);
        } else {
            return activity == null;
        }
    }

    private boolean d(h hVar) {
        if (this.j.getImpressionsUseActivities()) {
            if (hVar != null) {
                return hVar.b(this.g);
            }
            return this.g == null;
        } else if (this.a != null) {
            return this.a.a(hVar);
        } else {
            return hVar == null;
        }
    }

    private boolean f() {
        return a(this.a);
    }

    public static Chartboost sharedChartboost() {
        if (e == null) {
            synchronized (Chartboost.class) {
                if (e == null) {
                    e = new Chartboost();
                }
            }
        }
        return e;
    }

    private void showInterstitialData(String str, CBAPIResponseCallback cBAPIResponseCallback) {
        d.b(str, cBAPIResponseCallback);
    }

    protected b a() {
        return c() == null ? null : this.m;
    }

    protected void a(Activity activity) {
        this.f = activity.getApplicationContext();
        if (activity instanceof CBImpressionActivity) {
            a((CBImpressionActivity) activity);
        } else {
            this.a = h.a(activity);
            a(this.a, true);
        }
        this.c.removeCallbacks(this.q);
        if (activity != null && d(activity)) {
            b(h.a(activity), true);
            if (activity instanceof CBImpressionActivity) {
                this.p = false;
            }
            this.h.a(activity, this.i);
            this.i = null;
        }
    }

    protected void a(CBImpressionActivity cBImpressionActivity) {
        if (!this.k) {
            this.f = cBImpressionActivity.getApplicationContext();
            this.g = cBImpressionActivity;
            this.k = true;
        }
        this.c.removeCallbacks(this.q);
    }

    protected void a(com.chartboost.sdk.Model.a aVar) {
        boolean z = true;
        b a;
        if (!this.j.getImpressionsUseActivities()) {
            a = a();
            if (a == null || !f()) {
                aVar.a(CBImpressionError.NO_HOST_ACTIVITY);
            } else {
                a.a(aVar);
            }
        } else if (this.k) {
            a = a();
            if (c() == null || a == null) {
                CBLogging.b("Chartboost", "Missing CBViewController to manage the open CBImpressionActivity");
            } else {
                a.a(aVar);
            }
        } else if (f()) {
            Context hostActivity = getHostActivity();
            if (hostActivity == null) {
                CBLogging.b("Chartboost", "Failed to display impression as the host activity reference has been lost!");
                aVar.a(CBImpressionError.NO_HOST_ACTIVITY);
            } else if (this.i == null || this.i == aVar) {
                int i;
                this.i = aVar;
                Intent intent = new Intent(hostActivity, CBImpressionActivity.class);
                i = (hostActivity.getWindow().getAttributes().flags & 1024) != 0;
                int i2 = (hostActivity.getWindow().getAttributes().flags & 2048) != 0;
                String str = CBImpressionActivity.PARAM_FULLSCREEN;
                if (i == 0 || i2 != 0) {
                    z = false;
                }
                intent.putExtra(str, z);
                try {
                    hostActivity.startActivity(intent);
                    this.p = true;
                } catch (ActivityNotFoundException e) {
                    throw new RuntimeException("Chartboost impression activity not declared in manifest. Please add the following inside your manifest's <application> tag: \n<activity android:name=\"com.chartboost.sdk.CBImpressionActivity\" android:theme=\"@android:style/Theme.Translucent.NoTitleBar\" android:excludeFromRecents=\"true\" />");
                }
            } else {
                aVar.a(CBImpressionError.IMPRESSION_ALREADY_VISIBLE);
            }
        } else {
            aVar.a(CBImpressionError.NO_HOST_ACTIVITY);
        }
    }

    protected void a(Runnable runnable) {
        if (CBUtility.b()) {
            runnable.run();
        } else {
            this.c.post(runnable);
        }
    }

    protected boolean a(h hVar) {
        if (hVar == null) {
            return false;
        }
        Boolean valueOf = Boolean.valueOf(this.l.get(hVar.a()));
        return valueOf != null ? valueOf.booleanValue() : false;
    }

    protected void b(Activity activity) {
        c(h.a(activity));
    }

    protected boolean b() {
        if (this.h.a() == null || this.h.a().c != b.c) {
            b a = a();
            if (a == null || !a.a()) {
                return false;
            }
            a(new AnonymousClass_3(a));
            return true;
        } else {
            a(new Runnable() {
                public void run() {
                    Chartboost.this.h.d();
                }
            });
            return true;
        }
    }

    protected Activity c() {
        return this.j.getImpressionsUseActivities() ? this.g : getHostActivity();
    }

    protected void c(Activity activity) {
        b(h.a(activity), false);
    }

    public void cacheInterstitial() {
        cacheInterstitial("Default");
    }

    public void cacheInterstitial(String str) {
        if (this.a == null) {
            throw new IllegalStateException("The context must be set through the Chartboost method onCreate() before calling cacheInterstitial().");
        }
        this.h.a(str);
    }

    public void cacheMoreApps() {
        if (this.a == null) {
            throw new IllegalStateException("The context must be set through the Chartboost method onCreate() before calling cacheMoreApps().");
        }
        this.h.a(true);
    }

    public void clearCache() {
        this.h.e();
    }

    public void clearImageCache() {
        if (getContext() == null) {
            throw new IllegalStateException("The context must be set through the Chartboost method onCreate() before calling clearImageCache().");
        }
        n.a().b();
    }

    protected void d() {
        if (this.k) {
            this.g = null;
            this.k = false;
        }
    }

    protected Context e() {
        return this.a != null ? this.a.b() : getContext();
    }

    public Context getContext() {
        return this.f;
    }

    public String getDeviceIdentifier() {
        return c.b();
    }

    protected Activity getHostActivity() {
        return this.a != null ? (Activity) this.a.get() : null;
    }

    public CBPreferences getPreferences() {
        return this.j;
    }

    public boolean hasCachedInterstitial() {
        return hasCachedInterstitial("Default");
    }

    public boolean hasCachedInterstitial(String str) {
        return this.h.c(str);
    }

    public boolean hasCachedMoreApps() {
        return this.h.c();
    }

    public boolean onBackPressed() {
        if (!this.j.getIgnoreErrors() && !CBUtility.b()) {
            throw new IllegalStateException("It is illegal to call this method from any thread other than the UI thread. Please call it from the onBackPressed() method of your host activity.");
        } else if (this.a == null) {
            throw new IllegalStateException("The Chartboost methods onCreate(), onStart(), onStop(), and onDestroy() must be called in the corresponding methods of your activity in order for Chartboost to function properly.");
        } else if (!this.j.getImpressionsUseActivities()) {
            return b();
        } else {
            if (!this.p) {
                return false;
            }
            this.p = false;
            b();
            return true;
        }
    }

    public void onCreate(Activity activity, String str, String str2, ChartboostDelegate chartboostDelegate) {
        a(activity, str, str2, chartboostDelegate);
    }

    public void onDestroy(Activity activity) {
        if (this.a == null || this.a.b(activity)) {
            this.c.removeCallbacks(this.q);
            this.q = new a(null);
            this.c.postDelayed(this.q, 10000);
        }
        c(activity);
    }

    public void onStart(Activity activity) {
        if (this.j.getIgnoreErrors() || CBUtility.b()) {
            this.c.removeCallbacks(this.q);
            if (!(this.a == null || this.a.b(activity) || !f())) {
                b(this.a);
                a(this.a, false);
            }
            a(activity, true);
            this.a = h.a(activity);
            this.f = activity.getApplicationContext();
            if (!this.j.getImpressionsUseActivities()) {
                a(activity);
            }
        } else {
            throw new IllegalStateException("It is illegal to call this method from any thread other than the UI thread. Please call it from the onStart() method of your host activity.");
        }
    }

    public void onStop(Activity activity) {
        if (this.j.getIgnoreErrors() || CBUtility.b()) {
            h a = h.a(activity);
            if (a(a)) {
                b(a);
            }
        } else {
            throw new IllegalStateException("It is illegal to call this method from any thread other than the UI thread. Please call it from the onStop() method of your host activity.");
        }
    }

    public void showInterstitial() {
        showInterstitial("Default");
    }

    public void showInterstitial(String str) {
        if (this.a == null) {
            throw new IllegalStateException("The context must be set through the Chartboost method onCreate() before calling showInterstitial().");
        }
        this.h.b(str);
    }

    public void showMoreApps() {
        if (this.a == null) {
            throw new IllegalStateException("The context must be set through the Chartboost method onCreate() before calling showMoreApps().");
        }
        this.h.b();
    }

    public void showMoreAppsData(CBAPIResponseCallback cBAPIResponseCallback) {
        d.a(cBAPIResponseCallback);
    }

    public void startSession() {
        if (this.a == null) {
            throw new IllegalStateException("The context must be set through the Chartboost method onCreate() before calling startSession().");
        }
        this.d = true;
        long nanoTime = (long) (((double) System.nanoTime()) / 1000000.0d);
        if (nanoTime - this.n >= 10000 && nanoTime - this.o >= 60000) {
            this.o = nanoTime;
            SharedPreferences a = CBUtility.a();
            int i = a.getInt("cbPrefSessionCount", 0) + 1;
            Editor edit = a.edit();
            edit.putInt("cbPrefSessionCount", i);
            edit.commit();
            j jVar = new j("api/install");
            jVar.a(e());
            jVar.a(new g[]{f.a("status", i.a)});
            this.b.a(jVar, new i.c() {
                public void a(JSONObject jSONObject, j jVar) {
                    if (CBUtility.a(Chartboost.this.getContext())) {
                        String optString = jSONObject.optString("latest-sdk-version");
                        if (optString != null && !optString.equals(AdTrackerConstants.BLANK) && !optString.equals(com.mixpanel.android.mpmetrics.j.a)) {
                            CBLogging.a(String.format(Locale.US, "Chartboost SDK is not up to date. (Current: %s, Latest: %s)\n Download latest SDK at:\n\thttps://www.chartboost.com/support/sdk_download/?os=ios", new Object[]{com.mixpanel.android.mpmetrics.j.a, optString}));
                        }
                    }
                }
            });
        }
    }
}