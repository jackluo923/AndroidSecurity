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
import com.google.ads.Ad;
import com.google.ads.AdActivity;
import com.google.ads.AdListener;
import com.google.ads.AdRequest;
import com.google.ads.AdRequest.ErrorCode;
import com.google.ads.AdView;
import com.google.ads.aa;
import com.google.ads.ab;
import com.google.ads.ae;
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
    private SharedPreferences n;
    private long o;
    private ab p;
    private boolean q;
    private LinkedList<String> r;
    private LinkedList<String> s;
    private int t;
    private Boolean u;
    private com.google.ads.d v;
    private e w;
    private f x;
    private String y;

    static {
        a = new Object();
    }

    public d(m mVar, boolean z) {
        this.t = -1;
        this.y = null;
        this.b = mVar;
        this.q = z;
        this.e = new g();
        this.c = null;
        this.d = null;
        this.k = false;
        this.h = new Handler();
        this.o = 0;
        this.l = false;
        this.m = true;
        if (mVar != null && mVar.d.a() != null) {
            synchronized (a) {
                this.n = ((Context) mVar.d.a()).getSharedPreferences("GoogleAdMobAdsPrefs", 0);
                if (z) {
                    long j = this.n.getLong("Timeout" + mVar.b, -1);
                    if (j < 0) {
                        this.i = 5000;
                    } else {
                        this.i = j;
                    }
                } else {
                    this.i = 60000;
                }
            }
            this.p = new ab(this);
            this.r = new LinkedList();
            this.s = new LinkedList();
            a();
            AdUtil.h((Context) mVar.d.a());
            this.v = new com.google.ads.d();
            this.w = new e(this);
            this.u = null;
            this.x = null;
        }
    }

    private void a(f fVar, Boolean bool) {
        List d = fVar.d();
        if (d == null) {
            d = new ArrayList();
            d.add("http://e.admob.com/imp?ad_loc=@gw_adlocid@&qdata=@gw_qdata@&ad_network_id=@gw_adnetid@&js=@gw_sdkver@&session_id=@gw_sessid@&seq_num=@gw_seqnum@&nr=@gw_adnetrefresh@");
        }
        a(d, fVar.a(), fVar.b(), fVar.c(), bool);
    }

    private void a(List<String> list, String str) {
        List arrayList;
        if (list == null) {
            arrayList = new ArrayList();
            arrayList.add("http://e.admob.com/nofill?ad_loc=@gw_adlocid@&qdata=@gw_qdata@&js=@gw_sdkver@&session_id=@gw_sessid@&seq_num=@gw_seqnum@");
        } else {
            List<String> list2 = list;
        }
        a(arrayList, null, null, str, null);
    }

    private void a(List<String> list, String str, String str2, String str3, Boolean bool) {
        String a = AdUtil.a((Context) this.b.d.a());
        b a2 = b.a();
        String toString = a2.b().toString();
        String toString2 = a2.c().toString();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            new Thread(new aa(g.a((String) it.next(), (String) this.b.b.a(), bool, a, str, str2, str3, toString, toString2), (Context) this.b.d.a())).start();
        }
    }

    private void b(f fVar, Boolean bool) {
        List e = fVar.e();
        if (e == null) {
            e = new ArrayList();
            e.add("http://e.admob.com/clk?ad_loc=@gw_adlocid@&qdata=@gw_qdata@&ad_network_id=@gw_adnetid@&js=@gw_sdkver@&session_id=@gw_sessid@&seq_num=@gw_seqnum@&nr=@gw_adnetrefresh@");
        }
        a(e, fVar.a(), fVar.b(), fVar.c(), bool);
    }

    protected synchronized void A() {
        Activity activity = (Activity) this.b.c.a();
        if (activity == null) {
            com.google.ads.util.b.e("activity was null while trying to ping click tracking URLs.");
        } else {
            Iterator it = this.s.iterator();
            while (it.hasNext()) {
                new Thread(new aa((String) it.next(), activity.getApplicationContext())).start();
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
        this.e.c();
        if (this.b.a()) {
            w();
        }
        com.google.ads.util.b.c("onReceiveAd()");
        AdListener adListener = (AdListener) this.b.j.a();
        if (adListener != null) {
            adListener.onReceiveAd((Ad) this.b.f.a());
        }
    }

    public Boolean C() {
        return this.u;
    }

    public synchronized void a() {
        this.f = new AdWebView(this.b, ((h) this.b.i.a()).b());
        this.f.setVisibility(8);
        this.g = i.a(this, a.c, true, this.b.b());
        this.f.setWebViewClient(this.g);
        if (AdUtil.a < ((Integer) ((a) ((l) this.b.a.a()).a.a()).a.a()).intValue() && !((h) this.b.i.a()).a()) {
            com.google.ads.util.b.a("Disabling hardware acceleration for a banner.");
            this.f.b();
        }
    }

    public synchronized void a(float f) {
        this.o = (long) (1000.0f * f);
    }

    public synchronized void a(int i) {
        this.t = i;
    }

    public void a(long j) {
        synchronized (a) {
            Editor edit = this.n.edit();
            edit.putLong("Timeout" + this.b.b, j);
            edit.commit();
            if (this.q) {
                this.i = j;
            }
        }
    }

    public void a(View view) {
        ((ViewGroup) this.b.e.a()).removeAllViews();
        ((ViewGroup) this.b.e.a()).addView(view);
    }

    public synchronized void a(View view, h hVar, f fVar, boolean z) {
        com.google.ads.util.b.a("AdManager.onReceiveGWhirlAd() called.");
        this.k = true;
        this.x = fVar;
        if (this.b.a()) {
            a(view);
            a(fVar, Boolean.valueOf(z));
        }
        this.w.d(hVar);
        AdListener adListener = (AdListener) this.b.j.a();
        if (adListener != null) {
            adListener.onReceiveAd((Ad) this.b.f.a());
        }
    }

    public synchronized void a(ErrorCode errorCode) {
        this.c = null;
        if (this.b.b()) {
            if (errorCode == ErrorCode.NO_FILL) {
                l().n();
            } else if (errorCode == ErrorCode.NETWORK_ERROR) {
                l().l();
            }
        }
        com.google.ads.util.b.c("onFailedToReceiveAd(" + errorCode + ")");
        AdListener adListener = (AdListener) this.b.j.a();
        if (adListener != null) {
            adListener.onFailedToReceiveAd((Ad) this.b.f.a(), errorCode);
        }
    }

    public synchronized void a(AdRequest adRequest) {
        if (o()) {
            com.google.ads.util.b.e("loadAd called while the ad is already loading, so aborting.");
        } else if (AdActivity.isShowing()) {
            com.google.ads.util.b.e("loadAd called while an interstitial or landing page is displayed, so aborting");
        } else if (AdUtil.c((Context) this.b.d.a()) && AdUtil.b((Context) this.b.d.a())) {
            if (ae.a((Context) this.b.d.a(), this.n.getLong("GoogleAdMobDoritosLife", 60000))) {
                ae.a((Activity) this.b.c.a());
            }
            this.k = false;
            this.r.clear();
            this.d = adRequest;
            if (this.v.a()) {
                this.w.a(this.v.b(), adRequest);
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
            if (!r()) {
                f();
            }
        } else if (r()) {
            e();
        }
        this.w.a(cVar, this.d);
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
        this.y = stringBuilder.toString().trim();
        if (TextUtils.isEmpty(this.y)) {
            this.y = null;
        }
    }

    protected synchronized void a(LinkedList<String> linkedList) {
        Iterator it = linkedList.iterator();
        while (it.hasNext()) {
            com.google.ads.util.b.a("Adding a click tracking URL: " + ((String) it.next()));
        }
        this.s = linkedList;
    }

    public synchronized void a(boolean z) {
        this.j = z;
    }

    public synchronized void b() {
        if (this.w != null) {
            this.w.b();
        }
        this.b.j.a(null);
        z();
        if (this.f != null) {
            this.f.destroy();
        }
    }

    public synchronized void b(long j) {
        if (j > 0) {
            this.n.edit().putLong("GoogleAdMobDoritosLife", j).commit();
        }
    }

    public synchronized void b(c cVar) {
        com.google.ads.util.b.a("AdManager.onGWhirlNoFill() called.");
        a(cVar.i(), cVar.c());
        AdListener adListener = (AdListener) this.b.j.a();
        if (adListener != null) {
            adListener.onFailedToReceiveAd((Ad) this.b.f.a(), ErrorCode.NO_FILL);
        }
    }

    protected synchronized void b(String str) {
        com.google.ads.util.b.a("Adding a tracking URL: " + str);
        this.r.add(str);
    }

    public void b(boolean z) {
        this.u = Boolean.valueOf(z);
    }

    public String c() {
        return this.y;
    }

    public synchronized void d_() {
        this.m = false;
        com.google.ads.util.b.a("Refreshing is no longer allowed on this AdView.");
    }

    public synchronized void e() {
        if (this.l) {
            com.google.ads.util.b.a("Disabling refreshing.");
            this.h.removeCallbacks(this.p);
            this.l = false;
        } else {
            com.google.ads.util.b.a("Refreshing is already disabled.");
        }
    }

    public synchronized void f() {
        if (!this.b.a()) {
            com.google.ads.util.b.a("Tried to enable refreshing on something other than an AdView.");
        } else if (!this.m) {
            com.google.ads.util.b.a("Refreshing disabled on this AdView");
        } else if (this.l) {
            com.google.ads.util.b.a("Refreshing is already enabled.");
        } else {
            com.google.ads.util.b.a("Enabling refreshing every " + this.o + " milliseconds.");
            this.h.postDelayed(this.p, this.o);
            this.l = true;
        }
    }

    public m g() {
        return this.b;
    }

    public synchronized com.google.ads.d h() {
        return this.v;
    }

    public synchronized c i() {
        return this.c;
    }

    public synchronized AdWebView j() {
        return this.f;
    }

    public synchronized i k() {
        return this.g;
    }

    public g l() {
        return this.e;
    }

    public synchronized int m() {
        return this.t;
    }

    public long n() {
        return this.i;
    }

    public synchronized boolean o() {
        return this.c != null;
    }

    public synchronized boolean p() {
        return this.j;
    }

    public synchronized boolean q() {
        return this.k;
    }

    public synchronized boolean r() {
        return this.l;
    }

    public synchronized void s() {
        this.e.o();
        com.google.ads.util.b.c("onDismissScreen()");
        AdListener adListener = (AdListener) this.b.j.a();
        if (adListener != null) {
            adListener.onDismissScreen((Ad) this.b.f.a());
        }
    }

    public synchronized void t() {
        com.google.ads.util.b.c("onPresentScreen()");
        AdListener adListener = (AdListener) this.b.j.a();
        if (adListener != null) {
            adListener.onPresentScreen((Ad) this.b.f.a());
        }
    }

    public synchronized void u() {
        com.google.ads.util.b.c("onLeaveApplication()");
        AdListener adListener = (AdListener) this.b.j.a();
        if (adListener != null) {
            adListener.onLeaveApplication((Ad) this.b.f.a());
        }
    }

    public void v() {
        this.e.b();
        A();
    }

    public synchronized void w() {
        Activity activity = (Activity) this.b.c.a();
        if (activity == null) {
            com.google.ads.util.b.e("activity was null while trying to ping tracking URLs.");
        } else {
            Iterator it = this.r.iterator();
            while (it.hasNext()) {
                new Thread(new aa((String) it.next(), activity.getApplicationContext())).start();
            }
        }
    }

    public synchronized void x() {
        if (this.d == null) {
            com.google.ads.util.b.a("Tried to refresh before calling loadAd().");
        } else if (this.b.a()) {
            if (((AdView) this.b.g.a()).isShown() && AdUtil.d()) {
                com.google.ads.util.b.c("Refreshing ad.");
                a(this.d);
            } else {
                com.google.ads.util.b.a("Not refreshing because the ad is not visible.");
            }
            this.h.postDelayed(this.p, this.o);
        } else {
            com.google.ads.util.b.a("Tried to refresh an ad that wasn't an AdView.");
        }
    }

    public synchronized void y() {
        com.google.ads.util.a.a(this.b.b());
        if (q()) {
            this.k = false;
            if (C() == null) {
                com.google.ads.util.b.b("isMediationFlag is null in show() with isReady() true. we should have an ad and know whether this is a mediation request or not. ");
            } else if (!C().booleanValue()) {
                AdActivity.launchAdActivity(this, new e("interstitial"));
                w();
            } else if (this.w.c()) {
                a(this.x, Boolean.valueOf(false));
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