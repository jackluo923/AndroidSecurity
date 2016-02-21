package com.vungle.publisher.db.model;

import com.vungle.publisher.ak;
import com.vungle.publisher.ak.a;
import javax.inject.Inject;
import javax.inject.Provider;
import javax.inject.Singleton;

public class StreamingAdReportEvent extends AdReportEvent {
    @Inject
    Factory e;

    @Singleton
    static class Factory extends com.vungle.publisher.db.model.AdReportEvent.Factory {
        @Inject
        Provider a;

        protected Factory() {
        }

        protected final /* bridge */ /* synthetic */ Object[] b(int i) {
            return new Integer[i];
        }

        protected final /* synthetic */ ak b_() {
            return (StreamingAdReportEvent) this.a.get();
        }

        protected final /* bridge */ /* synthetic */ ak[] c(int i) {
            return new ak[i];
        }
    }

    protected StreamingAdReportEvent() {
    }

    protected final /* bridge */ /* synthetic */ a a_() {
        return this.e;
    }
}