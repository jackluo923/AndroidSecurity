package com.vungle.publisher.db.model;

import android.content.ContentValues;
import android.database.Cursor;
import android.net.Uri;
import com.vungle.publisher.ai;
import com.vungle.publisher.am.b;
import com.vungle.publisher.cd;
import com.vungle.publisher.protocol.message.RequestAdResponse;
import com.vungle.publisher.protocol.message.RequestAdResponse.CallToActionOverlay;

public abstract class Video extends BaseViewable {
    public Float i;
    public Integer j;
    public Integer k;
    public Boolean l;
    public Boolean m;
    public Integer n;
    public Integer o;
    public Integer s;
    public Integer t;
    public Integer u;

    public static abstract class Factory extends com.vungle.publisher.db.model.BaseViewable.Factory {
        protected Factory() {
        }

        static Video a(Video video, RequestAdResponse requestAdResponse) {
            video.k = requestAdResponse.k();
            video.o = requestAdResponse.g();
            video.s = requestAdResponse.h();
            video.t = requestAdResponse.i();
            video.u = requestAdResponse.m();
            CallToActionOverlay d = requestAdResponse.d();
            if (d != null) {
                video.i = d.c();
                video.j = d.g();
                video.l = d.d();
                video.m = d.e();
                video.n = d.f();
            }
            return video;
        }

        protected /* synthetic */ BaseViewable a(Ad ad, RequestAdResponse requestAdResponse) {
            return b(ad, requestAdResponse);
        }

        protected Video a(BaseViewable baseViewable, Cursor cursor, boolean z) {
            super.a(baseViewable, cursor, z);
            baseViewable.i = ai.b(cursor, "cta_clickable_percent");
            baseViewable.j = ai.d(cursor, "enable_cta_delay_seconds");
            baseViewable.k = ai.d(cursor, MMLayout.KEY_HEIGHT);
            baseViewable.l = ai.a(cursor, "is_cta_enabled");
            baseViewable.m = ai.a(cursor, "is_cta_shown_on_touch");
            baseViewable.n = ai.d(cursor, "show_cta_delay_seconds");
            baseViewable.o = ai.d(cursor, "show_close_delay_incentivized_seconds");
            baseViewable.s = ai.d(cursor, "show_close_delay_interstitial_seconds");
            baseViewable.t = ai.d(cursor, "show_countdown_delay_seconds");
            baseViewable.u = ai.d(cursor, MMLayout.KEY_WIDTH);
            return baseViewable;
        }

        protected final Video a(String str, boolean z) {
            return (Video) a(str, c(), z);
        }

        protected Video b(Ad ad, RequestAdResponse requestAdResponse) {
            Video video = (Video) super.a(ad, requestAdResponse);
            if (video != null) {
                a(video, requestAdResponse);
            }
            return video;
        }

        protected abstract b c();
    }

    protected Video() {
    }

    protected ContentValues a(boolean z) {
        ContentValues a = super.a(z);
        a.put("cta_clickable_percent", this.i);
        a.put("enable_cta_delay_seconds", this.j);
        a.put(MMLayout.KEY_HEIGHT, this.k);
        a.put("is_cta_enabled", this.l);
        a.put("is_cta_shown_on_touch", this.m);
        a.put("show_cta_delay_seconds", this.n);
        a.put("show_close_delay_incentivized_seconds", this.o);
        a.put("show_close_delay_interstitial_seconds", this.s);
        a.put("show_countdown_delay_seconds", this.t);
        a.put(MMLayout.KEY_WIDTH, this.u);
        return a;
    }

    protected StringBuilder n() {
        StringBuilder n = super.n();
        cd.a(n, "cta_clickable_percent", this.i);
        cd.a(n, "enable_cta_delay_seconds", this.j);
        cd.a(n, MMLayout.KEY_HEIGHT, this.k);
        cd.a(n, "is_cta_enabled", this.l);
        cd.a(n, "is_cta_shown_on_touch", this.m);
        cd.a(n, "show_cta_delay_seconds", this.n);
        cd.a(n, "show_close_delay_incentivized_seconds", this.o);
        cd.a(n, "show_close_delay_interstitial_seconds", this.s);
        cd.a(n, "show_countdown_delay_seconds", this.t);
        cd.a(n, MMLayout.KEY_WIDTH, this.u);
        return n;
    }

    public abstract Uri q();
}