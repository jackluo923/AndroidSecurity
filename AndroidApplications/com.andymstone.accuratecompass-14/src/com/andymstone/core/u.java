package com.andymstone.core;

import android.content.Context;
import android.os.Bundle;
import android.support.v4.app.e;
import android.support.v4.app.i;
import android.support.v4.app.o;

public class u {
    private z a;
    private int b;

    u(z zVar) {
        this.b = 0;
        this.a = zVar;
    }

    static void a(Context context) {
        z.b(context);
    }

    public static void a(i iVar, String str, x xVar) {
        z zVar = new z(iVar);
        zVar.a();
        zVar.k();
        new u(zVar).b(iVar, str, xVar);
    }

    private void a(x xVar, i iVar, y yVar) {
        a(xVar, iVar, yVar, new v(this));
    }

    private void a(x xVar, i iVar, y yVar, String str) {
        if (yVar.q() && !a(iVar)) {
            o e = iVar.e();
            if (e.a("rate_me") == null) {
                p pVar = new p();
                Bundle bundle = new Bundle();
                bundle.putString("app_name", str);
                pVar.g(bundle);
                pVar.a(e, "rate_me");
                this.a.h();
                this.a.g();
            }
        }
    }

    private void b(i iVar, String str, x xVar) {
        long m = this.a.m();
        long j = this.a.j();
        if (j == 0) {
            this.b = 1;
        } else if (j < m && xVar.a(j, m)) {
            this.b = 2;
        } else if (a() && !b()) {
            this.b = 3;
        } else if (!(b(iVar) || b() || !c())) {
            this.b = 4;
        }
        switch (this.b) {
            case o.MyAlertDialog_myAlertDialogAccentColor:
                c(iVar);
                d(iVar);
                a(xVar, iVar, (y)iVar);
            case o.MyAlertDialog_myAlertDialogButtonDrawable:
                c(iVar);
                d(iVar);
                b(xVar, iVar, (y)iVar);
            case o.MyAlertDialog_MAD_titleStyle:
                d(iVar);
                a(xVar, iVar, (y)iVar, str);
            case o.MyAlertDialog_MAD_buttonBarStyle:
                c(xVar, iVar, iVar);
            default:
                break;
        }
    }

    private void b(x xVar, i iVar, y yVar) {
        a(xVar, iVar, yVar, this.a.j(), new w(this));
    }

    private boolean b() {
        return System.currentTimeMillis() < this.a.i() + 86400000;
    }

    private boolean b(i iVar) {
        return iVar.e().a("rate_me") != null;
    }

    private void c(i iVar) {
        e eVar = (e) iVar.e().a("rate_me");
        if (eVar != null) {
            eVar.b();
        }
    }

    private void c(x xVar, i iVar, y yVar) {
        if (yVar.q() && !a(iVar) && iVar.e().a("GoProDialogStartupFragment") == null) {
            e h = xVar.h();
            if (h != null) {
                this.a.f();
                h.a(iVar.e(), "GoProDialogStartupFragment");
                this.a.h();
            }
        }
    }

    private boolean c() {
        long b = this.a.b();
        long d = this.a.d();
        long currentTimeMillis = System.currentTimeMillis();
        if (b == 0 && currentTimeMillis > d + 604800000) {
            return true;
        }
        return b > 0 && currentTimeMillis > b + 1209600000;
    }

    private void d(i iVar) {
        e eVar = (e) iVar.e().a("GoProDialogStartupFragment");
        if (eVar != null) {
            eVar.b();
        }
    }

    public final void a(x xVar, i iVar, y yVar, long j, Runnable runnable) {
        if (yVar.q()) {
            runnable.run();
            o e = iVar.e();
            if (((e) e.a("FirstStartFragment")) == null) {
                e eVar = (e) e.a("WhatsNewMinorFragment");
                if (eVar != null) {
                    eVar.b();
                }
                if (((e) e.a("WhatsNewFragment")) == null) {
                    if (xVar.a(j)) {
                        xVar.p().a(e, "WhatsNewMinorFragment");
                    } else {
                        xVar.o().a(e, "WhatsNewFragment");
                    }
                    this.a.h();
                }
            }
        }
    }

    public final void a(x xVar, i iVar, y yVar, Runnable runnable) {
        if (yVar.q()) {
            runnable.run();
            o e = iVar.e();
            e eVar = (e) e.a("FirstStartFragment");
            if (eVar != null) {
                eVar.b();
            }
            eVar = (e) e.a("WhatsNewFragment");
            if (eVar != null) {
                eVar.b();
            }
            eVar = (e) e.a("WhatsNewMinorFragment");
            if (eVar != null) {
                eVar.b();
            }
            xVar.n().a(e, "FirstStartFragment");
            this.a.h();
        }
    }

    public boolean a() {
        if (this.a.l() || this.a.e() < 7) {
            return false;
        }
        long d = this.a.d();
        long c = this.a.c();
        if (c == 0) {
            return System.currentTimeMillis() > d + 604800000;
        } else if (System.currentTimeMillis() > c + 259200000) {
            return true;
        } else {
            return false;
        }
    }

    public boolean a(i iVar) {
        o e = iVar.e();
        return e.a("WhatsNewFragment") != null || e.a("WhatsNewMinorFragment") != null || e.a("FirstStartFragment") != null;
    }
}