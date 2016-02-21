package com.IQzone.postitial.obfuscated;

import android.view.ViewGroup;
import com.zeptolab.ctr.ads.R;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import com.zeptolab.zbuild.ZBuildConfig;

final class jm implements Runnable {
    final /* synthetic */ mx a;
    final /* synthetic */ String[] b;
    final /* synthetic */ ViewGroup c;
    final /* synthetic */ jk d;
    private /* synthetic */ m e;
    private /* synthetic */ boolean f;

    jm(jk jkVar, m mVar, mx mxVar, String[] strArr, ViewGroup viewGroup, boolean z) {
        this.d = jkVar;
        this.e = mVar;
        this.a = mxVar;
        this.b = strArr;
        this.c = viewGroup;
        this.f = z;
    }

    public final void run() {
        mx mxVar = null;
        boolean z = false;
        try {
            switch (jp.a[this.e.ordinal()]) {
                case GoogleScorer.CLIENT_GAMES:
                    if (jk.a(this.d, this.d.i())) {
                        jk.a(this.d, this.b[0], this.b[1], this.c, this.a, -1, -1, kn.b, true, this.f);
                    } else {
                        this.a.a(new ah(false, false, null, (byte) 0));
                    }
                case GoogleScorer.CLIENT_PLUS:
                    if (jk.a(this.d, this.d.i())) {
                        this.a.a(new ah(false, false, null, (byte) 0));
                    } else {
                        jk.a(this.d, this.b[0], this.b[1], this.c, this.a, -1, -1, kn.b, false, this.f);
                    }
                case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                    if (jk.a(this.d, this.d.i())) {
                        jk.a(this.d, this.b[0], this.b[1], this.c, this.a, -1, -1, kn.a, true, this.f);
                    } else {
                        this.a.a(new ah(false, false, null, (byte) 0));
                    }
                case GoogleScorer.CLIENT_APPSTATE:
                    if (jk.a(this.d, this.d.i())) {
                        this.a.a(new ah(false, false, null, (byte) 0));
                    } else {
                        jk.a(this.d, this.b[0], this.b[1], this.c, this.a, -1, -1, kn.a, false, this.f);
                    }
                case IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR:
                    if (jk.a(this.d, this.d.i())) {
                        this.a.a(new ah(false, false, null, (byte) 0));
                    } else {
                        jk.a(this.d, this.b[0], this.b[1], this.c, this.a, -1, -1, kn.c, false, this.f);
                    }
                case IabHelper.BILLING_RESPONSE_RESULT_ERROR:
                    if (jk.a(this.d, this.d.i())) {
                        this.a.a(new ah(false, false, null, (byte) 0));
                    } else {
                        jk.l();
                        jk.a(this.d, this.b[0], this.b[1], this.c, this.a, -1, -1, kn.c, false, this.f);
                    }
                case GoogleScorer.CLIENT_ALL:
                    if (jk.a(this.d, this.d.i())) {
                        this.a.a(new ah(false, false, null, (byte) 0));
                    } else {
                        jk.a(this.d).execute(new jn(this));
                    }
                case IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED:
                    if (jk.a(this.d, this.d.i())) {
                        jk.a(this.d).execute(new jo(this));
                    } else {
                        this.a.a(new ah(false, false, null, (byte) 0));
                    }
                case ZBuildConfig.$minsdk:
                case R.styleable.MapAttrs_uiZoomControls:
                case R.styleable.MapAttrs_uiZoomGestures:
                case R.styleable.MapAttrs_useViewLifecycle:
                    jk.a(this.d, this.b[0], this.b[1], this.c, this.a, -1, -1, kn.c, jk.a(this.d, this.d.i()), this.f);
                default:
                    this.a.a(new ah(false, false, null, (byte) 0));
            }
        } catch (Throwable th) {
            jk.l();
            this.a.a(new ah(z, z, mxVar, z));
        }
    }
}