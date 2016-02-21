package com.IQzone.postitial.obfuscated;

import android.content.Context;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import java.io.File;
import java.util.concurrent.Executor;

public class hx {
    private static final ql a;
    private final hu b;

    static {
        a = new ql();
    }

    public hx(Context context, Executor executor, String str, ma maVar, hf hfVar) {
        ou a = fh.a(d.a("postitial-configuration/positial-log-impression-job-cache", context, AccessibilityNodeInfoCompat.ACTION_PASTE), new os(new op()), new or(), new ot());
        File a2 = d.a("postitial-configuration/positial-log-impression-list-cache", context, AccessibilityNodeInfoCompat.ACTION_PASTE);
        oo otVar = new ot();
        this.b = new hz(this, executor, new ov(new py(new pt(fh.a(a2, new os(new op()), otVar), new hy(this))), a), str, maVar, hfVar, context, executor);
    }

    public final oa a() {
        return this.b;
    }
}