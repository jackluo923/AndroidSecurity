package com.vungle.publisher.reporting;

import javax.inject.Inject;
import javax.inject.Singleton;

@Singleton
public class AdServiceReportingHandler {
    public long a;
    public long b;

    @Inject
    public AdServiceReportingHandler() {
        this.a = 0;
        this.b = 0;
    }
}