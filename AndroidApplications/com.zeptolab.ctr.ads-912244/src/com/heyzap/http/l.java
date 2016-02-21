package com.heyzap.http;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

class l implements Runnable {
    final /* synthetic */ Object a;
    final /* synthetic */ k b;

    l(k kVar, Object obj) {
        this.b = kVar;
        this.a = obj;
    }

    public void run() {
        if (this.a instanceof JSONObject) {
            this.b.d.onSuccess(this.b.b, this.b.c, (JSONObject) this.a);
        } else if (this.a instanceof JSONArray) {
            this.b.d.onSuccess(this.b.b, this.b.c, (JSONArray) this.a);
        } else {
            this.b.d.onFailure(this.b.b, this.b.c, new JSONException("Unexpected response type " + this.a.getClass().getName()), (JSONObject) 0);
        }
    }
}