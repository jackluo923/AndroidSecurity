package com.google.android.gms.common.api;

import java.util.concurrent.TimeUnit;

public interface PendingResult {

    public static interface a {
        void k(Status status);
    }

    Result await();

    Result await(long j, TimeUnit timeUnit);

    void setResultCallback(ResultCallback resultCallback);

    void setResultCallback(ResultCallback resultCallback, long j, TimeUnit timeUnit);
}