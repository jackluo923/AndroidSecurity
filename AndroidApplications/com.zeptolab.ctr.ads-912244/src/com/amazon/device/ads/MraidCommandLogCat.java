package com.amazon.device.ads;

import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;
import java.util.Map;

class MraidCommandLogCat extends MraidCommand {
    private static final String c = "MRAIDLog";

    MraidCommandLogCat(Map map, MraidView mraidView) {
        super(map, mraidView);
    }

    void a() {
        int a = a("level");
        String b = b("log");
        if (a != -1 && b != null && b.length() != 0) {
            switch (a) {
                case GoogleScorer.CLIENT_PLUS:
                    Log.v(c, b);
                case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                    Log.d(c, b);
                case IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR:
                    Log.w(c, b);
                case IabHelper.BILLING_RESPONSE_RESULT_ERROR:
                    Log.e(c, b);
                default:
                    Log.i(c, b);
            }
        }
    }
}