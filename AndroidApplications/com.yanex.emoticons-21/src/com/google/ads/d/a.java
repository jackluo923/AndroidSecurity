package com.google.ads.d;

import android.content.Context;
import android.graphics.Color;
import com.google.ads.d;
import java.util.Locale;
import java.util.Map;

public final class a extends d {
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
    private b l;
    private int m;
    private String n;

    private static String a_(int i) {
        return String.format(Locale.US, "#%06x", new Object[]{Integer.valueOf(16777215 & i)});
    }

    public final Map a_(Context context) {
        com.google.ads.c.a.a aVar = (com.google.ads.c.a.a) a(com.google.ads.c.a.a.class);
        if (aVar == null) {
            aVar = new com.google.ads.c.a.a();
            a(aVar);
        }
        if (this.b != null) {
            aVar.c().put("q", this.b);
        }
        if (Color.alpha(this.c) != 0) {
            aVar.c().put("bgcolor", a(this.c));
        }
        if (Color.alpha(this.d) == 255 && Color.alpha(this.e) == 255) {
            aVar.c().put("gradientfrom", a(this.d));
            aVar.c().put("gradientto", a(this.e));
        }
        if (Color.alpha(this.f) != 0) {
            aVar.c().put("hcolor", a(this.f));
        }
        if (Color.alpha(this.g) != 0) {
            aVar.c().put("dcolor", a(this.g));
        }
        if (Color.alpha(this.h) != 0) {
            aVar.c().put("acolor", a(this.h));
        }
        if (this.i != null) {
            aVar.c().put("font", this.i);
        }
        aVar.c().put("headersize", Integer.toString(this.j));
        if (Color.alpha(this.k) != 0) {
            aVar.c().put("bcolor", a(this.k));
        }
        if (this.l != null) {
            aVar.c().put("btype", this.l.toString());
        }
        aVar.c().put("bthick", Integer.toString(this.m));
        if (this.n != null) {
            aVar.c().put("channel", this.n);
        }
        return super.a(context);
    }
}