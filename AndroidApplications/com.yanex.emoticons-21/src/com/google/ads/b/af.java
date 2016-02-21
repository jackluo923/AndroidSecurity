package com.google.ads.b;

import com.google.ads.util.g;
import org.json.JSONException;
import org.json.JSONObject;

public final class af {
    private final String a;

    public af(String str) {
        this.a = str;
    }

    public final JSONObject a() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("debugHeader", this.a);
        } catch (JSONException e) {
            g.b("Could not build ReportAdJson from inputs.", e);
        }
        return jSONObject;
    }
}