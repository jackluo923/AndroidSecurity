package com.flurry.sdk;

import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import java.util.Iterator;
import java.util.List;

public class ey {
    private static final String a;
    private final dq b;
    private long c;
    private boolean d;
    private boolean e;
    private fc f;

    public static interface a {
        void a_(ey eyVar);
    }

    static {
        a = ey.class.getSimpleName();
    }

    public ey() {
        this.b = new dq();
        this.c = 1000;
        this.d = true;
        this.e = false;
        this.f = new fc() {
            public void a() {
                try {
                    Iterator it = ey.this.f().iterator();
                    while (it.hasNext()) {
                        ((com.flurry.sdk.ey.a) it.next()).a(ey.this);
                    }
                } catch (Throwable th) {
                    el.a(IabHelper.BILLING_RESPONSE_RESULT_ERROR, a, AdTrackerConstants.BLANK, th);
                }
                if (ey.this.d && ey.this.e) {
                    dl.a().a(ey.this.f, ey.this.c);
                }
            }
        };
    }

    private synchronized List f() {
        return this.b.a();
    }

    public synchronized void a() {
        if (!this.e) {
            dl.a().a(this.f, this.c);
            this.e = true;
        }
    }

    public void a(long j) {
        this.c = j;
    }

    public synchronized void a(a aVar) {
        this.b.a(aVar);
    }

    public void a(boolean z) {
        this.d = z;
    }

    public synchronized void b() {
        if (this.e) {
            dl.a().b(this.f);
            this.e = false;
        }
    }

    public synchronized boolean b(a aVar) {
        return this.b.b(aVar);
    }

    public synchronized boolean c() {
        return this.e;
    }

    public synchronized int d() {
        return this.b.b();
    }
}