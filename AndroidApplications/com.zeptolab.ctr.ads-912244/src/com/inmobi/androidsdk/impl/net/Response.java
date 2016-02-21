package com.inmobi.androidsdk.impl.net;

public class Response {
    String a;
    String b;

    public Response(String str, String str2) {
        this.a = null;
        this.b = null;
        this.a = str;
        this.b = str2;
    }

    public String getAdResponse() {
        return this.b;
    }

    public String getImpressionId() {
        return this.a;
    }
}