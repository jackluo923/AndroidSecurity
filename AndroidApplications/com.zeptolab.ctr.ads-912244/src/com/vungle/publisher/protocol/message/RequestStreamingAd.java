package com.vungle.publisher.protocol.message;

import com.vungle.publisher.bf;
import com.vungle.publisher.c;
import com.vungle.publisher.protocol.message.RequestAd.a;
import javax.inject.Inject;
import javax.inject.Singleton;
import org.json.JSONObject;

public final class RequestStreamingAd extends RequestAd {
    ExtraInfo g;
    String h;
    String i;

    @Singleton
    public static class Factory extends a {
        @Inject
        protected Factory e;

        Factory() {
        }

        public final RequestStreamingAd a(String str, c cVar) {
            RequestStreamingAd requestStreamingAd = (RequestStreamingAd) super.b();
            Factory factory = this.e;
            requestStreamingAd.g = Factory.a(cVar.getExtras());
            requestStreamingAd.h = str;
            requestStreamingAd.i = cVar.getPlacement();
            return requestStreamingAd;
        }

        protected final /* synthetic */ Object a() {
            return new RequestStreamingAd();
        }

        protected final /* bridge */ /* synthetic */ Object[] a(int i) {
            return new RequestStreamingAd[i];
        }
    }

    RequestStreamingAd() {
    }

    public final JSONObject b() {
        JSONObject b = super.b();
        b.putOpt("campaignId", this.h);
        b.putOpt("extraInfo", bf.a(this.g));
        b.putOpt("placement", this.i);
        return b;
    }
}