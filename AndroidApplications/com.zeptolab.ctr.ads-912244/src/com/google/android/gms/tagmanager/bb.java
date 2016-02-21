package com.google.android.gms.tagmanager;

import android.util.LruCache;
import com.google.android.gms.tagmanager.l.a;

class bb implements k {
    private LruCache Vw;

    class AnonymousClass_1 extends LruCache {
        final /* synthetic */ a Vx;

        AnonymousClass_1(int i, a aVar) {
            this.Vx = aVar;
            super(i);
        }

        protected int sizeOf(Object obj, Object obj2) {
            return this.Vx.sizeOf(obj, obj2);
        }
    }

    bb(int i, a aVar) {
        this.Vw = new AnonymousClass_1(i, aVar);
    }

    public void e(Object obj, Object obj2) {
        this.Vw.put(obj, obj2);
    }

    public Object get(Object obj) {
        return this.Vw.get(obj);
    }
}