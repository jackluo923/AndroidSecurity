package com.IQzone.postitial.obfuscated;

import android.content.Context;
import android.os.Handler;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;

public abstract class o implements k {
    private static final ql a;
    private final dy b;
    private final ap c;
    private final dx d;
    private final Executor e;
    private final Set f;
    private final Set g;
    private final mx h;
    private final mx i;
    private ap j;
    private final mx k;

    static {
        a = new ql();
    }

    public o(Context context, al alVar) {
        this.e = new oc(new no(Executors.newSingleThreadExecutor()));
        this.f = new mu();
        this.g = new mu();
        Handler mvVar = new mv();
        this.k = new p(this);
        this.h = new s(this, mvVar);
        this.i = new v(this, mvVar);
        ql qlVar = a;
        View a = new bv(context).a();
        ImageButton imageButton = (ImageButton) a.findViewById(bt.c);
        ViewGroup viewGroup = (LinearLayout) a.findViewById(bt.b);
        ag a2 = a(context, mvVar, alVar.a(), new x(this, alVar), this.h, this.i, new y(this), new z(this), new aa(this), this.k, alVar.d());
        qlVar = a;
        ag abVar = new ab(this, a2, context, imageButton, mvVar);
        this.j = new ap(context, new bv(context, false).a(), bf.d, true);
        this.j.c(-1);
        this.j.d(-1);
        this.j.a(0);
        this.j.b(0);
        this.c = new ad(this, context, a, bf.a, viewGroup, abVar, mvVar);
        qlVar = a;
        imageButton.setOnClickListener(new q(this));
        this.d = new np(mvVar, abVar, this.c, viewGroup, alVar.c(), alVar.e());
        viewGroup.setOnKeyListener(new r(this));
        this.c.c(-1);
        this.c.d(-1);
        this.c.a(0);
        this.c.b(0);
        qlVar = a;
        this.b = new km(context, this.d, mvVar, alVar.b());
        this.f.addAll(createDisplayFactories());
        this.g.addAll(createDisplayControllers());
        qlVar = a;
    }

    protected abstract ag a(Context context, Handler handler, px pxVar, pv pvVar, mx mxVar, mx mxVar2, mx mxVar3, mx mxVar4, mx mxVar5, mx mxVar6, px pxVar2);

    public abstract Set createDisplayControllers();

    public abstract Set createDisplayFactories();

    public dx getAdController() {
        return this.d;
    }

    public dy getAdLauncher() {
        return this.b;
    }

    public ap getAdOverlay() {
        return this.c;
    }

    public Set getControllers() {
        return this.g;
    }

    public Set getDisplayFactory() {
        return this.f;
    }

    public mx getHideCallback() {
        return this.h;
    }

    public boolean isBackOverriden() {
        return false;
    }

    public void lockLandscape(boolean z) {
        if (z) {
            this.c.a(bc.b);
            this.j.a(bc.b);
        } else {
            this.c.a(bc.c);
            this.j.a(bc.c);
        }
    }

    public void lockPortrait(boolean z) {
        if (z) {
            this.c.a(bc.a);
            this.j.a(bc.a);
        } else {
            this.c.a(bc.c);
            this.j.a(bc.c);
        }
    }

    public final void setLoadable() {
        this.d.g();
        this.d.i();
    }

    public void setOrientation(int i) {
        this.c.e(i);
        this.j.e(i);
    }
}