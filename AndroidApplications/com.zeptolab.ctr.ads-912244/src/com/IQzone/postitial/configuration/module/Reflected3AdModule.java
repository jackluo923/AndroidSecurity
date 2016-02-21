package com.IQzone.postitial.configuration.module;

import android.content.Context;
import android.os.Handler;
import com.IQzone.postitial.obfuscated.ag;
import com.IQzone.postitial.obfuscated.ak;
import com.IQzone.postitial.obfuscated.al;
import com.IQzone.postitial.obfuscated.jk;
import com.IQzone.postitial.obfuscated.ko;
import com.IQzone.postitial.obfuscated.mx;
import com.IQzone.postitial.obfuscated.o;
import com.IQzone.postitial.obfuscated.pv;
import com.IQzone.postitial.obfuscated.px;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

public class Reflected3AdModule extends o {
    private static Map a;
    private ak b;

    public Reflected3AdModule(Context context, al alVar) {
        super(context, alVar);
    }

    public static final synchronized Map b() {
        Map hashMap;
        synchronized (Reflected3AdModule.class) {
            hashMap = a != null ? new HashMap(a) : new HashMap();
        }
        return hashMap;
    }

    public static synchronized void setParametersMap(Map map) {
        synchronized (Reflected3AdModule.class) {
            a = map;
        }
    }

    protected final ag a(Context context, Handler handler, px pxVar, pv pvVar, mx mxVar, mx mxVar2, mx mxVar3, mx mxVar4, mx mxVar5, mx mxVar6, px pxVar2) {
        this.b = new jk(context, mxVar, mxVar2, mxVar3, mxVar4, mxVar5, mxVar6, handler);
        return new ko(this, context, pxVar, pvVar, pxVar2, this.b);
    }

    public Set createDisplayControllers() {
        return this.b.c();
    }

    public Set createDisplayFactories() {
        return this.b.b();
    }

    public Set getAdViewingControllers() {
        return this.b.e();
    }

    public Set getAdViewingDisplayFactory() {
        return this.b.d();
    }

    public boolean isBackOverriden() {
        return false;
    }
}