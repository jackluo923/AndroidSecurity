package com.IQzone.postitial.obfuscated;

import android.content.Context;
import android.os.Build.VERSION;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import com.inmobi.commons.internal.ApiStatCollector.ApiEventType;
import com.millennialmedia.android.MMException;
import com.zeptolab.ctr.ads.R;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import com.zeptolab.zbuild.ZBuildConfig;
import java.util.List;
import java.util.regex.Pattern;

public abstract class af extends h {
    private static final ql f;
    private final Context g;
    private final px h;
    private final px i;
    private final Pattern j;
    private final long k;

    static {
        f = new ql();
    }

    public af(Context context, px pxVar, px pxVar2, px pxVar3) {
        super(context, pxVar, pxVar3);
        this.j = Pattern.compile("[0-9]");
        this.k = System.currentTimeMillis();
        this.h = pxVar;
        this.g = context;
        this.i = pxVar2;
    }

    public final void a(int i) {
        boolean z = true;
        ViewGroup relativeLayout = new RelativeLayout(this.g);
        relativeLayout.setBackgroundColor(-16777216);
        relativeLayout.setLayoutParams(new LayoutParams(-1, -1));
        synchronized (this.b) {
            if (this.b.i() != i) {
            } else {
                this.b.a(Long.MAX_VALUE);
                this.b.a(relativeLayout);
                ql qlVar = f;
                this.b.b(false);
                this.b.c(false);
                relativeLayout.removeAllViews();
                try {
                    jl jlVar = (jl) this.h.a();
                    String d = jlVar.d();
                    d.contains("OVERRIDE=");
                    try {
                        int i2;
                        List a = a((List) this.i.a());
                        i2 = !jlVar.i() && VERSION.SDK_INT >= 19 && h();
                        if (i2 != 0) {
                            a.remove(m.d);
                            a.remove(m.b);
                            a.remove(m.h);
                            a.remove(m.e);
                            a.remove(m.q);
                            a.remove(m.r);
                            a.remove(m.m);
                            a.remove(m.n);
                            a.remove(m.j);
                        }
                        if (i()) {
                            z = jlVar.i();
                        } else if (i2 != 0) {
                            z = false;
                        }
                        a(d, a, relativeLayout, i, z);
                    } catch (om e) {
                        throw new RuntimeException("<DefaultRefreshable><2>, ERROR WITH LIST");
                    }
                } catch (om e2) {
                    qlVar = f;
                }
            }
        }
    }

    protected final m e(int i) {
        switch (i) {
            case GoogleScorer.CLIENT_GAMES:
                return m.a;
            case GoogleScorer.CLIENT_PLUS:
                return m.b;
            case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                return m.g;
            case GoogleScorer.CLIENT_APPSTATE:
                return m.c;
            case IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR:
                return m.f;
            case IabHelper.BILLING_RESPONSE_RESULT_ERROR:
                return m.e;
            case GoogleScorer.CLIENT_ALL:
                return m.d;
            case IabHelper.BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED:
                return m.h;
            case ZBuildConfig.$minsdk:
                return m.i;
            case R.styleable.MapAttrs_uiZoomControls:
                return m.j;
            case R.styleable.MapAttrs_uiZoomGestures:
                return m.k;
            case R.styleable.MapAttrs_useViewLifecycle:
                return m.l;
            case R.styleable.MapAttrs_zOrderOnTop:
                return m.m;
            case MMException.REQUEST_NOT_FILLED:
                return m.n;
            case MMException.REQUEST_BAD_RESPONSE:
                return m.o;
            case MMException.REQUEST_NOT_PERMITTED:
                return m.p;
            case ZBuildConfig.$targetsdk:
                return m.q;
            case ApiEventType.API_MRAID_GET_CURRENT_POSITION:
                return m.r;
            case ApiEventType.API_MRAID_GET_DEFAULT_POSITION:
                return m.s;
            default:
                return null;
        }
    }

    public void f(int i) {
    }

    public final int g() {
        return this.b.c();
    }

    public boolean h() {
        return true;
    }

    public boolean i() {
        return false;
    }
}