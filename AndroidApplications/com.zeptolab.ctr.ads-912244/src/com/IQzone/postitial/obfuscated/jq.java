package com.IQzone.postitial.obfuscated;

import android.view.ViewGroup;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import java.io.File;

final class jq implements Runnable {
    final /* synthetic */ ks a;
    final /* synthetic */ ViewGroup b;
    final /* synthetic */ File c;
    final /* synthetic */ jk d;
    private /* synthetic */ mx e;

    jq(jk jkVar, ks ksVar, ViewGroup viewGroup, File file, mx mxVar) {
        this.d = jkVar;
        this.a = ksVar;
        this.b = viewGroup;
        this.c = file;
        this.e = mxVar;
    }

    public final void run() {
        mx jrVar;
        jk.l();
        jrVar = (this.a.f() == null || this.a.f().trim().equals(AdTrackerConstants.BLANK)) ? null : new jr(this);
        jk.l();
        new StringBuilder("click callback ").append(jrVar).toString();
        this.e.a(new ah(true, false, new js(this, jrVar)));
    }
}