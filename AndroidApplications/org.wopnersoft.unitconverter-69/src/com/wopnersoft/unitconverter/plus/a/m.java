package com.wopnersoft.unitconverter.plus.a;

import org.json.JSONObject;

// compiled from: ProGuard
public class m {
    String a;
    String b;
    String c;
    String d;
    long e;
    int f;
    String g;
    String h;
    String i;
    String j;

    public m(String str, String str2, String str3) {
        this.a = str;
        this.i = str2;
        JSONObject jSONObject = new JSONObject(this.i);
        this.b = jSONObject.optString("orderId");
        this.c = jSONObject.optString("packageName");
        this.d = jSONObject.optString("productId");
        this.e = jSONObject.optLong("purchaseTime");
        this.f = jSONObject.optInt("purchaseState");
        this.g = jSONObject.optString("developerPayload");
        this.h = jSONObject.optString("token", jSONObject.optString("purchaseToken"));
        this.j = str3;
    }

    public String a() {
        return this.a;
    }

    public String b() {
        return this.d;
    }

    public String c() {
        return this.g;
    }

    public String d() {
        return this.h;
    }

    public String toString() {
        return new StringBuilder("PurchaseInfo(type:").append(this.a).append("):").append(this.i).toString();
    }
}