package com.IQzone.postitial.obfuscated;

import android.content.Context;
import android.os.Handler;

public class km implements dy {
    private final ql a;
    private final Context b;
    private final Handler c;
    private final dx d;
    private final Class e;

    public km(Context context, dx dxVar, Handler handler, Class cls) {
        this.a = new ql();
        this.c = handler;
        this.b = context;
        this.d = dxVar;
        this.e = cls;
    }

    public final void a(int i) {
    }

    public final void a(dz dzVar, mx mxVar) {
        mg.a(new ln(this, dzVar, mxVar), this.c);
    }

    public final boolean a() {
        return this.d.d();
    }
}