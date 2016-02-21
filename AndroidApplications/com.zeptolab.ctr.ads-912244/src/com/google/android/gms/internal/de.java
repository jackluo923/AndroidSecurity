package com.google.android.gms.internal;

import android.net.Uri;
import android.net.UrlQuerySanitizer;
import android.net.UrlQuerySanitizer.ParameterValuePair;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.brightcove.player.media.MediaService;
import com.zeptolab.ctr.scorer.GoogleScorer;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public class de extends WebViewClient {
    private ap lV;
    private final Object mg;
    protected final dd ng;
    private final HashMap qf;
    private u qg;
    private br qh;
    private a qi;
    private boolean qj;
    private boolean qk;
    private bu ql;

    public static interface a {
        void a_(dd ddVar);
    }

    class AnonymousClass_1 implements Runnable {
        final /* synthetic */ bo qm;

        AnonymousClass_1(bo boVar) {
            this.qm = boVar;
        }

        public void run() {
            this.qm.ar();
        }
    }

    public de(dd ddVar, boolean z) {
        this.qf = new HashMap();
        this.mg = new Object();
        this.qj = false;
        this.ng = ddVar;
        this.qk = z;
    }

    private void a(bq bqVar) {
        bo.a(this.ng.getContext(), bqVar);
    }

    private static boolean b(Uri uri) {
        String scheme = uri.getScheme();
        return MediaService.DEFAULT_MEDIA_DELIVERY.equalsIgnoreCase(scheme) || "https".equalsIgnoreCase(scheme);
    }

    private void c(Uri uri) {
        String path = uri.getPath();
        ar arVar = (ar) this.qf.get(path);
        if (arVar != null) {
            Map hashMap = new HashMap();
            UrlQuerySanitizer urlQuerySanitizer = new UrlQuerySanitizer();
            urlQuerySanitizer.setAllowUnregisteredParamaters(true);
            urlQuerySanitizer.setUnregisteredParameterValueSanitizer(UrlQuerySanitizer.getAllButNulLegal());
            urlQuerySanitizer.parseUrl(uri.toString());
            Iterator it = urlQuerySanitizer.getParameterList().iterator();
            while (it.hasNext()) {
                ParameterValuePair parameterValuePair = (ParameterValuePair) it.next();
                hashMap.put(parameterValuePair.mParameter, parameterValuePair.mValue);
            }
            if (da.n(GoogleScorer.CLIENT_PLUS)) {
                da.v("Received GMSG: " + path);
                Iterator it2 = hashMap.keySet().iterator();
                while (it2.hasNext()) {
                    String str = (String) it2.next();
                    da.v("  " + str + ": " + ((String) hashMap.get(str)));
                }
            }
            arVar.a(this.ng, hashMap);
        } else {
            da.w("No GMSG handler found for GMSG: " + uri);
        }
    }

    public final void a(bn bnVar) {
        u uVar;
        br brVar = null;
        boolean be = this.ng.be();
        uVar = (!be || this.ng.Q().lo) ? this.qg : null;
        if (!be) {
            brVar = this.qh;
        }
        a(new bq(bnVar, uVar, brVar, this.ql, this.ng.bd()));
    }

    public final void a(a aVar) {
        this.qi = aVar;
    }

    public void a(u uVar, br brVar, ap apVar, bu buVar, boolean z) {
        a("/appEvent", new ao(apVar));
        a("/canOpenURLs", aq.lW);
        a("/click", aq.lX);
        a("/close", aq.lY);
        a("/customClose", aq.lZ);
        a("/httpTrack", aq.ma);
        a("/log", aq.mb);
        a("/open", aq.mc);
        a("/touch", aq.md);
        a("/video", aq.me);
        this.qg = uVar;
        this.qh = brVar;
        this.lV = apVar;
        this.ql = buVar;
        o(z);
    }

    public final void a(String str, ar arVar) {
        this.qf.put(str, arVar);
    }

    public final void a(boolean z, int i) {
        u uVar;
        uVar = (!this.ng.be() || this.ng.Q().lo) ? this.qg : null;
        a(new bq(uVar, this.qh, this.ql, this.ng, z, i, this.ng.bd()));
    }

    public final void a(boolean z, int i, String str) {
        u uVar;
        br brVar = null;
        boolean be = this.ng.be();
        uVar = (!be || this.ng.Q().lo) ? this.qg : null;
        if (!be) {
            brVar = this.qh;
        }
        a(new bq(uVar, brVar, this.lV, this.ql, this.ng, z, i, str, this.ng.bd()));
    }

    public final void a(boolean z, int i, String str, String str2) {
        u uVar;
        br brVar = null;
        boolean be = this.ng.be();
        uVar = (!be || this.ng.Q().lo) ? this.qg : null;
        if (!be) {
            brVar = this.qh;
        }
        a(new bq(uVar, brVar, this.lV, this.ql, this.ng, z, i, str, str2, this.ng.bd()));
    }

    public final void ar() {
        synchronized (this.mg) {
            this.qj = false;
            this.qk = true;
            bo ba = this.ng.ba();
            if (ba != null) {
                if (cz.aX()) {
                    ba.ar();
                } else {
                    cz.pT.post(new AnonymousClass_1(ba));
                }
            }
        }
    }

    public boolean bi() {
        boolean z;
        synchronized (this.mg) {
            z = this.qk;
        }
        return z;
    }

    public final void o(boolean z) {
        this.qj = z;
    }

    public final void onPageFinished(WebView webView, String str) {
        if (this.qi != null) {
            this.qi.a(this.ng);
            this.qi = null;
        }
    }

    public final void reset() {
        synchronized (this.mg) {
            this.qf.clear();
            this.qg = null;
            this.qh = null;
            this.qi = null;
            this.lV = null;
            this.qj = false;
            this.qk = false;
            this.ql = null;
        }
    }

    public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
        da.v("AdWebView shouldOverrideUrlLoading: " + str);
        Uri parse = Uri.parse(str);
        if ("gmsg".equalsIgnoreCase(parse.getScheme()) && "mobileads.google.com".equalsIgnoreCase(parse.getHost())) {
            c(parse);
        } else if (this.qj && webView == this.ng && b(parse)) {
            return super.shouldOverrideUrlLoading(webView, str);
        } else {
            if (this.ng.willNotDraw()) {
                da.w("AdWebView unable to handle URL: " + str);
            } else {
                Uri uri;
                try {
                    l bc = this.ng.bc();
                    if (bc != null && bc.a(parse)) {
                        parse = bc.a(parse, this.ng.getContext());
                    }
                    uri = parse;
                } catch (m e) {
                    da.w("Unable to append parameter to URL: " + str);
                    uri = parse;
                }
                a(new bn("android.intent.action.VIEW", uri.toString(), null, null, null, null, null));
            }
        }
        return true;
    }
}