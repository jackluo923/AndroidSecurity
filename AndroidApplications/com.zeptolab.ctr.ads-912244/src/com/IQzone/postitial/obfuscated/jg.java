package com.IQzone.postitial.obfuscated;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;

public class jg extends pp {
    private static final ql a;
    private final Context b;
    private final Class c;
    private final n d;
    private final Handler e;
    private final px f;
    private final pq g;
    private final mx h;

    static {
        a = new ql();
    }

    public jg(Context context, Handler handler, Class cls, n nVar, px pxVar, pq pqVar, mx mxVar) {
        this.g = pqVar;
        this.e = handler;
        this.d = nVar;
        this.c = cls;
        this.b = context;
        this.f = pxVar;
        this.h = mxVar;
    }

    private k a(jl jlVar) {
        nt ntVar = new nt();
        try {
            ei eiVar = new ei();
            al jhVar = new jh(this, jlVar);
            ql qlVar = a;
            new StringBuilder("getting constructor for ").append(al.class).toString();
            Runnable jjVar = new jj(this, jlVar, eiVar, jhVar, ntVar);
            if (Looper.getMainLooper() != Looper.myLooper()) {
                this.e.post(jjVar);
                ntVar.a();
            } else {
                jjVar.run();
            }
            k kVar = (k) ntVar.a;
            if (kVar == null) {
                throw new om("<AdModuleLoader><4>, Couldn't load admodule");
            }
            this.d.a(jlVar.a(), kVar.getDisplayFactory());
            this.d.b(jlVar.a(), kVar.getControllers());
            this.d.c(jlVar.a(), kVar.getAdViewingDisplayFactory());
            this.d.d(jlVar.a(), kVar.getAdViewingControllers());
            return (k) ntVar.a;
        } catch (SecurityException e) {
            Exception exception = e;
            ql qlVar2 = a;
            new StringBuilder("<AdModuleLoader><7>, SecurityException loading admodule:").append(jlVar.a()).toString();
            throw new om(new StringBuilder("<AdModuleLoader><8>, ERROR loading admodule:").append(jlVar.a()).toString(), exception);
        } catch (IllegalArgumentException e2) {
            exception = e2;
            qlVar2 = a;
            new StringBuilder("<AdModuleLoader><11>, IllegalArgumentException loading admodule:").append(jlVar.a()).toString();
            throw new om(new StringBuilder("<AdModuleLoader><12>, ERROR loading admodule:").append(jlVar.a()).toString(), exception);
        } catch (InterruptedException e3) {
            exception = e3;
            qlVar2 = a;
            new StringBuilder("<AdModuleLoader><13>, InterruptedException loading admodule:").append(jlVar.a()).toString();
            throw new om(new StringBuilder("<AdModuleLoader><14>, ERROR loading admodule:").append(jlVar.a()).toString(), exception);
        }
    }
}