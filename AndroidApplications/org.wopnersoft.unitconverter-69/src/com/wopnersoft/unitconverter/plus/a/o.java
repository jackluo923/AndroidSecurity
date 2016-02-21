package com.wopnersoft.unitconverter.plus.a;

import org.json.JSONObject;

// compiled from: ProGuard
public class o {
    String a;
    String b;
    String c;
    String d;
    String e;
    String f;
    String g;

    public o(String str, String str2) {
        this.a = str;
        this.g = str2;
        JSONObject jSONObject = new JSONObject(this.g);
        this.b = jSONObject.optString("productId");
        this.c = jSONObject.optString("type");
        this.d = jSONObject.optString("price");
        this.e = jSONObject.optString("title");
        this.f = jSONObject.optString("description");
    }

    public String a() {
        return this.b;
    }

    public String toString() {
        return new StringBuilder("SkuDetails:").append(this.g).toString();
    }
}