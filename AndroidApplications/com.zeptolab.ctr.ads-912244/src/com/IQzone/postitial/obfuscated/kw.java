package com.IQzone.postitial.obfuscated;

import com.zeptolab.ctr.ads.R;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.zbuild.ZBuildConfig;
import java.util.Calendar;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Executor;

public class kw {
    private static final ql a;
    private final es b;
    private final ou c;
    private final mx d;
    private final Executor e;
    private final Map f;
    private volatile long g;
    private volatile int h;
    private volatile int i;

    static {
        a = new ql();
    }

    public kw(es esVar, ou ouVar, mx mxVar, Executor executor) {
        ql qlVar;
        long j = 0;
        this.f = new HashMap();
        this.h = Integer.MIN_VALUE;
        this.i = 0;
        this.e = executor;
        this.d = mxVar;
        this.c = ouVar;
        this.b = esVar;
        try {
            String str = (String) ouVar.a("postitial-adstates-last-ad");
            if (str == null) {
                this.g = 0;
            } else {
                this.g = Long.parseLong(str);
            }
        } catch (om e) {
            om omVar = e;
            this.g = j;
            try {
                ouVar.c("postitial-adstates-last-ad");
            } catch (om e2) {
                qlVar = a;
                try {
                    ouVar.a();
                } catch (om e3) {
                    qlVar = a;
                }
            }
            qlVar = a;
            new StringBuilder("<AdStatesMachine><1>, Error pulling lastAd from cache").append(omVar.getMessage()).toString();
        }
        ql qlVar2 = a;
        new StringBuilder("LastAd:").append(this.g).toString();
        try {
            str = (String) ouVar.a("postitial-adstates-last-date");
            if (str == null) {
                this.h = Integer.MIN_VALUE;
            } else {
                this.h = Integer.parseInt(str);
            }
        } catch (om e4) {
            omVar = e4;
            this.h = Integer.MIN_VALUE;
            try {
                ouVar.c("postitial-adstates-last-date");
            } catch (om e5) {
                qlVar = a;
                try {
                    ouVar.a();
                } catch (om e6) {
                    qlVar = a;
                }
            }
            qlVar = a;
            new StringBuilder("<AdStatesMachine><2>, Error pulling date from cache ").append(omVar.getMessage()).toString();
        }
        qlVar2 = a;
        new StringBuilder("LastDate:").append(this.h).toString();
        try {
            str = (String) ouVar.a("postitial-adstates-ads-today");
            if (str == null) {
                this.i = 0;
            } else {
                this.i = Integer.parseInt(str);
            }
        } catch (om e7) {
            omVar = e7;
            this.i = 0;
            try {
                ouVar.c("postitial-adstates-ads-today");
            } catch (om e8) {
                qlVar = a;
                try {
                    ouVar.a();
                } catch (om e9) {
                    qlVar = a;
                }
            }
            qlVar = a;
            new StringBuilder("<AdStatesMachine><3>, Error pulling ads today from cache ").append(omVar.getMessage()).toString();
        }
        qlVar2 = a;
        new StringBuilder("adsTodayString:").append(this.i).toString();
    }

    private void h() {
        this.e.execute(new kx(this, this.g, this.h, this.i));
    }

    private long i() {
        boolean z = true;
        long currentTimeMillis = System.currentTimeMillis() - this.g;
        Calendar instance = Calendar.getInstance();
        int i = instance.get(IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR);
        long j = this.b.b;
        boolean z2;
        if (i != this.h) {
            this.h = i;
            this.i = 0;
            z2 = true;
        } else if (this.i < this.b.c) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (currentTimeMillis <= j || !this.b.a || i == 0) {
            z = false;
        }
        if (!z) {
            this.e.execute(new ky(this));
        }
        ql qlVar = a;
        new StringBuilder("canShowAfterExit: ").append(z).toString();
        h();
        if (z) {
            return 0;
        }
        long j2 = j - currentTimeMillis;
        if (j2 > 0) {
            return j2;
        }
        int i2 = instance.get(R.styleable.MapAttrs_uiZoomControls);
        return instance.get(ZBuildConfig.$minsdk) == 0 ? (long) (((i2 * 60) * 60) * 1000) : (long) (((i2 * 60) * 60) * 1000 + 43200000);
    }

    public final synchronized long a() {
        return i();
    }

    public final kz a(jl jlVar) {
        try {
            if (((String) this.c.a(new StringBuilder("postitial-adstates-last-type-").append(jlVar.a()).toString())) != null) {
                return kz.b;
            }
            this.c.a(new StringBuilder("postitial-adstates-last-type-").append(jlVar.a()).toString(), String.valueOf("1"));
            return kz.a;
        } catch (om e) {
            ql qlVar = a;
            return kz.a;
        }
    }

    public final synchronized long b() {
        return i();
    }

    public final void b(jl jlVar) {
        this.f.put(new StringBuilder("postitial-adstates-skip-type-").append(jlVar.a()).toString(), Boolean.valueOf(true));
    }

    public final synchronized long c() {
        return i();
    }

    public final void c(jl jlVar) {
        this.f.put(new StringBuilder("postitial-adstates-skip-type-").append(jlVar.a()).toString(), Boolean.valueOf(false));
    }

    public final synchronized void d() {
        this.i++;
        this.g = System.currentTimeMillis();
        h();
    }

    public final boolean d(jl jlVar) {
        Boolean bool = (Boolean) this.f.get(new StringBuilder("postitial-adstates-skip-type-").append(jlVar.a()).toString());
        return bool != null && bool.booleanValue();
    }

    public final synchronized void e() {
        d();
    }

    public final synchronized void f() {
        d();
    }
}