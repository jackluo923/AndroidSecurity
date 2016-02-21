package com.google.ads.b;

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
import android.view.ViewGroup.LayoutParams;
import android.widget.FrameLayout;
import com.actionbarsherlock.view.MenuItem;
import com.google.ads.AdActivity;
import com.google.ads.AdView;
import com.google.ads.a;
import com.google.ads.a.c;
import com.google.ads.aq;
import com.google.ads.aw;
import com.google.ads.ax;
import com.google.ads.az;
import com.google.ads.ba;
import com.google.ads.be;
import com.google.ads.bh;
import com.google.ads.bn;
import com.google.ads.bo;
import com.google.ads.bp;
import com.google.ads.bq;
import com.google.ads.d;
import com.google.ads.e;
import com.google.ads.g;
import com.google.ads.h;
import com.google.ads.i;
import com.google.ads.n;
import com.google.ads.o;
import com.google.ads.util.AdUtil;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

public final class w {
    private static final Object a;
    private String A;
    private String B;
    private final bq b;
    private n c;
    private d d;
    private ab e;
    private e f;
    private ad g;
    private boolean h;
    private long i;
    private boolean j;
    private boolean k;
    private boolean l;
    private boolean m;
    private boolean n;
    private SharedPreferences o;
    private long p;
    private o q;
    private boolean r;
    private LinkedList s;
    private LinkedList t;
    private LinkedList u;
    private int v;
    private Boolean w;
    private az x;
    private ba y;
    private be z;

    static {
        a = new Object();
    }

    public w(a aVar, Activity activity, g gVar, String str, ViewGroup viewGroup) {
        this.h = false;
        this.v = -1;
        this.A = null;
        this.B = null;
        this.r = false;
        this.e = new ab();
        this.c = null;
        this.d = null;
        this.k = false;
        this.p = 60000;
        this.l = false;
        this.n = false;
        this.m = true;
        ac a = gVar == null ? ac.a : ac.a(gVar, activity.getApplicationContext());
        if (aVar instanceof c) {
            a.d();
        }
        if (activity == null) {
            this.b = new bq(bo.a(), aVar, aVar instanceof AdView ? (AdView) aVar : null, aVar instanceof i ? (i) aVar : null, str, null, null, viewGroup, a, this);
        } else {
            synchronized (a) {
                this.o = activity.getApplicationContext().getSharedPreferences("GoogleAdMobAdsPrefs", 0);
                this.i = 60000;
            }
            this.b = new bq(bo.a(), aVar, aVar instanceof AdView ? (AdView) aVar : null, aVar instanceof i ? (i) aVar : null, str, activity, activity.getApplicationContext(), viewGroup, a, this);
            this.q = new o(this);
            this.s = new LinkedList();
            this.t = new LinkedList();
            this.u = new LinkedList();
            a();
            AdUtil.h((Context) this.b.f.a());
            this.x = new az();
            this.y = new ba(this);
            this.w = null;
            this.z = null;
        }
    }

    private void a(View view) {
        ((ViewGroup) this.b.i.a()).setVisibility(0);
        ((ViewGroup) this.b.i.a()).removeAllViews();
        ((ViewGroup) this.b.i.a()).addView(view);
        if (((ac) this.b.g.a()).b()) {
            w wVar = (w) this.b.b.a();
            this.b.l.a();
            wVar.a(false, -1, -1, -1, -1);
            if (((a) this.b.e.a()).a()) {
                ((ViewGroup) this.b.i.a()).addView((View) this.b.e.a(), AdUtil.a((Context) this.b.f.a(), ((ac) this.b.g.a()).c().a()), AdUtil.a((Context) this.b.f.a(), ((ac) this.b.g.a()).c().b()));
            }
        }
    }

