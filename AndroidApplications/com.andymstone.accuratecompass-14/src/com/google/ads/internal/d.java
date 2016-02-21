package com.google.ads.internal;

import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.net.Uri;
import android.net.Uri.Builder;
import android.os.Handler;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import com.andymstone.core.o;
import com.google.ads.Ad;
import com.google.ads.AdActivity;
import com.google.ads.AdListener;
import com.google.ads.AdRequest;
import com.google.ads.AdRequest.ErrorCode;
import com.google.ads.AdSize;
import com.google.ads.AdView;
import com.google.ads.AppEventListener;
import com.google.ads.InterstitialAd;
import com.google.ads.ac;
import com.google.ads.ae;
import com.google.ads.ag;
import com.google.ads.b;
import com.google.ads.c;
import com.google.ads.e;
import com.google.ads.f;
import com.google.ads.g;
import com.google.ads.h;
import com.google.ads.l;
import com.google.ads.l.a;
import com.google.ads.m;
import com.google.ads.util.AdUtil;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
import java.util.Map;

public class d {
    private static final Object a;
    private final m b;
    private c c;
    private AdRequest d;
    private g e;
    private AdWebView f;
    private i g;
    private Handler h;
    private long i;
    private boolean j;
    private boolean k;
    private boolean l;
    private boolean m;
    private boolean n;
    private SharedPreferences o;
    private long p;
    private ae q;
    private boolean r;
    private LinkedList s;
    private LinkedList t;
    private int u;
    private Boolean v;
    private com.google.ads.d w;
    private e x;
    private f y;
    private String z;

    static {
        a = new Object();
    }

    public d(Ad ad, Activity activity, AdSize adSize, String str, ViewGroup viewGroup, boolean z) {
        this.u = -1;
        this.z = null;
        this.r = z;
        this.e = new g();
        this.c = null;
        this.d = null;
        this.k = false;
        this.h = new Handler();
        this.p = 60000;
        this.l = false;
        this.n = false;
        this.m = true;
        if (activity == null) {
            this.b = new m(l.a(), ad, ad instanceof AdView ? (AdView) ad : null, ad instanceof InterstitialAd ? (InterstitialAd) ad : null, str, null, null, viewGroup, adSize == null ? h.a : h.a(adSize));
        } else {
            synchronized (a) {
                this.o = activity.getApplicationContext().getSharedPreferences("GoogleAdMobAdsPrefs", 0);
                if (z) {
                    long j = this.o.getLong("Timeout" + str, -1);
                    if (j < 0) {
                        this.i = 5000;
                    } else {
                        this.i = j;
                    }
                } else {
                    this.i = 60000;
                }
            }
            this.b = new m(l.a(), ad, ad instanceof AdView ? (AdView) ad : null, ad instanceof InterstitialAd ? (InterstitialAd) ad : null, str, activity, activity.getApplicationContext(), viewGroup, adSize == null ? h.a : h.a(adSize, activity.getApplicationContext()));
            this.q = new ae(this);
            this.s = new LinkedList();
            this.t = new LinkedList();
            a();
            AdUtil.h((Context) this.b.f.a());
            this.w = new com.google.ads.d();
            this.x = new e(this);
            this.v = null;
            this.y = null;
        }
    }

    private void a(f fVar, Boolean bool) {
        List d = fVar.d();
        if (d == null) {
            d = new ArrayList();
            d.add("http://e.admob.com/imp?ad_loc=@gw_adlocid@&qdata=@gw_qdata@&ad_network_id=@gw_adnetid@&js=@gw_sdkver@&session_id=@gw_sessid@&seq_num=@gw_seqnum@&nr=@gw_adnetrefresh@&adt=@gw_adt@&aec=@gw_aec@");
        }
        String b = fVar.b();
        a(d, fVar.a(), b, fVar.c(), bool, this.e.d(), this.e.e());
    }

