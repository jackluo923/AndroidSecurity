package com.IQzone.postitial.obfuscated;

import java.lang.ref.WeakReference;

public class oe implements mx {
    private static final ql a;
    private final WeakReference b;
    private final boolean c;
    private final my d;

    static {
        a = new ql();
    }

    public oe(mx mxVar, boolean z, my myVar) {
        this.d = myVar;
        if (myVar != null) {
            myVar.a(mxVar);
        }
        this.c = false;
        this.b = new WeakReference(mxVar);
    }

    public final Object a(Object obj) {
        mx mxVar = (mx) this.b.get();
        if (mxVar != null) {
            Object a = mxVar.a(obj);
            if (this.d == null) {
                return a;
            }
            this.d.b(mxVar);
            return a;
        } else if (this.c) {
            throw new RuntimeException("<WeakCallback><1>, Callback was garbage collected");
        } else {
            ql qlVar = a;
            return null;
        }
    }
}