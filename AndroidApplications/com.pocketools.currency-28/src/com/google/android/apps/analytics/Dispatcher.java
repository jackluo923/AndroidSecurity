package com.google.android.apps.analytics;

interface Dispatcher {

    public static interface Callbacks {
        void dispatchFinished();

        void hitDispatched(long j);
    }

    void dispatchHits(Hit[] hitArr);

    void init(Callbacks callbacks);

    boolean isDryRun();

    void setDryRun(boolean z);

    void stop();
}