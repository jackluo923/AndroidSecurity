package com.gameanalytics.android;

import java.io.PrintWriter;
import java.io.StringWriter;
import java.io.Writer;
import java.lang.Thread.UncaughtExceptionHandler;

public class ExceptionLogger implements UncaughtExceptionHandler {
    private final UncaughtExceptionHandler defaultHandler;

    public ExceptionLogger() {
        this.defaultHandler = Thread.currentThread().getUncaughtExceptionHandler();
    }

    public void uncaughtException(Thread thread, Throwable th) {
        Writer stringWriter = new StringWriter();
        th.printStackTrace(new PrintWriter(stringWriter));
        Throwable cause = th.getCause();
        while (cause.getCause() != null) {
            cause = cause.getCause();
        }
        GameAnalytics.newQualityEvent(new StringBuilder("Exception:").append(cause.getClass().getName()).toString(), stringWriter.toString());
        this.defaultHandler.uncaughtException(thread, th);
    }
}