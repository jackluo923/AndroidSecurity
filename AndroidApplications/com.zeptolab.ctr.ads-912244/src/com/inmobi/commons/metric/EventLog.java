package com.inmobi.commons.metric;

import com.inmobi.commons.internal.InternalSDKUtil;
import com.inmobi.commons.internal.Log;
import org.json.JSONObject;

public class EventLog {
    private EventType a;
    private JSONObject b;

    public EventLog(EventType eventType, JSONObject jSONObject) {
        this.a = eventType;
        this.b = jSONObject;
    }

    public String toString() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("t", this.a.getValue());
            jSONObject.put("v", this.b);
        } catch (Exception e) {
            Log.internal(InternalSDKUtil.LOGGING_TAG, "Unable to log json.", e);
        }
        return jSONObject.toString();
    }
}