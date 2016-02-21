package com.millennialmedia.android;

import com.brightcove.player.event.EventType;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import org.json.JSONException;
import org.json.JSONObject;

class MMJSResponse {
    static final int f = 0;
    static final int g = 1;
    private static final String h = "MMJSResponse";
    String a;
    String b;
    int c;
    Object d;
    byte[] e;

    MMJSResponse() {
    }

    static MMJSResponse a() {
        return a("Success.");
    }

    static MMJSResponse a(String str) {
        MMJSResponse mMJSResponse = new MMJSResponse();
        mMJSResponse.c = 1;
        mMJSResponse.d = str;
        return mMJSResponse;
    }

    static MMJSResponse b() {
        return b("An unknown error occured.");
    }

    static MMJSResponse b(String str) {
        MMJSResponse mMJSResponse = new MMJSResponse();
        mMJSResponse.c = 0;
        mMJSResponse.d = str;
        return mMJSResponse;
    }

    String c() {
        try {
            JSONObject jSONObject = new JSONObject();
            if (this.a != null) {
                jSONObject.put("class", this.a);
            }
            if (this.b != null) {
                jSONObject.put("call", this.b);
            }
            jSONObject.put("result", this.c);
            if (this.d != null) {
                jSONObject.put(EventType.RESPONSE, this.d);
            } else if (this.e == null) {
                return AdTrackerConstants.BLANK;
            } else {
                jSONObject.put(EventType.RESPONSE, Base64.encodeToString(this.e, false));
            }
            return jSONObject.toString();
        } catch (JSONException e) {
            MMLog.e(h, e.getMessage());
            return AdTrackerConstants.BLANK;
        }
    }
}