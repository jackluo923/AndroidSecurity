package com.vungle.publisher.db.model;

import android.content.ContentValues;
import android.database.Cursor;
import android.net.Uri;
import com.google.android.gms.plus.PlusShare;
import com.vungle.publisher.ai;
import com.vungle.publisher.ak;
import com.vungle.publisher.ak.a;
import com.vungle.publisher.am.b;
import com.vungle.publisher.cd;
import com.vungle.publisher.protocol.message.RequestAdResponse;
import com.vungle.publisher.protocol.message.RequestStreamingAdResponse;
import javax.inject.Inject;
import javax.inject.Provider;
import javax.inject.Singleton;

public class StreamingVideo extends Video {
    @Inject
    com.vungle.publisher.db.model.StreamingAd.Factory e;
    @Inject
    Factory f;
    public String g;

    @Singleton
    public static class Factory extends com.vungle.publisher.db.model.Video.Factory {
        private static final b c;
        @Inject
        Provider a;

        static {
            c = b.d;
        }

        protected Factory() {
        }

        private StreamingVideo a(StreamingAd streamingAd, RequestStreamingAdResponse requestStreamingAdResponse) {
            StreamingVideo streamingVideo = (StreamingVideo) super.b(streamingAd, requestStreamingAdResponse);
            if (streamingVideo != null) {
                streamingVideo.g = requestStreamingAdResponse.l();
                streamingVideo.c = c;
            }
            return streamingVideo;
        }

        private StreamingVideo a(Video video, Cursor cursor, boolean z) {
            super.a(video, cursor, z);
            video.g = ai.f(cursor, PlusShare.KEY_CALL_TO_ACTION_URL);
            return video;
        }

        private StreamingVideo d() {
            return (StreamingVideo) this.a.get();
        }

        protected final /* synthetic */ BaseViewable a() {
            return d();
        }

        protected final /* synthetic */ Video b(Ad ad, RequestAdResponse requestAdResponse) {
            return a((StreamingAd) ad, (RequestStreamingAdResponse) requestAdResponse);
        }

        protected final /* bridge */ /* synthetic */ Object[] b(int i) {
            return new Integer[i];
        }

        protected final /* synthetic */ ak b_() {
            return d();
        }

        protected final b c() {
            return c;
        }

        protected final /* bridge */ /* synthetic */ ak[] c(int i) {
            return new ak[i];
        }
    }

    protected StreamingVideo() {
    }

    protected final ContentValues a(boolean z) {
        ContentValues a = super.a(z);
        a.put(PlusShare.KEY_CALL_TO_ACTION_URL, this.g);
        return a;
    }

    protected final /* bridge */ /* synthetic */ a a_() {
        return this.f;
    }

    protected final /* bridge */ /* synthetic */ com.vungle.publisher.db.model.Ad.Factory d() {
        return this.e;
    }

    protected final StringBuilder n() {
        StringBuilder n = super.n();
        cd.a(n, PlusShare.KEY_CALL_TO_ACTION_URL, this.g);
        return n;
    }

    public final Uri q() {
        return Uri.parse(this.g);
    }
}