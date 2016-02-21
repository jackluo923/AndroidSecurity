package com.IQzone.postitial.obfuscated;

import android.app.KeyguardManager;
import android.content.Context;
import android.os.Handler;
import android.os.PowerManager;
import android.telephony.TelephonyManager;
import android.view.ViewGroup;
import com.zeptolab.zbuild.ZBuildConfig;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;

public class np implements dx {
    private static final ql a;
    private final ap b;
    private final Handler c;
    private final ag d;
    private final mq e;
    private final ViewGroup f;
    private final mx g;
    private final Executor h;
    private final Context i;
    private volatile boolean j;
    private volatile int k;
    private volatile long l;
    private volatile boolean m;
    private volatile boolean n;

    static {
        a = new ql();
    }

    public np(Handler handler, ag agVar, ap apVar, ViewGroup viewGroup, mq mqVar, mx mxVar) {
        this.h = Executors.newSingleThreadExecutor();
        this.i = viewGroup.getContext().getApplicationContext();
        this.g = mxVar;
        this.c = handler;
        this.d = agVar;
        this.b = apVar;
        this.e = mqVar;
        this.f = viewGroup;
    }

    static /* synthetic */ boolean a(Context context) {
        return ((TelephonyManager) context.getSystemService(ZBuildConfig.device)).getCallState() != 0;
    }

    private synchronized boolean l() {
        boolean z;
        z = ((PowerManager) this.i.getSystemService("power")).isScreenOn() && (!((KeyguardManager) this.i.getSystemService("keyguard")).inKeyguardRestrictedInputMode()) != 0;
        return z;
    }

    public final synchronized int a(boolean z, mx mxVar) {
        int i;
        boolean z2 = 0;
        synchronized (this) {
            long currentTimeMillis;
            if (z) {
                if (System.currentTimeMillis() - this.l >= 7000) {
                    int i2 = 1;
                }
                currentTimeMillis = System.currentTimeMillis();
                this.l = currentTimeMillis;
            } else {
                currentTimeMillis = 0;
            }
            mg.a(new pr(this, mxVar), this.c);
            this.m = false;
            this.j = true;
            int i3 = this.k + 1;
            this.k = i3;
            if (i2 != 0) {
                this.h.execute(new qm(this, currentTimeMillis));
                this.c.postDelayed(new qn(this, i3), 7000);
            }
            i = this.k;
        }
        return i;
    }

    public final synchronized void a() {
        if (this.j) {
            this.j = false;
            ql qlVar = a;
            new StringBuilder("hideAd ").append(this.m).append(" ").append(this.n).toString();
            if (!(this.m || this.n)) {
                this.g.a(null);
            }
        }
        mg.a(new oq(this), this.c);
    }

    public final synchronized int b() {
        return this.k;
    }

    public final boolean c() {
        return this.j;
    }

    public final boolean d() {
        return this.d.a();
    }

    public final ea e() {
        return this.d;
    }

    public final void f() {
        ql qlVar = a;
        this.m = true;
    }

    public final void g() {
        ql qlVar = a;
        this.m = false;
    }

    public final void h() {
        this.n = true;
    }

    public final void i() {
        this.n = false;
    }

    public final void j() {
        ql qlVar = a;
        new StringBuilder("done viewing ").append(this.m).toString();
        if (!this.m) {
            this.g.a(null);
        }
    }
}