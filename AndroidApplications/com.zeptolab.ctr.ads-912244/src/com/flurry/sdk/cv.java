package com.flurry.sdk;

import android.content.Context;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import java.io.File;
import java.util.Map;

public class cv {
    private static final String b;
    boolean a;
    private final cw c;
    private final File d;
    private String e;

    static {
        b = cv.class.getSimpleName();
    }

    public cv() {
        this(dl.a().b());
    }

    public cv(Context context) {
        this.c = new cw();
        this.d = context.getFileStreamPath(".flurryinstallreceiver.");
        el.a((int)IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE, b, "Referrer file name if it exists:  " + this.d);
    }

    private void b() {
        if (!this.a) {
            this.a = true;
            el.a((int)GoogleScorer.CLIENT_APPSTATE, b, "Loading referrer info from file: " + this.d.getAbsolutePath());
            String c = fa.c(this.d);
            el.a(b, "Referrer file contents: " + c);
            b(c);
        }
    }

    private void b(String str) {
        if (str != null) {
            this.e = str;
        }
    }

    private void c() {
        fa.a(this.d, this.e);
    }

    public synchronized Map a(boolean z) {
        Map a;
        b();
        a = this.c.a(this.e);
        if (z) {
            a();
        }
        return a;
    }

    public synchronized void a() {
        this.d.delete();
        this.e = null;
        this.a = true;
    }

    public synchronized void a(String str) {
        this.a = true;
        b(str);
        c();
    }
}