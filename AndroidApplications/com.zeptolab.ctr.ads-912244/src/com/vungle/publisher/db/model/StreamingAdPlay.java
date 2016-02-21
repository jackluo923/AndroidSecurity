package com.vungle.publisher.db.model;

import com.vungle.publisher.ak;
import com.vungle.publisher.ak.a;
import javax.inject.Inject;
import javax.inject.Provider;
import javax.inject.Singleton;

public class StreamingAdPlay extends AdPlay {
    @Inject
    Factory e;
    @Inject
    Factory f;

    @Singleton
    static class Factory extends com.vungle.publisher.db.model.AdPlay.Factory {
        @Inject
        Provider a;
        @Inject
        Factory c;

        protected Factory() {
        }

        protected final /* bridge */ /* synthetic */ com.vungle.publisher.db.model.AdReportEvent.Factory a() {
            return this.c;
        }

        protected final /* bridge */ /* synthetic */ Object[] b(int i) {
            return new Integer[i];
        }

        protected final /* synthetic */ ak b_() {
            return (StreamingAdPlay) this.a.get();
        }

        protected final /* bridge */ /* synthetic */ ak[] c(int i) {
            return new ak[i];
        }
    }

    protected StreamingAdPlay() {
    }

    protected final /* bridge */ /* synthetic */ com.vungle.publisher.db.model.AdReportEvent.Factory a() {
        return this.f;
    }

    protected final /* bridge */ /* synthetic */ a a_() {
        return this.e;
    }
}