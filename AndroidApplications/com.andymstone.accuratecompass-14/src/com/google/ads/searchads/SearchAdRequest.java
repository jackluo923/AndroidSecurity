package com.google.ads.searchads;

import android.content.Context;
import android.graphics.Color;
import com.google.ads.AdRequest;
import com.google.ads.mediation.admob.AdMobAdapterExtras;
import java.util.Locale;
import java.util.Map;

public class SearchAdRequest extends AdRequest {
    private String b;
    private int c;
    private int d;
    private int e;
    private int f;
    private int g;
    private int h;
    private String i;
    private int j;
    private int k;
    private BorderType l;
    private int m;
    private String n;

    public enum BorderType {
        NONE("none"),
        DASHED("dashed"),
        DOTTED("dotted"),
        SOLID("solid");
        private String e;

        static {
            String str = "none";
            a = new com.google.ads.searchads.SearchAdRequest.BorderType("NONE", 0, "none");
            str = "dashed";
            b = new com.google.ads.searchads.SearchAdRequest.BorderType("DASHED", 1, "dashed");
            str = "dotted";
            c = new com.google.ads.searchads.SearchAdRequest.BorderType("DOTTED", 2, "dotted");
            str = "solid";
            d = new com.google.ads.searchads.SearchAdRequest.BorderType("SOLID", 3, "solid");
            f = new com.google.ads.searchads.SearchAdRequest.BorderType[]{a, b, c, d};
        }

        private BorderType(String str) {
            this.e = str;
        }

        public String toString() {
            return this.e;
        }
    }

    private String a(int i) {
        return String.format(Locale.US, "#%06x", new Object[]{Integer.valueOf(16777215 & i)});
    }

    public Map a(Context context) {
        AdMobAdapterExtras adMobAdapterExtras = (AdMobAdapterExtras) a(AdMobAdapterExtras.class);
        if (adMobAdapterExtras == null) {
            adMobAdapterExtras = new AdMobAdapterExtras();
            a(adMobAdapterExtras);
        }
        if (this.b != null) {
            adMobAdapterExtras.f().put("q", this.b);
        }
        if (Color.alpha(this.c) != 0) {
            adMobAdapterExtras.f().put("bgcolor", a(this.c));
        }
        if (Color.alpha(this.d) == 255 && Color.alpha(this.e) == 255) {
            adMobAdapterExtras.f().put("gradientfrom", a(this.d));
            adMobAdapterExtras.f().put("gradientto", a(this.e));
        }
        if (Color.alpha(this.f) != 0) {
            adMobAdapterExtras.f().put("hcolor", a(this.f));
        }
        if (Color.alpha(this.g) != 0) {
            adMobAdapterExtras.f().put("dcolor", a(this.g));
        }
        if (Color.alpha(this.h) != 0) {
            adMobAdapterExtras.f().put("acolor", a(this.h));
        }
        if (this.i != null) {
            adMobAdapterExtras.f().put("font", this.i);
        }
        adMobAdapterExtras.f().put("headersize", Integer.toString(this.j));
        if (Color.alpha(this.k) != 0) {
            adMobAdapterExtras.f().put("bcolor", a(this.k));
        }
        if (this.l != null) {
            adMobAdapterExtras.f().put("btype", this.l.toString());
        }
        adMobAdapterExtras.f().put("bthick", Integer.toString(this.m));
        if (this.n != null) {
            adMobAdapterExtras.f().put("channel", this.n);
        }
        return super.a(context);
    }
}