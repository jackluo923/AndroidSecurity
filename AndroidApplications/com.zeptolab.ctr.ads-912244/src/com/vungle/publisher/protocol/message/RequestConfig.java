package com.vungle.publisher.protocol.message;

import com.vungle.publisher.at;
import javax.inject.Inject;
import javax.inject.Singleton;
import org.json.JSONObject;

@Singleton
public class RequestConfig extends BaseJsonSerializable {
    @Inject
    at a;

    public final JSONObject b() {
        JSONObject b = super.b();
        b.putOpt("pubAppId", this.a.b());
        return b;
    }
}