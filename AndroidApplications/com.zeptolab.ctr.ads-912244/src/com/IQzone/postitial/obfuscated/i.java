package com.IQzone.postitial.obfuscated;

import android.view.ViewGroup;
import java.util.List;

final class i implements mx {
    final /* synthetic */ int a;
    final /* synthetic */ m b;
    final /* synthetic */ ViewGroup c;
    final /* synthetic */ String d;
    final /* synthetic */ List e;
    final /* synthetic */ boolean f;
    final /* synthetic */ h g;

    i(h hVar, int i, m mVar, ViewGroup viewGroup, String str, List list, boolean z) {
        this.g = hVar;
        this.a = i;
        this.b = mVar;
        this.c = viewGroup;
        this.d = str;
        this.e = list;
        this.f = z;
    }

    public final /* synthetic */ Object a(Object obj) {
        this.g.j.post(new j(this, (ah) obj));
        return null;
    }
}