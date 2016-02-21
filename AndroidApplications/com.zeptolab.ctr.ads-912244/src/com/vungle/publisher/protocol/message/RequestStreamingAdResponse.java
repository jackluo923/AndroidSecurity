package com.vungle.publisher.protocol.message;

import com.vungle.publisher.bf;
import com.vungle.publisher.protocol.message.RequestAdResponse.a;
import javax.inject.Inject;
import javax.inject.Singleton;
import org.json.JSONObject;

public final class RequestStreamingAdResponse extends RequestAdResponse {
    public Boolean r;

    @Singleton
    public static class Factory extends a {
        @Inject
        protected Factory() {
        }

        private RequestStreamingAdResponse c(JSONObject jSONObject) {
            RequestStreamingAdResponse requestStreamingAdResponse = null;
            if (jSONObject != null) {
                Boolean a = bf.a(jSONObject, "shouldStream");
                requestStreamingAdResponse = Boolean.TRUE.equals(a) ? (RequestStreamingAdResponse) super.b(jSONObject) : new RequestStreamingAdResponse();
                requestStreamingAdResponse.r = a;
            }
            return requestStreamingAdResponse;
        }

        protected final /* synthetic */ Object a() {
            return new RequestStreamingAdResponse();
        }

        public final /* synthetic */ Object a(JSONObject jSONObject) {
            return c(jSONObject);
        }

        public final /* synthetic */ RequestAdResponse b(JSONObject jSONObject) {
            return c(jSONObject);
        }
    }
}