    private void a(List list, String str) {
        List arrayList;
        if (list == null) {
            arrayList = new ArrayList();
            arrayList.add("http://e.admob.com/nofill?ad_loc=@gw_adlocid@&qdata=@gw_qdata@&js=@gw_sdkver@&session_id=@gw_sessid@&seq_num=@gw_seqnum@&adt=@gw_adt@&aec=@gw_aec@");
        } else {
            arrayList = list;
        }
        a(arrayList, null, null, str, null, this.e.d(), this.e.e());
    }

    private void a(List list, String str, String str2, String str3, Boolean bool, String str4, String str5) {
        String a = AdUtil.a((Context) this.b.f.a());
        b a2 = b.a();
        String toString = a2.b().toString();
        String toString2 = a2.c().toString();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            new Thread(new ac(g.a((String) it.next(), (String) this.b.d.a(), bool, a, str, str2, str3, toString, toString2, str4, str5), (Context) this.b.f.a())).start();
        }
        this.e.b();
    }

    private void b(f fVar, Boolean bool) {
        List e = fVar.e();
        if (e == null) {
            e = new ArrayList();
            e.add("http://e.admob.com/clk?ad_loc=@gw_adlocid@&qdata=@gw_qdata@&ad_network_id=@gw_adnetid@&js=@gw_sdkver@&session_id=@gw_sessid@&seq_num=@gw_seqnum@&nr=@gw_adnetrefresh@");
        }
        a(e, fVar.a(), fVar.b(), fVar.c(), bool, null, null);
    }

    protected synchronized void A() {
        Activity activity = (Activity) this.b.e.a();
        if (activity == null) {
            com.google.ads.util.b.e("activity was null while trying to ping click tracking URLs.");
        } else {
            Iterator it = this.t.iterator();
            while (it.hasNext()) {
                new Thread(new ac((String) it.next(), activity.getApplicationContext())).start();
            }
        }
    }

    protected synchronized void B() {
        this.c = null;
        this.k = true;
        this.f.setVisibility(0);
        if (this.b.a()) {
            a(this.f);
        }
        this.e.g();
        if (this.b.a()) {
            w();
        }
        com.google.ads.util.b.c("onReceiveAd()");
        AdListener adListener = (AdListener) this.b.m.a();
        if (adListener != null) {
            adListener.a((Ad) this.b.h.a());
        }
    }

    public synchronized void a() {
        this.f = new AdWebView(this.b, ((h) this.b.k.a()).b());
        this.f.setVisibility(o.MyAlertDialog_MAD_messagePadding);
        this.g = i.a(this, a.c, true, this.b.b());
        this.f.setWebViewClient(this.g);
        if (AdUtil.a < ((Integer) ((a) ((l) this.b.a.a()).a.a()).a.a()).intValue() && !((h) this.b.k.a()).a()) {
            com.google.ads.util.b.a("Disabling hardware acceleration for a banner.");
            this.f.b();
        }
    }

    public synchronized void a(float f) {
        long j = this.p;
        this.p = (long) (1000.0f * f);
        if (r() && this.p != j) {
            e();
            f();
        }
    }

    public synchronized void a(int i) {
        this.u = i;
    }

    public void a(long j) {
        synchronized (a) {
            Editor edit = this.o.edit();
            edit.putLong("Timeout" + this.b.d, j);
            edit.commit();
            if (this.r) {
                this.i = j;
            }
        }
    }

    public void a(View view) {
        ((ViewGroup) this.b.g.a()).removeAllViews();
        ((ViewGroup) this.b.g.a()).addView(view);
    }

    public synchronized void a(View view, h hVar, f fVar, boolean z) {
        com.google.ads.util.b.a("AdManager.onReceiveGWhirlAd() called.");
        this.k = true;
        this.y = fVar;
        if (this.b.a()) {
            a(view);
            a(fVar, Boolean.valueOf(z));
        }
        this.x.d(hVar);
        AdListener adListener = (AdListener) this.b.m.a();
        if (adListener != null) {
            adListener.a((Ad) this.b.h.a());
        }
    }

    public synchronized void a(ErrorCode errorCode) {
        this.c = null;
        if (errorCode == ErrorCode.c) {
            a(60.0f);
            if (!r()) {
                g();
            }
        }
        if (this.b.b()) {
            if (errorCode == ErrorCode.b) {
                this.e.B();
            } else if (errorCode == ErrorCode.c) {
                this.e.z();
            }
        }
        com.google.ads.util.b.c("onFailedToReceiveAd(" + errorCode + ")");
        AdListener adListener = (AdListener) this.b.m.a();
        if (adListener != null) {
            adListener.a((Ad) this.b.h.a(), errorCode);
        }
    }

    public synchronized void a(AdRequest adRequest) {
        if (p()) {
            com.google.ads.util.b.e("loadAd called while the ad is already loading, so aborting.");
        } else if (AdActivity.c()) {
            com.google.ads.util.b.e("loadAd called while an interstitial or landing page is displayed, so aborting");
        } else if (AdUtil.c((Context) this.b.f.a()) && AdUtil.b((Context) this.b.f.a())) {
            if (ag.a((Context) this.b.f.a(), this.o.getLong("GoogleAdMobDoritosLife", 60000))) {
                ag.a((Activity) this.b.e.a());
            }
            this.k = false;
            this.s.clear();
            this.d = adRequest;
            if (this.w.a()) {
                this.x.a(this.w.b(), adRequest);
            } else {
                this.c = new c(this);
                this.c.a(adRequest);
            }
        }
    }

    public synchronized void a(c cVar) {
        this.c = null;
        if (cVar.d()) {
            a((float) cVar.e());
            if (!this.l) {
                f();
            }
        } else if (this.l) {
            e();
        }
        this.x.a(cVar, this.d);
    }

    public synchronized void a(f fVar, boolean z) {
        com.google.ads.util.b.a(String.format(Locale.US, "AdManager.onGWhirlAdClicked(%b) called.", new Object[]{Boolean.valueOf(z)}));
        b(fVar, Boolean.valueOf(z));
    }

    public void a(Runnable runnable) {
        this.h.post(runnable);
    }

    public void a(String str) {
        Uri build = new Builder().encodedQuery(str).build();
        StringBuilder stringBuilder = new StringBuilder();
        Map b = AdUtil.b(build);
        Iterator it = b.keySet().iterator();
        while (it.hasNext()) {
            String str2 = (String) it.next();
            stringBuilder.append(str2).append(" = ").append((String) b.get(str2)).append("\n");
        }
        this.z = stringBuilder.toString().trim();
        if (TextUtils.isEmpty(this.z)) {
            this.z = null;
        }
    }

    public synchronized void a(String str, String str2) {
        AppEventListener appEventListener = (AppEventListener) this.b.n.a();
        if (appEventListener != null) {
            appEventListener.a((Ad) this.b.h.a(), str, str2);
        }
    }

    protected synchronized void a(LinkedList linkedList) {
        Iterator it = linkedList.iterator();
        while (it.hasNext()) {
            com.google.ads.util.b.a("Adding a click tracking URL: " + ((String) it.next()));
        }
        this.t = linkedList;
    }

    public synchronized void a(boolean z) {
        this.j = z;
    }

    public synchronized void b() {
        if (this.x != null) {
            this.x.b();
        }
        this.b.m.a(null);
        this.b.n.a(null);
        z();
        if (this.f != null) {
            this.f.destroy();
        }
    }

    public synchronized void b(long j) {
        if (j > 0) {
            this.o.edit().putLong("GoogleAdMobDoritosLife", j).commit();
        }
    }

    public synchronized void b(c cVar) {
        com.google.ads.util.b.a("AdManager.onGWhirlNoFill() called.");
        a(cVar.i(), cVar.c());
        AdListener adListener = (AdListener) this.b.m.a();
        if (adListener != null) {
            adListener.a((Ad) this.b.h.a(), ErrorCode.b);
        }
    }

    protected synchronized void b(String str) {
        com.google.ads.util.b.a("Adding a tracking URL: " + str);
        this.s.add(str);
    }

    public void b(boolean z) {
        this.v = Boolean.valueOf(z);
    }

    public String c() {
        return this.z;
    }

    public synchronized void d_() {
        this.m = false;
        com.google.ads.util.b.a("Refreshing is no longer allowed on this AdView.");
    }

    public synchronized void e() {
        if (this.l) {
            com.google.ads.util.b.a("Disabling refreshing.");
            this.h.removeCallbacks(this.q);
            this.l = false;
        } else {
            com.google.ads.util.b.a("Refreshing is already disabled.");
        }
    }

    public synchronized void f() {
        this.n = false;
        if (!this.b.a()) {
            com.google.ads.util.b.a("Tried to enable refreshing on something other than an AdView.");
        } else if (!this.m) {
            com.google.ads.util.b.a("Refreshing disabled on this AdView");
        } else if (this.l) {
            com.google.ads.util.b.a("Refreshing is already enabled.");
        } else {
            com.google.ads.util.b.a("Enabling refreshing every " + this.p + " milliseconds.");
            this.h.postDelayed(this.q, this.p);
            this.l = true;
        }
    }

    public void g() {
        f();
        this.n = true;
    }

    public m h() {
        return this.b;
    }

    public synchronized com.google.ads.d i() {
        return this.w;
    }

    public synchronized c j() {
        return this.c;
    }

    public synchronized AdWebView k() {
        return this.f;
    }

    public synchronized i l() {
        return this.g;
    }

    public g m() {
        return this.e;
    }

    public synchronized int n() {
        return this.u;
    }

    public long o() {
        return this.i;
    }

    public synchronized boolean p() {
        return this.c != null;
    }

    public synchronized boolean q() {
        return this.j;
    }

    public synchronized boolean r() {
        return this.l;
    }

    public synchronized void s() {
        this.e.C();
        com.google.ads.util.b.c("onDismissScreen()");
        AdListener adListener = (AdListener) this.b.m.a();
        if (adListener != null) {
            adListener.c((Ad) this.b.h.a());
        }
    }

    public synchronized void t() {
        com.google.ads.util.b.c("onPresentScreen()");
        AdListener adListener = (AdListener) this.b.m.a();
        if (adListener != null) {
            adListener.b((Ad) this.b.h.a());
        }
    }

    public synchronized void u() {
        com.google.ads.util.b.c("onLeaveApplication()");
        AdListener adListener = (AdListener) this.b.m.a();
        if (adListener != null) {
            adListener.d((Ad) this.b.h.a());
        }
    }

    public void v() {
        this.e.f();
        A();
    }

    public synchronized void w() {
        Activity activity = (Activity) this.b.e.a();
        if (activity == null) {
            com.google.ads.util.b.e("activity was null while trying to ping tracking URLs.");
        } else {
            Iterator it = this.s.iterator();
            while (it.hasNext()) {
                new Thread(new ac((String) it.next(), activity.getApplicationContext())).start();
            }
        }
    }

    public synchronized void x() {
        if (this.d == null) {
            com.google.ads.util.b.a("Tried to refresh before calling loadAd().");
        } else if (this.b.a()) {
            if (((AdView) this.b.i.a()).isShown() && AdUtil.d()) {
                com.google.ads.util.b.c("Refreshing ad.");
                a(this.d);
            } else {
                com.google.ads.util.b.a("Not refreshing because the ad is not visible.");
            }
            if (this.n) {
                e();
            } else {
                this.h.postDelayed(this.q, this.p);
            }
        } else {
            com.google.ads.util.b.a("Tried to refresh an ad that wasn't an AdView.");
        }
    }

    public synchronized void y() {
        com.google.ads.util.a.a(this.b.b());
        if (this.k) {
            this.k = false;
            if (this.v == null) {
                com.google.ads.util.b.b("isMediationFlag is null in show() with isReady() true. we should have an ad and know whether this is a mediation request or not. ");
            } else if (!this.v.booleanValue()) {
                AdActivity.a(this, new e("interstitial"));
                w();
            } else if (this.x.c()) {
                a(this.y, Boolean.valueOf(false));
            }
        } else {
            com.google.ads.util.b.c("Cannot show interstitial because it is not loaded and ready.");
        }
    }

    public synchronized void z() {
        if (this.c != null) {
            this.c.a();
            this.c = null;
        }
        if (this.f != null) {
            this.f.stopLoading();
        }
    }
}