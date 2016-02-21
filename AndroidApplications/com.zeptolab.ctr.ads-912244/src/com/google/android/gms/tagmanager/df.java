package com.google.android.gms.tagmanager;

import android.content.Context;
import com.google.android.gms.analytics.GoogleAnalytics;
import com.google.android.gms.analytics.Logger;
import com.google.android.gms.analytics.Tracker;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.zeptolab.ctr.billing.google.utils.IabHelper;
import com.zeptolab.ctr.scorer.GoogleScorer;

class df {
    private GoogleAnalytics XE;
    private Context mContext;
    private Tracker re;

    static class a implements Logger {
        a() {
        }

        private static int bX(int i) {
            switch (i) {
                case GoogleScorer.CLIENT_PLUS:
                    return 0;
                case IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:
                case GoogleScorer.CLIENT_APPSTATE:
                    return 1;
                case IabHelper.BILLING_RESPONSE_RESULT_DEVELOPER_ERROR:
                    return GoogleScorer.CLIENT_PLUS;
                default:
                    return IabHelper.BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE;
            }
        }

        public void error(Exception exception) {
            bh.c(AdTrackerConstants.BLANK, exception);
        }

        public void error(String str) {
            bh.t(str);
        }

        public int getLogLevel() {
            return bX(bh.getLogLevel());
        }

        public void info(String str) {
            bh.u(str);
        }

        public void setLogLevel(int i) {
            bh.w("GA uses GTM logger. Please use TagManager.setLogLevel(int) instead.");
        }

        public void verbose(String str) {
            bh.v(str);
        }

        public void warn(String str) {
            bh.w(str);
        }
    }

    df(Context context) {
        this.mContext = context;
    }

    private synchronized void bG(String str) {
        if (this.XE == null) {
            this.XE = GoogleAnalytics.getInstance(this.mContext);
            this.XE.setLogger(new a());
            this.re = this.XE.newTracker(str);
        }
    }

    public Tracker bF(String str) {
        bG(str);
        return this.re;
    }
}