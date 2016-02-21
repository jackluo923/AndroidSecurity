package com.google.ads;

import android.text.TextUtils;
import android.webkit.WebView;
import com.google.ads.b.a;
import com.google.ads.b.e;
import com.google.ads.b.w;
import com.google.ads.util.AdUtil;
import com.google.ads.util.ac;
import com.google.ads.util.g;
import com.google.ads.util.p;
import java.util.HashMap;

public final class ca implements br {
    private static void a(HashMap hashMap, String str, ac acVar) {
        try {
            String str2 = (String) hashMap.get(str);
            if (!TextUtils.isEmpty(str2)) {
                acVar.a(Integer.valueOf(str2));
            }
        } catch (NumberFormatException e) {
            g.a(new StringBuilder("Could not parse \"").append(str).append("\" constant.").toString());
        }
    }

    private static void b(HashMap hashMap, String str, ac acVar) {
        try {
            String str2 = (String) hashMap.get(str);
            if (!TextUtils.isEmpty(str2)) {
                acVar.a(Long.valueOf(str2));
            }
        } catch (NumberFormatException e) {
            g.a(new StringBuilder("Could not parse \"").append(str).append("\" constant.").toString());
        }
    }

    private static void c(HashMap hashMap, String str, ac acVar) {
        String str2 = (String) hashMap.get(str);
        if (!TextUtils.isEmpty(str2)) {
            acVar.a(str2);
        }
    }

    public final void a(w wVar, HashMap hashMap, WebView webView) {
        bq g = wVar.g();
        bp bpVar = (bp) ((bo) g.d.a()).b.a();
        c(hashMap, "as_domains", bpVar.a);
        c(hashMap, "bad_ad_report_path", bpVar.h);
        a(hashMap, "min_hwa_banner", bpVar.b);
        a(hashMap, "min_hwa_activation_overlay", bpVar.c);
        a(hashMap, "min_hwa_overlay", bpVar.d);
        c(hashMap, "mraid_banner_path", bpVar.e);
        c(hashMap, "mraid_expanded_banner_path", bpVar.f);
        c(hashMap, "mraid_interstitial_path", bpVar.g);
        b(hashMap, "ac_max_size", bpVar.i);
        b(hashMap, "ac_padding", bpVar.j);
        b(hashMap, "ac_total_quota", bpVar.k);
        b(hashMap, "db_total_quota", bpVar.l);
        b(hashMap, "db_quota_per_origin", bpVar.m);
        b(hashMap, "db_quota_step_size", bpVar.n);
        e j = wVar.j();
        if (AdUtil.a >= 11) {
            p.a(j.getSettings(), g);
            p.a(webView.getSettings(), g);
        }
        if (!((com.google.ads.b.ac) g.g.a()).a()) {
            int i;
            boolean k = j.k();
            i = AdUtil.a < ((Integer) bpVar.b.a()).intValue();
            if (i == 0 && k) {
                g.a("Re-enabling hardware acceleration for a banner after reading constants.");
                j.h();
            } else if (!(i == 0 || k)) {
                g.a("Disabling hardware acceleration for a banner after reading constants.");
                j.g();
            }
        }
        a aVar = (a) g.e.a();
        if (!(((com.google.ads.b.ac) g.g.a()).b() || aVar == null)) {
            int i2;
            k = aVar.k();
            i2 = AdUtil.a < ((Integer) bpVar.c.a()).intValue();
            if (i2 == 0 && k) {
                g.a("Re-enabling hardware acceleration for an activation overlay after reading constants.");
                aVar.h();
            } else if (!(i2 == 0 || k)) {
                g.a("Disabling hardware acceleration for an activation overlay after reading constants.");
                aVar.g();
            }
        }
        String str = (String) bpVar.a.a();
        ai aiVar = (ai) g.s.a();
        if (!(aiVar == null || TextUtils.isEmpty(str))) {
            aiVar.a(str);
        }
        bpVar.o.a(Boolean.valueOf(true));
    }
}