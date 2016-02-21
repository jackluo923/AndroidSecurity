package com.vungle.publisher.protocol.message;

import com.vungle.log.Logger;
import org.json.JSONArray;
import org.json.JSONObject;

public abstract class JsonDeserializationFactory extends MessageFactory {
    JsonDeserializationFactory() {
    }

    protected static void a(JSONObject jSONObject, String str, Object obj) {
        if (obj == null) {
            Object opt = jSONObject.opt(str);
            if (opt == null) {
                Logger.d(Logger.PROTOCOL_TAG, new StringBuilder("null ").append(str).append(" is required input").toString());
            } else {
                Logger.d(Logger.PROTOCOL_TAG, new StringBuilder("invalid ").append(str).append(": ").append(opt).toString());
            }
        } else if (obj instanceof String && ((String) obj).length() == 0) {
            Logger.d(Logger.PROTOCOL_TAG, new StringBuilder("empty ").append(str).append(" is required input").toString());
        } else if (obj instanceof JSONArray && ((JSONArray) obj).length() == 0) {
            Logger.d(Logger.PROTOCOL_TAG, new StringBuilder("empty array ").append(str).append(" is required input").toString());
        }
    }

    public final Object a(String str) {
        return str == null ? null : a(new JSONObject(str));
    }

    protected abstract Object a(JSONObject jSONObject);

    protected final Object[] a(JSONArray jSONArray) {
        Object[] objArr = null;
        if (jSONArray != null) {
            int length = jSONArray.length();
            objArr = a(length);
            int i = 0;
            while (i < length) {
                objArr[i] = a(jSONArray.optJSONObject(i));
                i++;
            }
        }
        return objArr;
    }
}