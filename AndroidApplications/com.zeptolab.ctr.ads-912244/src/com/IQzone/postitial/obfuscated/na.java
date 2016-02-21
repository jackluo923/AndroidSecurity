package com.IQzone.postitial.obfuscated;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;

public abstract class na extends Activity {
    private static final ql a;
    private final my b;
    private final Executor c;
    private boolean d;
    private boolean e;
    private boolean f;
    private mu g;
    private mu h;

    static {
        a = new ql();
    }

    public na() {
        this.b = new my();
        this.c = Executors.newSingleThreadExecutor();
    }

    private void a(boolean z) {
        boolean z2 = true;
        if (z) {
            if (this.d) {
                z2 = false;
            } else {
                this.d = true;
            }
        } else if (this.d) {
            this.d = false;
        } else {
            z2 = false;
        }
        if (z2) {
            mx moVar = new mo(this);
            Context applicationContext = getApplicationContext();
            if (applicationContext instanceof mw) {
                ((mw) applicationContext).a(new oe(moVar, false, this.b));
            } else {
                moVar.a(null);
            }
        }
    }

    static /* synthetic */ void b(na naVar) {
        Iterator it;
        mq mqVar;
        Iterator it2;
        lx lxVar;
        ql qlVar = a;
        new StringBuilder("connect").append(naVar.g).toString();
        if (!naVar.e) {
            naVar.e = true;
            naVar.c();
        }
        if (naVar.h == null) {
            naVar.h = new mu(naVar.a());
        }
        if (naVar.g == null) {
            naVar.g = new mu();
            it = naVar.h.iterator();
            while (it.hasNext()) {
                mqVar = (mq) it.next();
                it2 = naVar.b().iterator();
                while (it2.hasNext()) {
                    lxVar = (lx) it2.next();
                    if (mqVar.b.isInstance(lxVar)) {
                        naVar.g.add(new mk(new nu(naVar), lxVar, mqVar.b).a());
                    }
                }
            }
        }
        it = naVar.h.iterator();
        while (it.hasNext()) {
            mqVar = (mq) it.next();
            it2 = naVar.g.iterator();
            while (it2.hasNext()) {
                lxVar = (lx) it2.next();
                if (!naVar.f && mqVar.b.isInstance(lxVar)) {
                    mqVar.a.a(lxVar);
                    mqVar.c.execute(new mr(mqVar, lxVar));
                }
                if (mqVar.b.isInstance(lxVar)) {
                    mqVar.a.a(lxVar);
                    mqVar.c.execute(new ms(mqVar, lxVar));
                }
            }
        }
        naVar.f = true;
    }

    static /* synthetic */ void c(na naVar) {
        ql qlVar = a;
        new StringBuilder("disconnect").append(naVar.g).toString();
        if (naVar.g != null && naVar.h != null) {
            Iterator it = naVar.h.iterator();
            while (it.hasNext()) {
                mq mqVar = (mq) it.next();
                Iterator it2 = naVar.g.iterator();
                while (it2.hasNext()) {
                    mqVar.b((lx) it2.next());
                }
            }
        }
    }

    protected abstract Set a();

    protected abstract Set b();

    protected abstract void c();

    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Context applicationContext = getApplicationContext();
        if (!(applicationContext instanceof mw)) {
            this.e = true;
            c();
        } else if (((mw) applicationContext).a()) {
            c();
            this.e = true;
        } else {
            this.e = false;
        }
    }

    protected void onDestroy() {
        super.onDestroy();
        a(false);
    }

    public void onPause() {
        super.onPause();
        a(false);
    }

    protected void onRestart() {
        super.onRestart();
        a(true);
    }

    public void onResume() {
        super.onResume();
        a(true);
    }

    protected void onStart() {
        super.onStart();
        a(true);
    }

    public void onStop() {
        super.onStop();
        a(false);
    }
}