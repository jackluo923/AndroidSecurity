package com.flurry.sdk;

import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import java.io.PrintStream;
import java.io.PrintWriter;

public abstract class fc implements Runnable {
    private static final String a;
    PrintStream g;
    PrintWriter h;

    static {
        a = fc.class.getSimpleName();
    }

    public abstract void a();

    public final void run() {
        Throwable th;
        try {
            a();
        } catch (Throwable th2) {
            th = th2;
            if (this.g != null) {
                th.printStackTrace(this.g);
            } else if (this.h != null) {
                th.printStackTrace(this.h);
            } else {
                th.printStackTrace();
            }
            el.a(IabHelper.BILLING_RESPONSE_RESULT_ERROR, a, AdTrackerConstants.BLANK, th);
        }
    }
}