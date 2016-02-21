package com.IQzone.postitial.obfuscated;

import android.app.Activity;
import android.app.KeyguardManager;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Looper;
import android.os.PowerManager;
import android.telephony.TelephonyManager;
import android.view.WindowManager;
import com.IQzone.postitial.a;
import com.zeptolab.zbuild.ZBuildConfig;
import java.util.HashSet;
import java.util.Set;

public final class em implements a {
    private static final ql a;
    private static final Set b;
    private final Context c;
    private final eu d;
    private final mx e;
    private final mx f;
    private final px g;
    private volatile long h;
    private volatile boolean i;

    static {
        a = new ql();
        b = new HashSet();
    }

    public em(Context context, eu euVar, mx mxVar, mx mxVar2, px pxVar) {
        b.add("KFTHWI".toLowerCase());
        this.g = pxVar;
        this.d = euVar;
        this.c = context;
        this.e = mxVar;
        this.f = mxVar2;
    }

    private synchronized boolean c() {
        boolean z;
        z = ((PowerManager) this.c.getSystemService("power")).isScreenOn() && (!((KeyguardManager) this.c.getSystemService("keyguard")).inKeyguardRestrictedInputMode()) != 0;
        return z;
    }

    private synchronized void d(Activity activity) {
        if (Looper.getMainLooper() != Looper.myLooper()) {
            throw new RuntimeException("<ActivityMonitorImpl><1>, activityStop() must be called from the main thread.");
        }
        boolean isFinishing = activity.isFinishing();
        String name = activity.getClass().getName();
        Set hashSet = new HashSet();
        try {
            String str = (String) this.g.a();
            if (str.contains(";")) {
                String[] split = str.split(";");
                int length = split.length;
                int i = 0;
                while (i < length) {
                    hashSet.add(split[i]);
                    i++;
                }
            }
        } catch (om e) {
            ql qlVar = a;
        }
        activity.getClass();
        new mv().post(new ep(this, name, hashSet, false, isFinishing, activity));
    }

    private synchronized boolean d() {
        return ((TelephonyManager) this.c.getSystemService(ZBuildConfig.device)).getCallState() != 0;
    }

    public final void a() {
        this.i = true;
    }

    public final void a(long j) {
        this.h = System.currentTimeMillis() + j;
    }

    public final synchronized void a(Activity activity) {
        if (Looper.getMainLooper() == Looper.myLooper()) {
            this.e.a(null);
        } else {
            new mv(Looper.getMainLooper()).post(new en(this));
        }
    }

    public final synchronized void a(Activity activity, int i, int i2, Intent intent) {
    }

    public final synchronized void a(Activity activity, Intent intent, int i) {
    }

    public final void a(dz dzVar) {
        this.d.a(dz.a).a(dzVar, new er(this));
    }

    public final synchronized void b(Activity activity) {
        if (Looper.getMainLooper() == Looper.myLooper()) {
            this.f.a(null);
            d(activity);
        } else {
            new mv(Looper.getMainLooper()).post(new eo(this, activity));
        }
    }

    public final int c(Activity activity) {
        int i;
        ql qlVar;
        int i2 = activity.getResources().getConfiguration().orientation;
        int rotation = ((WindowManager) this.c.getSystemService("window")).getDefaultDisplay().getRotation();
        String toLowerCase = Build.MODEL.toLowerCase();
        i = (i2 == 1 && rotation == 1) ? 9 : i2;
        if (b.contains(toLowerCase) && i == 1 && rotation == 2) {
            ql qlVar2 = a;
            i = 9;
        } else if (i == 1 && rotation == 2) {
            qlVar = a;
        }
        qlVar = a;
        new StringBuilder("setting launch orientation to ").append(i).append(", with rotation = ").append(rotation).toString();
        return i;
    }
}