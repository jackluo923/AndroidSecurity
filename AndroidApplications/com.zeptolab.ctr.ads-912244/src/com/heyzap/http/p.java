package com.heyzap.http;

import org.json.JSONException;
import org.json.JSONObject;

class p implements Runnable {
    final /* synthetic */ JSONException a;
    final /* synthetic */ n b;

    p(n nVar, JSONException jSONException) {
        this.b = nVar;
        this.a = jSONException;
    }

    public void run() {
        this.b.e.onFailure(this.b.b, this.b.c, this.a, (JSONObject) 0);
    }
}