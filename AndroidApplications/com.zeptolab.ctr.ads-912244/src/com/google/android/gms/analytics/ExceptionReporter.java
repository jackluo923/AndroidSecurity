package com.google.android.gms.analytics;

import android.content.Context;
import com.google.android.gms.analytics.HitBuilders.ExceptionBuilder;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import java.lang.Thread.UncaughtExceptionHandler;
import java.util.ArrayList;

public class ExceptionReporter implements UncaughtExceptionHandler {
    private final Context mContext;
    private final UncaughtExceptionHandler rd;
    private final Tracker re;
    private ExceptionParser rf;

    public ExceptionReporter(Tracker tracker, UncaughtExceptionHandler uncaughtExceptionHandler, Context context) {
        if (tracker == null) {
            throw new NullPointerException("tracker cannot be null");
        } else if (context == null) {
            throw new NullPointerException(AdTrackerConstants.MSG_APP_CONTEXT_NULL);
        } else {
            this.rd = uncaughtExceptionHandler;
            this.re = tracker;
            this.rf = new StandardExceptionParser(context, new ArrayList());
            this.mContext = context.getApplicationContext();
            aa.v("ExceptionReporter created, original handler is " + (uncaughtExceptionHandler == null ? "null" : uncaughtExceptionHandler.getClass().getName()));
        }
    }

    public ExceptionParser getExceptionParser() {
        return this.rf;
    }

    public void setExceptionParser(ExceptionParser exceptionParser) {
        this.rf = exceptionParser;
    }

    public void uncaughtException(Thread thread, Throwable th) {
        String str = "UncaughtException";
        if (this.rf != null) {
            str = this.rf.getDescription(thread != null ? thread.getName() : null, th);
        }
        aa.v("Tracking Exception: " + str);
        this.re.send(new ExceptionBuilder().setDescription(str).setFatal(true).build());
        GoogleAnalytics.getInstance(this.mContext).dispatchLocalHits();
        if (this.rd != null) {
            aa.v("Passing exception to original handler.");
            this.rd.uncaughtException(thread, th);
        }
    }
}