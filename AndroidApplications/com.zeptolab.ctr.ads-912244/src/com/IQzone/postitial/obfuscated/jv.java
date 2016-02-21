package com.IQzone.postitial.obfuscated;

import android.view.ViewGroup;
import com.admarvel.android.ads.AdMarvelAd;
import com.admarvel.android.ads.AdMarvelAd.AdType;
import com.admarvel.android.ads.AdMarvelView;
import com.admarvel.android.ads.AdMarvelView.AdMarvelViewExtendedListener;
import com.inmobi.re.configs.Initializer;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

final class jv implements AdMarvelViewExtendedListener {
    private /* synthetic */ boolean a;
    private /* synthetic */ ViewGroup b;
    private /* synthetic */ mx c;
    private /* synthetic */ int d;
    private /* synthetic */ int e;
    private /* synthetic */ kn f;
    private /* synthetic */ jk g;

    jv(jk jkVar, boolean z, ViewGroup viewGroup, mx mxVar, int i, int i2, kn knVar) {
        this.g = jkVar;
        this.a = z;
        this.b = viewGroup;
        this.c = mxVar;
        this.d = i;
        this.e = i2;
        this.f = knVar;
    }

    public final void onAdDisplayed(AdMarvelView adMarvelView) {
    }

    public final void onAdFetched(AdMarvelView adMarvelView, AdMarvelAd adMarvelAd) {
        jk.l();
        new StringBuilder("format ").append(adMarvelAd.getAdFormat()).toString();
        jk.l();
        new StringBuilder("getCreativeType ").append(adMarvelAd.getCreativeType()).toString();
        jk.l();
        new StringBuilder("getXHTML ").append(adMarvelAd.getXHTML()).toString();
        jk.l();
        new StringBuilder("getXml ").append(adMarvelAd.getXml()).toString();
        String xhtml = adMarvelAd.getXHTML();
        boolean z;
        if (xhtml.contains("<div id=\"LOOPME_widget\">")) {
            z = true;
        } else {
            if (!xhtml.contains(Initializer.PRODUCT_MRAID)) {
                jk.l();
                new StringBuilder("decoded1: ").append(xhtml).toString();
                Set hashSet = new HashSet();
                int i = 0;
                while (i < xhtml.length()) {
                    int indexOf = xhtml.indexOf("<script", i);
                    if (indexOf < 0) {
                        break;
                    }
                    i = xhtml.indexOf("</script>", indexOf);
                    if (i < 0) {
                        i = xhtml.indexOf(">", indexOf + 1);
                        if (i < 0) {
                            break;
                        }
                    }
                    String substring = xhtml.substring(indexOf, i + 9);
                    jk.l();
                    new StringBuilder("script: ").append(substring).toString();
                    hashSet.add(substring);
                    jk.l();
                    new StringBuilder("found ").append(hashSet.size()).append(" scripts").toString();
                }
                Iterator it = hashSet.iterator();
                while (it.hasNext()) {
                    String str = (String) it.next();
                    if (!str.contains("admarvel_banner_watermark_android.js") && !str.contains("adMarvelCreateBannerIdWatermarkInBody") && !str.contains("var element = document.querySelector(\"meta[name=viewport]\");")) {
                        z = true;
                        break;
                    }
                }
                z = false;
                if (i == 0) {
                    z = true;
                }
            }
            z = false;
        }
        if (adMarvelAd.getAdType() == AdType.IMAGE || i != 0 || (!this.a && adMarvelAd.getAdType() == AdType.JAVASCRIPT)) {
            jk.a(this.g, adMarvelView, adMarvelAd, this.b, this.c, this.d, this.e, this.f);
        } else if (adMarvelAd.getAdType() == AdType.JAVASCRIPT) {
            jk.a(this.g, adMarvelView, adMarvelAd, this.b, this.c);
        } else {
            jk.l();
            new StringBuilder("loaded unsupported ad type ").append(adMarvelAd.getAdType()).toString();
            this.c.a(new ah(false, false, null, (byte) 0));
        }
    }
}