package com.inmobi.commons.analytics.db;

import android.util.Log;
import com.inmobi.commons.analytics.util.AnalyticsUtils;

public abstract class AnalyticsFunctions {
    private FunctionName a;

    public enum FunctionName {
        SS,
        ES,
        LB,
        LE,
        CE,
        PI;

        static {
            SS = new com.inmobi.commons.analytics.db.AnalyticsFunctions.FunctionName("SS", 0);
            ES = new com.inmobi.commons.analytics.db.AnalyticsFunctions.FunctionName("ES", 1);
            LB = new com.inmobi.commons.analytics.db.AnalyticsFunctions.FunctionName("LB", 2);
            LE = new com.inmobi.commons.analytics.db.AnalyticsFunctions.FunctionName("LE", 3);
            CE = new com.inmobi.commons.analytics.db.AnalyticsFunctions.FunctionName("CE", 4);
            PI = new com.inmobi.commons.analytics.db.AnalyticsFunctions.FunctionName("PI", 5);
            a = new com.inmobi.commons.analytics.db.AnalyticsFunctions.FunctionName[]{SS, ES, LB, LE, CE, PI};
        }
    }

    public AnalyticsFunctions() {
        this.a = null;
    }

    public FunctionName getFunctionName() {
        return this.a;
    }

    protected void insertInDatabase(AnalyticsEvent analyticsEvent) {
        try {
            AnalyticsDatabaseManager.getInstance().insertEvents(analyticsEvent);
        } catch (Exception e) {
            Log.w(AnalyticsUtils.ANALYTICS_LOGGING_TAG, e);
        }
    }

    protected void printWarning(String str) {
        Log.d(AnalyticsUtils.ANALYTICS_LOGGING_TAG, "IllegalStateException", new IllegalStateException(str));
    }

    public abstract AnalyticsEvent processFunction();
}