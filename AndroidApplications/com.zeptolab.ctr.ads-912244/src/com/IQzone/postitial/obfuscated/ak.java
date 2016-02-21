package com.IQzone.postitial.obfuscated;

import android.content.Context;
import android.os.Handler;
import android.view.ViewGroup;
import java.util.HashSet;
import java.util.Set;

public abstract class ak {
    final mx a;
    final Context b;
    final Handler c;
    final mx d;
    final mx e;
    final mx f;
    final mx g;
    final mx h;

    public ak(Context context, mx mxVar, mx mxVar2, mx mxVar3, mx mxVar4, mx mxVar5, mx mxVar6, Handler handler) {
        this.h = mxVar6;
        this.g = mxVar5;
        this.f = mxVar4;
        this.e = mxVar3;
        this.d = mxVar2;
        this.c = handler;
        this.b = context;
        this.a = mxVar;
    }

    public void a() {
    }

    public abstract void a(m mVar, String str, ViewGroup viewGroup, mx mxVar, boolean z);

    public void a(boolean z) {
        this.f.a(Boolean.valueOf(true));
    }

    public Set b() {
        return new HashSet();
    }

    public void b(boolean z) {
        this.e.a(Boolean.valueOf(z));
    }

    public Set c() {
        return new HashSet();
    }

    public Set d() {
        return new mu();
    }

    public Set e() {
        return new mu();
    }

    public mx f() {
        return this.a;
    }

    public mx g() {
        return this.d;
    }

    public Handler h() {
        return this.c;
    }

    public Context i() {
        return this.b;
    }

    public mx j() {
        return this.h;
    }

    public mx k() {
        return this.g;
    }
}