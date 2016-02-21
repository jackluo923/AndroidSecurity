package com.vungle.publisher.protocol.message;

import com.vungle.publisher.bf;
import javax.inject.Inject;
import javax.inject.Singleton;
import org.json.JSONObject;

public final class RequestConfigResponse extends BaseJsonSerializable {
    public Boolean a;
    public Integer b;
    public Integer c;
    public a d;

    @Singleton
    public static class Factory extends JsonDeserializationFactory {
        @Inject
        Factory() {
        }

        protected final /* synthetic */ Object a() {
            return new RequestConfigResponse();
        }

        protected final /* synthetic */ Object a(JSONObject jSONObject) {
            Enum enumR = null;
            if (jSONObject == null) {
                return null;
            }
            RequestConfigResponse requestConfigResponse = new RequestConfigResponse();
            requestConfigResponse.a = bf.a(jSONObject, "optIn");
            requestConfigResponse.b = bf.c(jSONObject, "updateDelay");
            requestConfigResponse.c = bf.c(jSONObject, "threshold");
            Class cls = com.vungle.publisher.protocol.message.RequestConfigResponse.a.class;
            String d = bf.d(jSONObject, "connection");
            if (d != null) {
                enumR = Enum.valueOf(cls, d);
            }
            requestConfigResponse.d = (com.vungle.publisher.protocol.message.RequestConfigResponse.a) enumR;
            return requestConfigResponse;
        }
    }

    public enum a {
        all,
        wifi;

        static {
            a = new com.vungle.publisher.protocol.message.RequestConfigResponse.a("all", 0);
            b = new com.vungle.publisher.protocol.message.RequestConfigResponse.a("wifi", 1);
            c = new com.vungle.publisher.protocol.message.RequestConfigResponse.a[]{a, b};
        }
    }

    public final /* bridge */ /* synthetic */ JSONObject b() {
        return super.b();
    }
}