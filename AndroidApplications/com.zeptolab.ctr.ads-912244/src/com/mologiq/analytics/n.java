package com.mologiq.analytics;

import android.content.Context;
import com.inmobi.commons.ads.cache.AdDatabaseHelper;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONObject;

class n {
    private String a;
    private String b;
    private String c;
    private ab d;

    n() {
    }

    String a(Context context) {
        aa d = aa.d(context);
        if (d.v() == 0) {
            return AdTrackerConstants.BLANK;
        }
        JSONArray jSONArray;
        Iterator it;
        JSONObject jSONObject = new JSONObject();
        jSONObject.put(AdDatabaseHelper.COLUMN_TIMESTAMP, System.currentTimeMillis());
        jSONObject.put("product", this.d.e());
        jSONObject.put("p", this.c);
        jSONObject.put("v", this.a);
        jSONObject.put("d", this.b);
        jSONObject.put("androidadvertisingid", this.d.n());
        jSONObject.put("androidadvertisingidoptout", this.d.o());
        jSONObject.put("androidid", this.d.p());
        jSONObject.put("os", this.d.f());
        jSONObject.put("model", this.d.g());
        jSONObject.put("location", this.d.d());
        jSONObject.put("locationAltitude", this.d.w());
        jSONObject.put("locationTimestamp", this.d.x());
        jSONObject.put("locationAccuracy", this.d.y());
        jSONObject.put("locationSpeed", this.d.z());
        jSONObject.put("device", this.d.h());
        if (this.d.v() != null) {
            if (this.d.v().b() != null) {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("ssid", this.d.v().b().a());
                jSONObject.put("wificurrent", jSONObject2);
            }
            if (this.d.v().a() != null) {
                jSONArray = new JSONArray();
                it = this.d.v().a().iterator();
                while (it.hasNext()) {
                    d dVar = (d) it.next();
                    JSONObject jSONObject3 = new JSONObject();
                    jSONObject3.put("ssid", dVar.a());
                    jSONArray.put(jSONObject3);
                }
                jSONObject.put("wifilist", jSONArray);
            }
        }
        jSONObject.put("api", this.d.i());
        jSONObject.put("brand", this.d.j());
        jSONObject.put("language", this.d.k());
        jSONObject.put("countryCode", this.d.t());
        jSONObject.put("timezone", this.d.r());
        jSONObject.put("carrier", this.d.C());
        if (d.i()) {
            a d2 = this.d.d(context);
            if (d2 != null) {
                jSONObject.put("policy", d2.a());
                if (d2.b() != null && d2.b().size() > 0) {
                    jSONObject.put("audience", new JSONArray(d2.b()));
                }
                jSONObject.put("appcount", d2.c());
                jSONObject.put("meanversion", d2.d());
                if (d2.e() != null && d2.e().size() > 0) {
                    jSONObject.put("campaigns", new JSONArray(d2.e()));
                }
                if (d2.g() != null && d2.g().size() > 0) {
                    jSONArray = new JSONArray();
                    it = d2.g().keySet().iterator();
                    while (it.hasNext()) {
                        Integer num = (Integer) it.next();
                        jSONObject3 = new JSONObject();
                        jSONObject3.put("classificationid", num);
                        jSONObject3.put("count", d2.g().get(num));
                        jSONArray.put(jSONObject3);
                    }
                    jSONObject.put("classifications", jSONArray);
                }
                if (d2.f() != null && d2.f().size() > 0) {
                    jSONObject.put("appids", new JSONArray(d2.f()));
                }
            }
        }
        if (this.d.B() != null && this.d.B().size() > 0) {
            jSONObject.put("urlids", new JSONArray(this.d.B()));
        }
        return jSONObject.toString();
    }

    void a(ab abVar) {
        this.d = abVar;
    }

    void a(String str) {
        this.a = str;
    }

    void b(String str) {
        this.b = str;
    }

    void c(String str) {
        this.c = str;
    }
}