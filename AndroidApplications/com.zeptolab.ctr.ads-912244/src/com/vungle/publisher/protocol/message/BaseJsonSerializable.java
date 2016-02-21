package com.vungle.publisher.protocol.message;

import com.vungle.log.Logger;
import com.vungle.publisher.bq;
import org.json.JSONObject;

public abstract class BaseJsonSerializable implements bq {
    BaseJsonSerializable() {
    }

    protected static void a(String str, Object obj) {
        if (obj == null) {
            Logger.d(Logger.PROTOCOL_TAG, new StringBuilder("null ").append(str).append(" is required output").toString());
        }
    }

    public final String a() {
        JSONObject b = b();
        return b == null ? null : b.toString();
    }

    public JSONObject b() {
        return new JSONObject();
    }
}