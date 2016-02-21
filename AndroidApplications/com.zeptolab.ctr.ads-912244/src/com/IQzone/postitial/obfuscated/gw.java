package com.IQzone.postitial.obfuscated;

final class gw extends pv {
    final /* synthetic */ ou a;
    private int b;
    private /* synthetic */ gv c;

    gw(gv gvVar, ou ouVar) {
        int i = 0;
        this.c = gvVar;
        this.a = ouVar;
        try {
            String str = (String) this.a.a("postitial-logevent-sequence");
            if (str != null) {
                this.b = Integer.parseInt(str);
            } else {
                this.b = 0;
            }
        } catch (om e) {
            this.b = i;
            this.a.a("postitial-logevent-sequence", String.valueOf(this.b));
        }
    }

    private synchronized Integer b() {
        this.b++;
        gv.a(this.c).execute(new gx(this, this.b));
        return Integer.valueOf(this.b);
    }

    public final /* synthetic */ Object a() {
        return b();
    }
}