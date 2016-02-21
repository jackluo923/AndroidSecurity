package com.google.ads;

import android.text.TextUtils;
import android.webkit.WebView;
import com.google.ads.internal.AdWebView;
import com.google.ads.internal.d;
import com.google.ads.internal.h;
import com.google.ads.l.a;
import com.google.ads.util.AdUtil;
import com.google.ads.util.b;
import com.google.ads.util.g;
import com.google.ads.util.i.c;
import java.util.HashMap;

public class v implements n {
    private void a(HashMap<String, String> hashMap, String str, c<Integer> cVar) {
        try {
            String str2 = (String) hashMap.get(str);
            if (!TextUtils.isEmpty(str2)) {
                cVar.a(new Integer(str2));
            }
        } catch (NumberFormatException e) {
            b.a("Could not parse \"" + str + "\" constant.");
        }
    }

    private void b(HashMap<String, String> hashMap, String str, c<Long> cVar) {
        try {
            String str2 = (String) hashMap.get(str);
            if (!TextUtils.isEmpty(str2)) {
                cVar.a(new Long(str2));
            }
        } catch (NumberFormatException e) {
            b.a("Could not parse \"" + str + "\" constant.");
        }
    }

    private void c(HashMap<String, String> hashMap, String str, c<String> cVar) {
        String str2 = (String) hashMap.get(str);
        if (!TextUtils.isEmpty(str2)) {
            cVar.a(str2);
        }
    }

    public void a(d dVar, HashMap hashMap, WebView webView) {
        m g = dVar.g();
        a aVar = (a) ((l) g.a.a()).a.a();
        a(hashMap, "min_hwa_banner", aVar.a);
        a(hashMap, "min_hwa_overlay", aVar.b);
        c(hashMap, "mraid_banner_path", aVar.c);
        c(hashMap, "mraid_expanded_banner_path", aVar.d);
        c(hashMap, "mraid_interstitial_path", aVar.e);
        b(hashMap, "ac_max_size", aVar.f);
        b(hashMap, "ac_padding", aVar.g);
        b(hashMap, "ac_total_quota", aVar.h);
        b(hashMap, "db_total_quota", aVar.i);
        b(hashMap, "db_quota_per_origin", aVar.j);
        b(hashMap, "db_quota_step_size", aVar.k);
        AdWebView j = dVar.j();
        if (AdUtil.a >= 11) {
            g.a(j.getSettings(), g);
            g.a(webView.getSettings(), g);
        }
        if (!((h) g.i.a()).a()) {
            int i;
            boolean e = j.e();
            i = AdUtil.a < ((Integer) aVar.a.a()).intValue() ? true : 0;
            if (i == 0 && e) {
                b.a("Re-enabling hardware acceleration for a banner after reading constants.");
                j.c();
            } else if (!(i == 0 || e)) {
                b.a("Disabling hardware acceleration for a banner after reading constants.");
                j.b();
            }
        }
        aVar.l.a(Boolean.valueOf(true));
    }
}