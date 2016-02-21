package com.vungle.publisher.db.model;

import com.inmobi.commons.ads.cache.AdDatabaseHelper;
import com.vungle.log.Logger;
import com.vungle.publisher.ak;
import com.vungle.publisher.am;
import com.vungle.publisher.am.b;
import com.vungle.publisher.db.model.Ad.a;
import com.vungle.publisher.protocol.message.RequestAdResponse;
import com.zeptolab.ctr.scorer.GoogleScorer;
import javax.inject.Inject;
import javax.inject.Provider;
import javax.inject.Singleton;

public class StreamingAd extends Ad {
    @Inject
    Factory m;

    static /* synthetic */ class AnonymousClass_1 {
        static final /* synthetic */ int[] a;

        static {
            a = new int[b.values().length];
            a[b.d.ordinal()] = 1;
        }
    }

    @Singleton
    public static class Factory extends com.vungle.publisher.db.model.Ad.Factory {
        @Inject
        Provider c;
        @Inject
        com.vungle.publisher.db.model.StreamingVideo.Factory d;

        public final StreamingAd a(RequestAdResponse requestAdResponse) {
            StreamingAd streamingAd = (StreamingAd) super.a(requestAdResponse);
            streamingAd.g = Ad.b.b;
            streamingAd.a(a.e);
            return streamingAd;
        }

        public final StreamingAd a(String str) {
            return (StreamingAd) super.a(Ad.b.b, str);
        }

        protected final /* bridge */ /* synthetic */ com.vungle.publisher.db.model.Video.Factory a() {
            return this.d;
        }

        protected final /* bridge */ /* synthetic */ Object[] b(int i) {
            return new String[i];
        }

        protected final /* synthetic */ ak b_() {
            return (StreamingAd) this.c.get();
        }

        public final int c() {
            Logger.d(Logger.DATABASE_TAG, new StringBuilder("deleting expired ").append(Ad.b.b).append(" records without pending reports").toString());
            return this.b.getWritableDatabase().delete(AdDatabaseHelper.TABLE_AD, "type = ? AND id NOT IN (SELECT DISTINCT ad_id FROM ad_report)", new String[]{Ad.b.b.toString()});
        }

        protected final /* bridge */ /* synthetic */ ak[] c(int i) {
            return new ak[i];
        }
    }

    protected StreamingAd() {
    }

    public final /* synthetic */ am a(b bVar) {
        switch (AnonymousClass_1.a[bVar.ordinal()]) {
            case GoogleScorer.CLIENT_GAMES:
                return (StreamingVideo) j();
            default:
                super.a(bVar);
                return null;
        }
    }

    protected final /* bridge */ /* synthetic */ com.vungle.publisher.db.model.Ad.Factory a() {
        return this.m;
    }

    protected final /* bridge */ /* synthetic */ ak.a a_() {
        return this.m;
    }
}