package com.vungle.publisher.db.model;

import com.vungle.publisher.ak;
import com.vungle.publisher.ak.a;
import com.vungle.publisher.db.model.Ad.b;
import com.vungle.publisher.db.model.AdReport.BaseFactory;
import javax.inject.Inject;
import javax.inject.Provider;
import javax.inject.Singleton;

public class StreamingAdReport extends AdReport {
    @Inject
    Factory s;
    @Inject
    Factory t;

    @Singleton
    public static class Factory extends BaseFactory {
        @Inject
        Factory c;
        @Inject
        com.vungle.publisher.db.model.StreamingAd.Factory d;
        @Inject
        Provider e;

        protected Factory() {
        }

        protected final /* bridge */ /* synthetic */ com.vungle.publisher.db.model.Ad.Factory a() {
            return this.d;
        }

        protected final /* bridge */ /* synthetic */ com.vungle.publisher.db.model.AdPlay.Factory b() {
            return this.c;
        }

        protected final /* bridge */ /* synthetic */ Object[] b(int i) {
            return new Integer[i];
        }

        protected final /* synthetic */ ak b_() {
            return (StreamingAdReport) this.e.get();
        }

        protected final b c() {
            return b.b;
        }

        protected final /* bridge */ /* synthetic */ ak[] c(int i) {
            return new ak[i];
        }
    }

    protected StreamingAdReport() {
    }

    protected final /* bridge */ /* synthetic */ com.vungle.publisher.db.model.AdPlay.Factory a() {
        return this.t;
    }

    protected final /* bridge */ /* synthetic */ a a_() {
        return this.s;
    }
}