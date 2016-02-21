package com.vungle.publisher.protocol.message;

import com.vungle.publisher.bf;
import com.vungle.publisher.protocol.message.RequestAdResponse.a;
import javax.inject.Inject;
import javax.inject.Singleton;
import org.json.JSONObject;

public final class RequestLocalAdResponse extends RequestAdResponse {
    public Integer r;
    public Long s;
    public String t;
    public String u;
    public Integer v;
    public String w;

    @Singleton
    public static class Factory extends a {
        @Inject
        protected Factory() {
        }

        private RequestLocalAdResponse c(JSONObject jSONObject) {
            Long l = null;
            if (jSONObject == null) {
                return null;
            }
            RequestLocalAdResponse requestLocalAdResponse;
            if (jSONObject.isNull("sleep")) {
                requestLocalAdResponse = (RequestLocalAdResponse) super.b(jSONObject);
                String str = "expiry";
                long optLong = jSONObject.optLong(str, -1);
                if (optLong == -1) {
                    long optLong2 = jSONObject.optLong(str, -2);
                    if (optLong2 != -2) {
                        l = Long.valueOf(optLong2);
                    }
                } else {
                    l = Long.valueOf(optLong);
                }
                requestLocalAdResponse.s = l;
                a(jSONObject, "expiry", l);
                requestLocalAdResponse.t = bf.d(jSONObject, "postBundle");
                requestLocalAdResponse.u = bf.d(jSONObject, "preBundle");
                requestLocalAdResponse.v = bf.c(jSONObject, "size");
                requestLocalAdResponse.w = jSONObject.optString("md5");
                a(jSONObject, "md5", requestLocalAdResponse.w);
                return requestLocalAdResponse;
            } else {
                requestLocalAdResponse = new RequestLocalAdResponse();
                requestLocalAdResponse.r = Integer.valueOf(jSONObject.getInt("sleep"));
                return requestLocalAdResponse;
            }
        }

        protected final /* synthetic */ Object a() {
            return new RequestLocalAdResponse();
        }

        public final /* synthetic */ Object a(JSONObject jSONObject) {
            return c(jSONObject);
        }

        public final /* synthetic */ RequestAdResponse b(JSONObject jSONObject) {
            return c(jSONObject);
        }
    }

    RequestLocalAdResponse() {
    }
}