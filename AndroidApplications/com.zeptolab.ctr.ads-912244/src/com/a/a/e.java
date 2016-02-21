package com.a.a;

import java.util.ArrayList;

class e extends c {
    boolean a;
    final /* synthetic */ ArrayList b;
    final /* synthetic */ d c;

    e(d dVar, ArrayList arrayList) {
        this.c = dVar;
        this.b = arrayList;
        this.a = false;
    }

    public void b(a aVar) {
        if (!this.a) {
            int size = this.b.size();
            int i = 0;
            while (i < size) {
                e eVar = (e) this.b.get(i);
                eVar.a.a();
                d.a(this.c).add(eVar.a);
                i++;
            }
        }
    }

    public void c(a aVar) {
        this.a = true;
    }
}