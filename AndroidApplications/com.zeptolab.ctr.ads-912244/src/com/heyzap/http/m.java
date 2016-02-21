package com.heyzap.http;

import org.json.JSONException;
import org.json.JSONObject;

class m implements Runnable {
    final /* synthetic */ JSONException a;
    final /* synthetic */ k b;

    m(k kVar, JSONException jSONException) {
        this.b = kVar;
        this.a = jSONException;
    }

    public void run() {
        this.b.d.onFailure(this.b.b, this.b.c, this.a, (JSONObject) 0);
    }
}