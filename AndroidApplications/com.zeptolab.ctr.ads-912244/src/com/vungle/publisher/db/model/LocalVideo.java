package com.vungle.publisher.db.model;

import android.content.ContentValues;
import android.database.Cursor;
import android.net.Uri;
import com.vungle.publisher.ai;
import com.vungle.publisher.ak;
import com.vungle.publisher.ak.a;
import com.vungle.publisher.al;
import com.vungle.publisher.am.b;
import com.vungle.publisher.cd;
import com.vungle.publisher.protocol.message.RequestAdResponse;
import com.vungle.publisher.protocol.message.RequestLocalAdResponse;
import javax.inject.Inject;
import javax.inject.Provider;
import javax.inject.Singleton;

public class LocalVideo extends Video implements al {
    String e;
    public LocalViewableDelegate f;
    @Inject
    com.vungle.publisher.db.model.LocalAd.Factory g;
    @Inject
    Factory h;

    @Singleton
    public static class Factory extends com.vungle.publisher.db.model.Video.Factory {
        private static final b d;
        @Inject
        Provider a;
        @Inject
        Factory c;

        static {
            d = b.a;
        }

        protected Factory() {
        }

        private LocalVideo a(LocalAd localAd, RequestLocalAdResponse requestLocalAdResponse) {
            LocalVideo localVideo = (LocalVideo) super.b(localAd, requestLocalAdResponse);
            if (localVideo != null) {
                localVideo.e = requestLocalAdResponse.w;
                localVideo.a(requestLocalAdResponse.v);
                localVideo.f.c = requestLocalAdResponse.l();
                localVideo.c = d;
            }
            return localVideo;
        }

        private LocalVideo a(Video video, Cursor cursor, boolean z) {
            super.a(video, cursor, z);
            video.f.a(cursor);
            video.e = ai.f(cursor, "checksum");
            return video;
        }

        private LocalVideo d() {
            LocalVideo localVideo = (LocalVideo) this.a.get();
            localVideo.f = this.c.a(localVideo);
            return localVideo;
        }

        protected final /* synthetic */ BaseViewable a() {
            return d();
        }

        protected final /* synthetic */ Video b(Ad ad, RequestAdResponse requestAdResponse) {
            return a((LocalAd) ad, (RequestLocalAdResponse) requestAdResponse);
        }

        protected final /* bridge */ /* synthetic */ Object[] b(int i) {
            return new Integer[i];
        }

        protected final /* synthetic */ ak b_() {
            return d();
        }

        protected final b c() {
            return d;
        }

        protected final /* bridge */ /* synthetic */ ak[] c(int i) {
            return new ak[i];
        }
    }

    protected LocalVideo() {
    }

    public final boolean A() {
        return this.f.f();
    }

    public final boolean B() {
        return this.f.f();
    }

    public final boolean C() {
        return this.f.g();
    }

    protected final ContentValues a(boolean z) {
        ContentValues a = super.a(z);
        this.f.a(a);
        a.put("checksum", this.e);
        return a;
    }

    public final void a(Integer num) {
        this.f.d = num;
    }

    protected final /* bridge */ /* synthetic */ a a_() {
        return this.h;
    }

    protected final /* bridge */ /* synthetic */ com.vungle.publisher.db.model.Ad.Factory d() {
        return this.g;
    }

    public final String j() {
        return this.f.c;
    }

    public final String k() {
        return "mp4";
    }

    protected final StringBuilder n() {
        StringBuilder n = super.n();
        this.f.a(n);
        cd.a(n, "checksum", this.e);
        return n;
    }

    public final Uri q() {
        return Uri.parse(this.f.c());
    }

    public final String s() {
        return this.f.c();
    }

    public final void t() {
        this.f.d();
    }

    public final boolean z() {
        return this.f.e();
    }
}