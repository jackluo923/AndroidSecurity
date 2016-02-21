package com.mixpanel.android.mpmetrics;

import android.content.SharedPreferences;
import android.content.SharedPreferences.OnSharedPreferenceChangeListener;

class x implements OnSharedPreferenceChangeListener {
    final /* synthetic */ w a;

    x(w wVar) {
        this.a = wVar;
    }

    public void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
        synchronized (w.j()) {
            w.a(this.a);
            w.a(false);
        }
    }
}