package com.flurry.sdk;

import com.zeptolab.ctr.billing.google.utils.IabHelper;
import java.util.Comparator;

public class eb implements Comparator {
    private static final String a;

    static {
        a = eb.class.getSimpleName();
    }

    private int a(Runnable runnable) {
        if (runnable == null) {
            return Integer.MAX_VALUE;
        }
        if (runnable instanceof ec) {
            fd fdVar = (fd) ((ec) runnable).a();
            return fdVar != null ? fdVar.i() : Integer.MAX_VALUE;
        } else if (runnable instanceof fd) {
            return ((fd) runnable).i();
        } else {
            el.a((int)IabHelper.BILLING_RESPONSE_RESULT_ERROR, a, "Unknown runnable class: " + runnable.getClass().getName());
            return Integer.MAX_VALUE;
        }
    }

    public int a(Runnable runnable, Runnable runnable2) {
        int a = a(runnable);
        int a2 = a(runnable2);
        if (a < a2) {
            return -1;
        }
        return a > a2 ? 1 : 0;
    }

    public /* synthetic */ int compare(Object obj, Object obj2) {
        return a((Runnable) obj, (Runnable) obj2);
    }
}