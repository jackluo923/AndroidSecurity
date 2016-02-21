package com.vungle.publisher.env;

import android.content.Context;
import android.content.SharedPreferences;
import android.media.AudioManager;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Environment;
import android.util.DisplayMetrics;
import android.view.WindowManager;
import android.webkit.WebView;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.vungle.log.Logger;
import com.vungle.publisher.aq;
import com.vungle.publisher.as;
import com.vungle.publisher.cc;
import com.vungle.publisher.inject.annotations.EnvSharedPreferences;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import javax.inject.Inject;
import javax.inject.Singleton;

@Singleton
public class AndroidDevice implements as {
    String a;
    String b;
    boolean c;
    @Inject
    AudioManager d;
    @Inject
    WindowManager e;
    @Inject
    Context f;
    @EnvSharedPreferences
    @Inject
    SharedPreferences g;
    @Inject
    DeviceIdStrategy h;
    private final String i;

    public static abstract class DeviceIdStrategy {
        protected abstract void a(AndroidDevice androidDevice);
    }

    public AndroidDevice() {
        this.i = VERSION.RELEASE;
    }

    public final String a() {
        return this.a;
    }

    public final void a(WebView webView) {
        this.g.edit().putString("defaultUserAgent", webView.getSettings().getUserAgentString()).commit();
    }

    public final boolean a(aq aqVar) {
        return VERSION.SDK_INT >= aqVar.c;
    }

    public final boolean a(String str) {
        boolean z;
        boolean z2 = false;
        try {
            int isGooglePlayServicesAvailable = GooglePlayServicesUtil.isGooglePlayServicesAvailable(this.f);
            z = isGooglePlayServicesAvailable == 0 ? 1 : z2;
            if (!z) {
                try {
                    Logger.w(str, new StringBuilder("Google Play Services not available: ").append(GooglePlayServicesUtil.getErrorString(isGooglePlayServicesAvailable)).toString());
                } catch (IllegalStateException e) {
                    th = e;
                    Logger.w(Logger.CONFIG_TAG, cc.a(th));
                    return z;
                } catch (NoClassDefFoundError e2) {
                    th = e2;
                    Logger.w(str, th);
                    return z;
                }
            }
        } catch (IllegalStateException e3) {
            z = z2;
            Throwable th2 = e3;
            Logger.w(Logger.CONFIG_TAG, cc.a(th2));
            return z;
        } catch (NoClassDefFoundError e4) {
            z = z2;
            th2 = e4;
            Logger.w(str, th2);
            return z;
        }
        return z;
    }

    public final String b() {
        return this.b;
    }

    public final String c() {
        return this.i;
    }

    public final DisplayMetrics d() {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        try {
            this.e.getDefaultDisplay().getMetrics(displayMetrics);
        } catch (Exception e) {
            Logger.d(Logger.DEVICE_TAG, "error getting display metrics", e);
        }
        return displayMetrics;
    }

    public final boolean e() {
        return this.c;
    }

    public final String f() {
        String str = null;
        try {
            return (Build.MANUFACTURER == null ? AdTrackerConstants.BLANK : Build.MANUFACTURER) + "," + (Build.MODEL == null ? AdTrackerConstants.BLANK : Build.MODEL);
        } catch (Exception e) {
            Logger.d(Logger.DEVICE_TAG, "error getting device model", e);
            return str;
        }
    }

    public final Float g() {
        Float f = null;
        try {
            return Float.valueOf(((float) this.d.getStreamVolume(IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE)) / ((float) this.d.getStreamMaxVolume(IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE)));
        } catch (Exception e) {
            Logger.d(Logger.DEVICE_TAG, "error getting volume info", e);
            return f;
        }
    }

    public final boolean h() {
        return this.a != null || this.b != null;
    }

    public final boolean i() {
        boolean equals = "mounted".equals(Environment.getExternalStorageState());
        if (equals) {
            Logger.v(Logger.DEVICE_TAG, "external storage writable");
        } else {
            Logger.w(Logger.DEVICE_TAG, "external storage not writable");
        }
        return equals;
    }

    public final boolean j() {
        return a(Logger.DEVICE_TAG);
    }

    public final void k() {
        this.h.a(this);
    }

    public final String l() {
        return this.g.getString("defaultUserAgent", null);
    }
}