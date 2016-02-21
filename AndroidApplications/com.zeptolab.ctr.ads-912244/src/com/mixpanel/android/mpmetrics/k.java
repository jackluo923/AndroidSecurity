package com.mixpanel.android.mpmetrics;

import android.content.SharedPreferences;
import org.json.JSONArray;

class k implements b {
    final /* synthetic */ j a;

    k(j jVar) {
        this.a = jVar;
    }

    public void a(SharedPreferences sharedPreferences) {
        JSONArray a = w.a(sharedPreferences);
        if (a != null) {
            j.a(this.a, a);
        }
    }
}