    private void a(List list, String str, String str2, String str3, Boolean bool, String str4, String str5) {
        String a = AdUtil.a((Context) this.b.f.a());
        aw a2 = aw.a();
        String toString = a2.b().toString();
        String toString2 = a2.c().toString();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            String replaceAll = ((String) it.next()).replaceAll("@gw_adlocid@", (String) this.b.h.a()).replaceAll("@gw_qdata@", str3).replaceAll("@gw_sdkver@", "afma-sdk-a-v6.4.1").replaceAll("@gw_sessid@", toString).replaceAll("@gw_seqnum@", toString2).replaceAll("@gw_devid@", a);
            if (str2 != null) {
                replaceAll = replaceAll.replaceAll("@gw_adnetid@", str2);
            }
            if (str != null) {
                replaceAll = replaceAll.replaceAll("@gw_allocid@", str);
            }
            if (str4 != null) {
                replaceAll = replaceAll.replaceAll("@gw_adt@", str4);
            }
            if (str5 != null) {
                replaceAll = replaceAll.replaceAll("@gw_aec@", str5);
            }
            if (bool != null) {
                replaceAll = replaceAll.replaceAll("@gw_adnetrefresh@", bool.booleanValue() ? "1" : "0");
            }
            new Thread(new n(replaceAll, (Context) this.b.f.a())).start();
        }
        this.e.b();
    }

    private synchronized boolean x() {
        return this.c != null;
    }

    private synchronized void y() {
        Activity activity = (Activity) this.b.c.a();
        if (activity == null) {
            com.google.ads.util.g.e("activity was null while trying to ping tracking URLs.");
        } else {
            Iterator it = this.s.iterator();
            while (it.hasNext()) {
                new Thread(new n((String) it.next(), activity.getApplicationContext())).start();
            }
        }
    }

    private synchronized void z() {
        Activity activity = (Activity) this.b.c.a();
        if (activity == null) {
            com.google.ads.util.g.e("activity was null while trying to ping click tracking URLs.");
        } else {
            Iterator it = this.u.iterator();
            while (it.hasNext()) {
                new Thread(new n((String) it.next(), activity.getApplicationContext())).start();
            }
        }
    }

    public final synchronized void a() {
        g c = ((ac) this.b.g.a()).c();
        this.f = AdUtil.a >= 14 ? new com.google.ads.util.c(this.b, c) : new e(this.b, c);
        this.f.setVisibility(MenuItem.SHOW_AS_ACTION_COLLAPSE_ACTION_VIEW);
        this.g = ad.a(this, h.d, true, this.b.b());
        this.f.setWebViewClient(this.g);
        if (AdUtil.a < ((Integer) ((bp) ((bo) this.b.d.a()).b.a()).b.a()).intValue() && !((ac) this.b.g.a()).a()) {
            com.google.ads.util.g.a("Disabling hardware acceleration for a banner.");
            this.f.g();
        }
    }

    public final synchronized void a(float f) {
        long j = this.p;
        this.p = (long) (1000.0f * f);
        if (p() && this.p != j) {
            e();
            f();
        }
    }

    public final synchronized void a(int i) {
        this.v = i;
    }

    public final void a(int i, int i2, int i3, int i4) {
        int i5;
        a aVar = (a) this.b.e.a();
        int a = AdUtil.a((Context) this.b.f.a(), i3 < 0 ? ((ac) this.b.g.a()).c().a() : i3);
        Context context = (Context) this.b.f.a();
        if (i4 < 0) {
            i4 = ((ac) this.b.g.a()).c().b();
        }
        LayoutParams layoutParams = new FrameLayout.LayoutParams(a, AdUtil.a(context, i4));
        if (i3 < 0) {
            i5 = 0;
            boolean z = false;
        } else {
            i5 = i2;
            int i6 = i;
        }
        a = i6 < 0 ? ((a) this.b.e.a()).d() : i6;
        if (i5 < 0) {
            i5 = ((a) this.b.e.a()).c();
        }
        ((a) this.b.e.a()).b(a);
        ((a) this.b.e.a()).a(i5);
        layoutParams.setMargins(AdUtil.a((Context) this.b.f.a(), a), AdUtil.a((Context) this.b.f.a(), i5), 0, 0);
        aVar.setLayoutParams(layoutParams);
    }

    public final void a(long j) {
        synchronized (a) {
            Editor edit = this.o.edit();
            edit.putLong(new StringBuilder("Timeout").append(this.b.h).toString(), j);
            edit.commit();
            if (this.r) {
                this.i = j;
            }
        }
    }

    public final synchronized void a(View view, bh bhVar, be beVar) {
        com.google.ads.util.g.a("AdManager.onReceiveGWhirlAd() called.");
        this.k = true;
        this.z = beVar;
        if (this.b.a()) {
            a(view);
            Boolean valueOf = Boolean.valueOf(false);
            List d = beVar.d();
            if (d == null) {
                d = new ArrayList();
                d.add("http://e.admob.com/imp?ad_loc=@gw_adlocid@&qdata=@gw_qdata@&ad_network_id=@gw_adnetid@&js=@gw_sdkver@&session_id=@gw_sessid@&seq_num=@gw_seqnum@&nr=@gw_adnetrefresh@&adt=@gw_adt@&aec=@gw_aec@");
            }
            String b = beVar.b();
            a(d, beVar.a(), b, beVar.c(), valueOf, this.e.d(), this.e.e());
        }
        this.y.a(bhVar);
        if (((com.google.ads.c) this.b.o.a()) != null) {
            this.b.a.a();
        }
    }

    public final synchronized void a(ax axVar) {
        this.c = null;
        this.y.a(axVar, this.d);
    }

    public final synchronized void a(d dVar) {
        com.google.ads.util.g.d("v6.4.1 RC00");
        if (this.h) {
            com.google.ads.util.g.e("loadAd called after ad was destroyed.");
        } else if (x()) {
            com.google.ads.util.g.e("loadAd called while the ad is already loading, so aborting.");
        } else if (AdActivity.b()) {
            com.google.ads.util.g.e("loadAd called while an interstitial or landing page is displayed, so aborting");
        } else if (AdUtil.c((Context) this.b.f.a()) && AdUtil.b((Context) this.b.f.a())) {
            if (aq.a((Context) this.b.f.a(), this.o.getLong("GoogleAdMobDoritosLife", 60000))) {
                aq.a((Activity) this.b.c.a());
            }
            this.k = false;
            this.s.clear();
            this.t.clear();
            this.d = dVar;
            if (this.x.a()) {
                this.y.a(this.x.b(), dVar);
            } else {
                bn bnVar = new bn(this.b);
                this.b.m.a(bnVar);
                this.c = (n) bnVar.b.a();
                this.c.a(dVar);
            }
        }
    }

    public final synchronized void a(e eVar) {
        this.c = null;
        if (eVar == e.c) {
            a(60.0f);
            if (!p()) {
                f();
                this.n = true;
            }
        }
        if (this.b.b()) {
            if (eVar == e.b) {
                this.e.B();
            } else if (eVar == e.c) {
                this.e.z();
            }
        }
        com.google.ads.util.g.c(new StringBuilder("onFailedToReceiveAd(").append(eVar).append(")").toString());
        if (((com.google.ads.c) this.b.o.a()) != null) {
            this.b.a.a();
        }
    }

    public final void a(String str) {
        this.B = str;
        Uri build = new Builder().encodedQuery(str).build();
        StringBuilder stringBuilder = new StringBuilder();
        Map b = AdUtil.b(build);
        Iterator it = b.keySet().iterator();
        while (it.hasNext()) {
            String str2 = (String) it.next();
            stringBuilder.append(str2).append(" = ").append((String) b.get(str2)).append("\n");
        }
        this.A = stringBuilder.toString().trim();
        if (TextUtils.isEmpty(this.A)) {
            this.A = null;
        }
    }

    protected final synchronized void a(LinkedList linkedList) {
        Iterator it = linkedList.iterator();
        while (it.hasNext()) {
            com.google.ads.util.g.a(new StringBuilder("Adding a click tracking URL: ").append((String) it.next()).toString());
        }
        this.u = linkedList;
    }

    public final synchronized void a(boolean z) {
        this.j = z;
    }

    public final void a(boolean z, int i, int i2, int i3, int i4) {
        ((a) this.b.e.a()).b(!z);
        a(i, i2, i3, i4);
        if (this.b.q.a() == null) {
            return;
        }
        if (z) {
            this.b.q.a();
            this.b.a.a();
        } else {
            this.b.q.a();
            this.b.a.a();
        }
    }

    public final String b() {
        return this.A;
    }

    public final synchronized void b(long j) {
        if (j > 0) {
            this.o.edit().putLong("GoogleAdMobDoritosLife", j).commit();
        }
    }

    public final synchronized void b(ax axVar) {
        com.google.ads.util.g.a("AdManager.onGWhirlNoFill() called.");
        List i = axVar.i();
        String c = axVar.c();
        if (i == null) {
            i = new ArrayList();
            i.add("http://e.admob.com/nofill?ad_loc=@gw_adlocid@&qdata=@gw_qdata@&js=@gw_sdkver@&session_id=@gw_sessid@&seq_num=@gw_seqnum@&adt=@gw_adt@&aec=@gw_aec@");
        }
        a(i, null, null, c, null, this.e.d(), this.e.e());
        if (((com.google.ads.c) this.b.o.a()) != null) {
            this.b.a.a();
            e eVar = e.b;
        }
    }

    protected final synchronized void b(String str) {
        com.google.ads.util.g.a(new StringBuilder("Adding a tracking URL: ").append(str).toString());
        this.s.add(str);
    }

    public final void b(boolean z) {
        this.w = Boolean.valueOf(z);
    }

    public final String c() {
        return this.B;
    }

    protected final synchronized void c(String str) {
        com.google.ads.util.g.a(new StringBuilder("Adding a manual tracking URL: ").append(str).toString());
        this.t.add(str);
    }

    public final synchronized void d() {
        this.m = false;
        com.google.ads.util.g.a("Refreshing is no longer allowed on this AdView.");
    }

    public final synchronized void e() {
        if (this.l) {
            com.google.ads.util.g.a("Disabling refreshing.");
            ((Handler) bo.a().c.a()).removeCallbacks(this.q);
            this.l = false;
        } else {
            com.google.ads.util.g.a("Refreshing is already disabled.");
        }
    }

    public final synchronized void f() {
        this.n = false;
        if (!this.b.a()) {
            com.google.ads.util.g.a("Tried to enable refreshing on something other than an AdView.");
        } else if (!this.m) {
            com.google.ads.util.g.a("Refreshing disabled on this AdView");
        } else if (this.l) {
            com.google.ads.util.g.a("Refreshing is already enabled.");
        } else {
            com.google.ads.util.g.a(new StringBuilder("Enabling refreshing every ").append(this.p).append(" milliseconds.").toString());
            ((Handler) bo.a().c.a()).postDelayed(this.q, this.p);
            this.l = true;
        }
    }

    public final bq g() {
        return this.b;
    }

    public final synchronized az h() {
        return this.x;
    }

    public final synchronized n i() {
        return this.c;
    }

    public final synchronized e j() {
        return this.f;
    }

    public final synchronized ad k() {
        return this.g;
    }

    public final ab l() {
        return this.e;
    }

    public final synchronized int m() {
        return this.v;
    }

    public final long n() {
        return this.i;
    }

    public final synchronized boolean o() {
        return this.j;
    }

    public final synchronized boolean p() {
        return this.l;
    }

    public final synchronized void q() {
        this.e.C();
        com.google.ads.util.g.c("onDismissScreen()");
        if (((com.google.ads.c) this.b.o.a()) != null) {
            this.b.a.a();
        }
    }

    public final synchronized void r() {
        com.google.ads.util.g.c("onPresentScreen()");
        if (((com.google.ads.c) this.b.o.a()) != null) {
            this.b.a.a();
        }
    }

    public final synchronized void s() {
        com.google.ads.util.g.c("onLeaveApplication()");
        if (((com.google.ads.c) this.b.o.a()) != null) {
            this.b.a.a();
        }
    }

    public final synchronized void t() {
        if (((h) this.b.p.a()) != null) {
            this.b.a.a();
        }
    }

    public final void u() {
        this.e.f();
        z();
    }

    public final synchronized void v() {
        if (!this.h) {
            if (this.d == null) {
                com.google.ads.util.g.a("Tried to refresh before calling loadAd().");
            } else if (this.b.a()) {
                if (((AdView) this.b.j.a()).isShown() && AdUtil.d()) {
                    com.google.ads.util.g.c("Refreshing ad.");
                    a(this.d);
                } else {
                    com.google.ads.util.g.a("Not refreshing because the ad is not visible.");
                }
                if (this.n) {
                    e();
                } else {
                    ((Handler) bo.a().c.a()).postDelayed(this.q, this.p);
                }
            } else {
                com.google.ads.util.g.a("Tried to refresh an ad that wasn't an AdView.");
            }
        }
    }

    protected final synchronized void w_() {
        this.c = null;
        this.k = true;
        this.f.setVisibility(0);
        if (this.b.a()) {
            a(this.f);
        }
        this.e.g();
        if (this.b.a()) {
            y();
        }
        com.google.ads.util.g.c("onReceiveAd()");
        if (((com.google.ads.c) this.b.o.a()) != null) {
            this.b.a.a();
        }
        this.b.l.a(this.b.m.a());
        this.b.m.a(null);
    }
}